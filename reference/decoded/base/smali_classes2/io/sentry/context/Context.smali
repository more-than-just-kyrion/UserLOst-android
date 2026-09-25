.class public Lio/sentry/context/Context;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_BREADCRUMB_LIMIT:I = 0x64


# instance fields
.field private final breadcrumbLimit:I

.field private volatile breadcrumbs:Lio/sentry/util/CircularFifoQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/CircularFifoQueue<",
            "Lio/sentry/event/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private volatile extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile http:Lio/sentry/event/interfaces/HttpInterface;

.field private volatile lastEventId:Ljava/util/UUID;

.field private volatile tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile user:Lio/sentry/event/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 56
    invoke-direct {p0, v0}, Lio/sentry/context/Context;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lio/sentry/context/Context;->breadcrumbLimit:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    .line 166
    :cond_0
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    .line 132
    :cond_0
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Lio/sentry/context/Context;->setLastEventId(Ljava/util/UUID;)V

    .line 73
    invoke-virtual {p0}, Lio/sentry/context/Context;->clearBreadcrumbs()V

    .line 74
    invoke-virtual {p0}, Lio/sentry/context/Context;->clearUser()V

    .line 75
    invoke-virtual {p0}, Lio/sentry/context/Context;->clearTags()V

    .line 76
    invoke-virtual {p0}, Lio/sentry/context/Context;->clearExtra()V

    .line 77
    invoke-virtual {p0}, Lio/sentry/context/Context;->clearHttp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearBreadcrumbs()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 232
    :try_start_0
    iput-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearExtra()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iput-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearHttp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iput-object v0, p0, Lio/sentry/context/Context;->http:Lio/sentry/event/interfaces/HttpInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clearTags()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iput-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearUser()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lio/sentry/context/Context;->setUser(Lio/sentry/event/User;)V

    return-void
.end method

.method public declared-synchronized getBreadcrumbs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/event/Breadcrumb;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    invoke-virtual {v0}, Lio/sentry/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    invoke-virtual {v1}, Lio/sentry/util/CircularFifoQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    iget-object v1, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-object v0

    .line 87
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 115
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHttp()Lio/sentry/event/interfaces/HttpInterface;
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->http:Lio/sentry/event/interfaces/HttpInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLastEventId()Ljava/util/UUID;
    .locals 1

    .line 254
    iget-object v0, p0, Lio/sentry/context/Context;->lastEventId:Ljava/util/UUID;

    return-object v0
.end method

.method public declared-synchronized getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 102
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getUser()Lio/sentry/event/User;
    .locals 1

    .line 279
    iget-object v0, p0, Lio/sentry/context/Context;->user:Lio/sentry/event/User;

    return-object v0
.end method

.method public declared-synchronized recordBreadcrumb(Lio/sentry/event/Breadcrumb;)V
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lio/sentry/util/CircularFifoQueue;

    iget v1, p0, Lio/sentry/context/Context;->breadcrumbLimit:I

    invoke-direct {v0, v1}, Lio/sentry/util/CircularFifoQueue;-><init>(I)V

    iput-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    .line 225
    :cond_0
    iget-object v0, p0, Lio/sentry/context/Context;->breadcrumbs:Lio/sentry/util/CircularFifoQueue;

    invoke-virtual {v0, p1}, Lio/sentry/util/CircularFifoQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeExtra(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/context/Context;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeTag(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/context/Context;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHttp(Lio/sentry/event/interfaces/HttpInterface;)V
    .locals 0

    monitor-enter p0

    .line 196
    :try_start_0
    iput-object p1, p0, Lio/sentry/context/Context;->http:Lio/sentry/event/interfaces/HttpInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLastEventId(Ljava/util/UUID;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lio/sentry/context/Context;->lastEventId:Ljava/util/UUID;

    return-void
.end method

.method public setUser(Lio/sentry/event/User;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lio/sentry/context/Context;->user:Lio/sentry/event/User;

    return-void
.end method
