.class public interface abstract annotation Lcom/antlersoft/android/db/TableInterface;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/antlersoft/android/db/TableInterface;
        ImplementingClassName = ""
        ImplementingIsAbstract = true
        ImplementingIsPublic = true
        TableName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract ImplementingClassName()Ljava/lang/String;
.end method

.method public abstract ImplementingIsAbstract()Z
.end method

.method public abstract ImplementingIsPublic()Z
.end method

.method public abstract TableName()Ljava/lang/String;
.end method
