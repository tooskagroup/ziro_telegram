.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxBytes"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 33
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 34
    return-void
.end method

.method private evictCache(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;J)V
    .locals 4
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "requiredSpace"    # J

    .prologue
    .line 71
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->removeSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->compare(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)I
    .locals 6
    .param p1, "lhs"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .param p2, "rhs"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 62
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    sub-long v0, v2, v4

    .line 63
    .local v0, "lastAccessTimestampDelta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->compareTo(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)I

    move-result v2

    .line 67
    :goto_0
    return v2

    :cond_0
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v4, p2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 45
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;J)V

    .line 46
    return-void
.end method

.method public onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 52
    return-void
.end method

.method public onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 57
    invoke-virtual {p0, p1, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 58
    return-void
.end method

.method public onStartFile(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p5, p6}, Lorg/telegram/messenger/exoplayer/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;J)V

    .line 39
    return-void
.end method
