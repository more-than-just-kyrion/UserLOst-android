.class public final Ltech/ulo/library/ui/SessionEditFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SessionEditFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/SessionEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "tech/ulo/library/ui/SessionEditFragment$onViewCreated$2",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/ui/SessionEditFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/SessionEditFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/SessionEditFragment$onViewCreated$2;->this$0:Ltech/ulo/library/ui/SessionEditFragment;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eqz v0, :cond_1

    .line 152
    iget-object v2, v1, Ltech/ulo/library/ui/SessionEditFragment$onViewCreated$2;->this$0:Ltech/ulo/library/ui/SessionEditFragment;

    move/from16 v3, p3

    .line 153
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type tech.ulo.library.ui.SessionEditFragment.FilesystemDropdownItem"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem;

    .line 155
    instance-of v3, v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    if-eqz v3, :cond_0

    .line 156
    check-cast v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    invoke-virtual {v0}, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Create new"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v15, Ltech/ulo/library/model/entities/Filesystem;

    move-object v3, v15

    const/16 v20, 0x7ffe

    const/16 v21, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v21}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, "filesystem"

    move-object/from16 v4, v22

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "editExisting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 158
    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    .line 159
    sget v3, Ltech/ulo/library/R$id;->filesystem_edit_fragment:I

    invoke-virtual {v2, v3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 162
    :cond_0
    instance-of v3, v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$FilesystemItem;

    if-eqz v3, :cond_1

    .line 163
    check-cast v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$FilesystemItem;

    invoke-virtual {v0}, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$FilesystemItem;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    .line 164
    invoke-static {v2, v0}, Ltech/ulo/library/ui/SessionEditFragment;->access$updateFilesystemDetailsForSession(Ltech/ulo/library/ui/SessionEditFragment;Ltech/ulo/library/model/entities/Filesystem;)V

    .line 165
    invoke-static {v2}, Ltech/ulo/library/ui/SessionEditFragment;->access$getBinding(Ltech/ulo/library/ui/SessionEditFragment;)Ltech/ulo/library/databinding/FragSessionEditBinding;

    move-result-object v2

    iget-object v2, v2, Ltech/ulo/library/databinding/FragSessionEditBinding;->textInputUsername:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->getDefaultUsername()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
