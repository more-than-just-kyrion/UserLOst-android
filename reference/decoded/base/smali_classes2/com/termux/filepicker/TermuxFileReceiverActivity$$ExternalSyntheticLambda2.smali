.class public final synthetic Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iput-object p2, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;->f$1:Ljava/io/InputStream;

    invoke-static {v0, v1, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->$r8$lambda$f7TWuI_KF0P5f1zjTu8vNv9SW2M(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method
