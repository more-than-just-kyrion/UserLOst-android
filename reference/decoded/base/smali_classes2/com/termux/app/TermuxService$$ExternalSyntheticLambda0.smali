.class public final synthetic Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxService;

.field public final synthetic f$1:Lcom/termux/app/BackgroundJob;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/TermuxService;

    iput-object p2, p0, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;->f$1:Lcom/termux/app/BackgroundJob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/TermuxService;

    iget-object v1, p0, Lcom/termux/app/TermuxService$$ExternalSyntheticLambda0;->f$1:Lcom/termux/app/BackgroundJob;

    invoke-static {v0, v1}, Lcom/termux/app/TermuxService;->$r8$lambda$rzOcPBgQ0AqZlyNhMk0QW9TaCS8(Lcom/termux/app/TermuxService;Lcom/termux/app/BackgroundJob;)V

    return-void
.end method
