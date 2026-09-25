.class public interface abstract annotation Lcom/antlersoft/android/db/FieldAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/antlersoft/android/db/FieldAccessor;
        Both = true
        DefaultValue = ""
        Name = ""
        Nullable = true
        Type = .enum Lcom/antlersoft/android/db/FieldType;->DEFAULT:Lcom/antlersoft/android/db/FieldType;
        Visibility = .enum Lcom/antlersoft/android/db/FieldVisibility;->PRIVATE:Lcom/antlersoft/android/db/FieldVisibility;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract Both()Z
.end method

.method public abstract DefaultValue()Ljava/lang/String;
.end method

.method public abstract Name()Ljava/lang/String;
.end method

.method public abstract Nullable()Z
.end method

.method public abstract Type()Lcom/antlersoft/android/db/FieldType;
.end method

.method public abstract Visibility()Lcom/antlersoft/android/db/FieldVisibility;
.end method
