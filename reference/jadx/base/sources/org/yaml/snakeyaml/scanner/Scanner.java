package org.yaml.snakeyaml.scanner;

import org.yaml.snakeyaml.tokens.Token;

/* JADX INFO: loaded from: classes3.dex */
public interface Scanner {
    boolean checkToken(Token.ID... idArr);

    Token getToken();

    Token peekToken();
}
