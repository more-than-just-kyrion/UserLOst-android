package org.yaml.snakeyaml.composer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.yaml.snakeyaml.error.Mark;
import org.yaml.snakeyaml.events.AliasEvent;
import org.yaml.snakeyaml.events.Event;
import org.yaml.snakeyaml.events.MappingStartEvent;
import org.yaml.snakeyaml.events.NodeEvent;
import org.yaml.snakeyaml.events.ScalarEvent;
import org.yaml.snakeyaml.events.SequenceStartEvent;
import org.yaml.snakeyaml.nodes.MappingNode;
import org.yaml.snakeyaml.nodes.Node;
import org.yaml.snakeyaml.nodes.NodeId;
import org.yaml.snakeyaml.nodes.NodeTuple;
import org.yaml.snakeyaml.nodes.ScalarNode;
import org.yaml.snakeyaml.nodes.SequenceNode;
import org.yaml.snakeyaml.nodes.Tag;
import org.yaml.snakeyaml.parser.Parser;
import org.yaml.snakeyaml.resolver.Resolver;

/* JADX INFO: loaded from: classes3.dex */
public class Composer {
    protected final Parser parser;
    private final Resolver resolver;
    private final Map<String, Node> anchors = new HashMap();
    private final Set<Node> recursiveNodes = new HashSet();

    public Composer(Parser parser, Resolver resolver) {
        this.parser = parser;
        this.resolver = resolver;
    }

    public boolean checkNode() {
        if (this.parser.checkEvent(Event.ID.StreamStart)) {
            this.parser.getEvent();
        }
        return !this.parser.checkEvent(Event.ID.StreamEnd);
    }

    public Node getNode() {
        this.parser.getEvent();
        Node nodeComposeNode = composeNode(null);
        this.parser.getEvent();
        this.anchors.clear();
        this.recursiveNodes.clear();
        return nodeComposeNode;
    }

    public Node getSingleNode() {
        this.parser.getEvent();
        Node node = !this.parser.checkEvent(Event.ID.StreamEnd) ? getNode() : null;
        if (!this.parser.checkEvent(Event.ID.StreamEnd)) {
            throw new ComposerException("expected a single document in the stream", node.getStartMark(), "but found another document", this.parser.getEvent().getStartMark());
        }
        this.parser.getEvent();
        return node;
    }

    private Node composeNode(Node node) {
        Node nodeComposeSequenceNode;
        if (node != null) {
            this.recursiveNodes.add(node);
        }
        if (this.parser.checkEvent(Event.ID.Alias)) {
            AliasEvent aliasEvent = (AliasEvent) this.parser.getEvent();
            String anchor = aliasEvent.getAnchor();
            if (!this.anchors.containsKey(anchor)) {
                throw new ComposerException(null, null, "found undefined alias " + anchor, aliasEvent.getStartMark());
            }
            nodeComposeSequenceNode = this.anchors.get(anchor);
            if (this.recursiveNodes.remove(nodeComposeSequenceNode)) {
                nodeComposeSequenceNode.setTwoStepsConstruction(true);
            }
        } else {
            String anchor2 = ((NodeEvent) this.parser.peekEvent()).getAnchor();
            if (this.parser.checkEvent(Event.ID.Scalar)) {
                nodeComposeSequenceNode = composeScalarNode(anchor2);
            } else {
                nodeComposeSequenceNode = this.parser.checkEvent(Event.ID.SequenceStart) ? composeSequenceNode(anchor2) : composeMappingNode(anchor2);
            }
        }
        this.recursiveNodes.remove(node);
        return nodeComposeSequenceNode;
    }

    protected Node composeScalarNode(String str) {
        Tag tagResolve;
        boolean z;
        ScalarEvent scalarEvent = (ScalarEvent) this.parser.getEvent();
        String tag = scalarEvent.getTag();
        if (tag == null || tag.equals("!")) {
            tagResolve = this.resolver.resolve(NodeId.scalar, scalarEvent.getValue(), scalarEvent.getImplicit().canOmitTagInPlainScalar());
            z = true;
        } else {
            tagResolve = new Tag(tag);
            z = false;
        }
        ScalarNode scalarNode = new ScalarNode(tagResolve, z, scalarEvent.getValue(), scalarEvent.getStartMark(), scalarEvent.getEndMark(), scalarEvent.getScalarStyle());
        if (str != null) {
            this.anchors.put(str, scalarNode);
        }
        return scalarNode;
    }

    protected Node composeSequenceNode(String str) {
        Tag tagResolve;
        boolean z;
        SequenceStartEvent sequenceStartEvent = (SequenceStartEvent) this.parser.getEvent();
        String tag = sequenceStartEvent.getTag();
        if (tag == null || tag.equals("!")) {
            tagResolve = this.resolver.resolve(NodeId.sequence, null, sequenceStartEvent.getImplicit());
            z = true;
        } else {
            tagResolve = new Tag(tag);
            z = false;
        }
        boolean z2 = z;
        ArrayList arrayList = new ArrayList();
        SequenceNode sequenceNode = new SequenceNode(tagResolve, z2, arrayList, sequenceStartEvent.getStartMark(), (Mark) null, sequenceStartEvent.getFlowStyle());
        if (str != null) {
            this.anchors.put(str, sequenceNode);
        }
        while (!this.parser.checkEvent(Event.ID.SequenceEnd)) {
            arrayList.add(composeNode(sequenceNode));
        }
        sequenceNode.setEndMark(this.parser.getEvent().getEndMark());
        return sequenceNode;
    }

    protected Node composeMappingNode(String str) {
        Tag tagResolve;
        boolean z;
        MappingStartEvent mappingStartEvent = (MappingStartEvent) this.parser.getEvent();
        String tag = mappingStartEvent.getTag();
        if (tag == null || tag.equals("!")) {
            tagResolve = this.resolver.resolve(NodeId.mapping, null, mappingStartEvent.getImplicit());
            z = true;
        } else {
            tagResolve = new Tag(tag);
            z = false;
        }
        boolean z2 = z;
        ArrayList arrayList = new ArrayList();
        MappingNode mappingNode = new MappingNode(tagResolve, z2, arrayList, mappingStartEvent.getStartMark(), (Mark) null, mappingStartEvent.getFlowStyle());
        if (str != null) {
            this.anchors.put(str, mappingNode);
        }
        while (!this.parser.checkEvent(Event.ID.MappingEnd)) {
            composeMappingChildren(arrayList, mappingNode);
        }
        mappingNode.setEndMark(this.parser.getEvent().getEndMark());
        return mappingNode;
    }

    protected void composeMappingChildren(List<NodeTuple> list, MappingNode mappingNode) {
        Node nodeComposeKeyNode = composeKeyNode(mappingNode);
        if (nodeComposeKeyNode.getTag().equals(Tag.MERGE)) {
            mappingNode.setMerged(true);
        }
        list.add(new NodeTuple(nodeComposeKeyNode, composeValueNode(mappingNode)));
    }

    protected Node composeKeyNode(MappingNode mappingNode) {
        return composeNode(mappingNode);
    }

    protected Node composeValueNode(MappingNode mappingNode) {
        return composeNode(mappingNode);
    }
}
