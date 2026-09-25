.class public interface abstract Ltech/ulo/library/utils/UserPrompter;
.super Ljava/lang/Object;
.source "UserPrompter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/UserPrompter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008f\u0018\u00002\u00020\u0001J\u0010\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020$H\u0016J\u0008\u00103\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0018\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000eR\u0018\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\nR\u0014\u0010\u001d\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000eR\u0012\u0010\u001f\u001a\u00020 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u0004\u0018\u00010$X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u000eR\u0014\u0010+\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u000eR\u0018\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\nR\u0014\u0010/\u001a\u00020\u000c8gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u000e\u00a8\u00064"
    }
    d2 = {
        "Ltech/ulo/library/utils/UserPrompter;",
        "",
        "altInitialPosFlow",
        "",
        "getAltInitialPosFlow",
        "()Z",
        "finishedAction",
        "Lkotlin/Function0;",
        "",
        "getFinishedAction",
        "()Lkotlin/jvm/functions/Function0;",
        "initialNegBtnText",
        "",
        "getInitialNegBtnText",
        "()I",
        "initialPosBtnText",
        "getInitialPosBtnText",
        "initialPositiveBtnAction",
        "getInitialPositiveBtnAction",
        "initialPrompt",
        "",
        "getInitialPrompt",
        "()Ljava/lang/String;",
        "primaryNegBtnText",
        "getPrimaryNegBtnText",
        "primaryPosBtnText",
        "getPrimaryPosBtnText",
        "primaryPositiveBtnAction",
        "getPrimaryPositiveBtnAction",
        "primaryRequest",
        "getPrimaryRequest",
        "savedActivity",
        "Ltech/ulo/library/MainActivity;",
        "getSavedActivity",
        "()Ltech/ulo/library/MainActivity;",
        "savedViewGroup",
        "Landroid/view/ViewGroup;",
        "getSavedViewGroup",
        "()Landroid/view/ViewGroup;",
        "setSavedViewGroup",
        "(Landroid/view/ViewGroup;)V",
        "secondaryNegBtnText",
        "getSecondaryNegBtnText",
        "secondaryPosBtnText",
        "getSecondaryPosBtnText",
        "secondaryPositiveBtnAction",
        "getSecondaryPositiveBtnAction",
        "secondaryRequest",
        "getSecondaryRequest",
        "showView",
        "viewGroup",
        "viewShouldBeShown",
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


# virtual methods
.method public abstract getAltInitialPosFlow()Z
.end method

.method public abstract getFinishedAction()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInitialNegBtnText()I
.end method

.method public abstract getInitialPosBtnText()I
.end method

.method public abstract getInitialPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInitialPrompt()Ljava/lang/String;
.end method

.method public abstract getPrimaryNegBtnText()I
.end method

.method public abstract getPrimaryPosBtnText()I
.end method

.method public abstract getPrimaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryRequest()I
.end method

.method public abstract getSavedActivity()Ltech/ulo/library/MainActivity;
.end method

.method public abstract getSavedViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract getSecondaryNegBtnText()I
.end method

.method public abstract getSecondaryPosBtnText()I
.end method

.method public abstract getSecondaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecondaryRequest()I
.end method

.method public abstract setSavedViewGroup(Landroid/view/ViewGroup;)V
.end method

.method public abstract showView(Landroid/view/ViewGroup;)V
.end method

.method public abstract viewShouldBeShown()Z
.end method
