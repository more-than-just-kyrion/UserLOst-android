.class public final synthetic Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/MainActivity;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda17;->f$0:Ltech/ulo/library/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda17;->f$0:Ltech/ulo/library/MainActivity;

    check-cast p1, Ltech/ulo/library/viewmodel/State;

    invoke-static {v0, p1}, Ltech/ulo/library/MainActivity;->$r8$lambda$ZoPyZ_I1n8AXAS86F8AiWh_1qek(Ltech/ulo/library/MainActivity;Ltech/ulo/library/viewmodel/State;)V

    return-void
.end method
