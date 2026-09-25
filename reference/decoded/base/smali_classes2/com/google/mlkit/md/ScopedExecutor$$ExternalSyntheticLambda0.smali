.class public final synthetic Lcom/google/mlkit/md/ScopedExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mlkit/md/ScopedExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/md/ScopedExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/ScopedExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/ScopedExecutor;

    iput-object p2, p0, Lcom/google/mlkit/md/ScopedExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/mlkit/md/ScopedExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/ScopedExecutor;

    iget-object v1, p0, Lcom/google/mlkit/md/ScopedExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/mlkit/md/ScopedExecutor;->$r8$lambda$_wQv9ViyRUl7bt-2B3jS1il73DE(Lcom/google/mlkit/md/ScopedExecutor;Ljava/lang/Runnable;)V

    return-void
.end method
