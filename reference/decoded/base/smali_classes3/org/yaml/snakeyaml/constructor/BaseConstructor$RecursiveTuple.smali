.class Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;
.super Ljava/lang/Object;
.source "BaseConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/BaseConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecursiveTuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final _1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final _2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TK;)V"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1:Ljava/lang/Object;

    .line 552
    iput-object p2, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public _1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1:Ljava/lang/Object;

    return-object v0
.end method

.method public _2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2:Ljava/lang/Object;

    return-object v0
.end method
