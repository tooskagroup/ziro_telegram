.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final cachedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    .line 51
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 52
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 57
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 58
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;

    const-string/jumbo v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;-><init>(Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache$1;->start()V

    .line 67
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method private addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 6
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 265
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 266
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/TreeSet;

    .end local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 268
    .restart local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 271
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    .line 272
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 273
    return-void
.end method

.method private getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 12
    .param p1, "lookupSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 207
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 208
    .local v3, "key":Ljava/lang/String;
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    .line 209
    .local v4, "offset":J
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    .line 210
    .local v1, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    if-nez v1, :cond_1

    .line 211
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 213
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .line 214
    .local v2, "floorSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_2

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 217
    iget-object v6, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 223
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .line 227
    .local v0, "ceilEntry":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-nez v0, :cond_3

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v6

    :goto_1
    move-object v2, v6

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v8, v10

    invoke-static {v3, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v6

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    .prologue
    .line 236
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 239
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 240
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_2

    .line 257
    :cond_1
    return-void

    .line 243
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 244
    aget-object v0, v1, v2

    .line 245
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->upgradeIfNeeded(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v3

    .line 250
    .local v3, "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-nez v3, :cond_4

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 253
    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_1
.end method

.method private notifySpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 326
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 327
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 329
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanAdded(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 333
    return-void
.end method

.method private notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 316
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 317
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 323
    return-void
.end method

.method private notifySpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "oldSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .param p2, "newSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 336
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 337
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 339
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;->onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onSpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 343
    return-void
.end method

.method private removeStaleSpans()V
    .locals 10

    .prologue
    .line 292
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 296
    .local v4, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    const/4 v0, 0x1

    .line 297
    .local v0, "isEmpty":Z
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .line 299
    .local v3, "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    iget-object v5, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 300
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 301
    iget-boolean v5, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v5, :cond_1

    .line 302
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    .line 304
    :cond_1
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    goto :goto_1

    .line 306
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    .end local v3    # "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :cond_3
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 313
    .end local v0    # "isEmpty":Z
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;>;"
    .end local v4    # "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    :cond_4
    return-void
.end method

.method private declared-synchronized startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 5
    .param p1, "lookupSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v1

    .line 135
    .local v1, "spanningRegion":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    iget-boolean v3, v1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v3, :cond_0

    .line 136
    move-object v0, v1

    .line 138
    .local v0, "oldCacheSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    .line 139
    .local v2, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 141
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->touch()Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanTouched(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 155
    .end local v0    # "oldCacheSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .end local v2    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    .line 149
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 151
    goto :goto_0

    .line 155
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 132
    .end local v1    # "spanningRegion":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .restart local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 72
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    .line 173
    .local v2, "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 174
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :goto_1
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 180
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 181
    .local v0, "length":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 172
    .end local v0    # "length":J
    .end local v2    # "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 185
    .restart local v0    # "length":J
    .restart local v2    # "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .local v2, "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    if-nez v2, :cond_0

    .line 349
    const/4 v7, 0x0

    .line 379
    :goto_0
    monitor-exit p0

    return v7

    .line 351
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v5

    .line 352
    .local v5, "lookupSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .line 353
    .local v3, "floorSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-eqz v3, :cond_1

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v10, v12

    cmp-long v7, v10, p2

    if-gtz v7, :cond_2

    .line 355
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 357
    :cond_2
    add-long v8, p2, p4

    .line 358
    .local v8, "queryEndPosition":J
    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long v0, v10, v12

    .line 359
    .local v0, "currentEndPosition":J
    cmp-long v7, v0, v8

    if-ltz v7, :cond_3

    .line 361
    const/4 v7, 0x1

    goto :goto_0

    .line 363
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 364
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 365
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .line 366
    .local v6, "next":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    iget-wide v10, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    cmp-long v7, v10, v0

    if-lez v7, :cond_5

    .line 368
    const/4 v7, 0x0

    goto :goto_0

    .line 372
    :cond_5
    iget-wide v10, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v12, v6, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    add-long/2addr v10, v12

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 373
    cmp-long v7, v0, v8

    if-ltz v7, :cond_4

    .line 375
    const/4 v7, 0x1

    goto :goto_0

    .line 379
    .end local v6    # "next":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 347
    .end local v0    # "currentEndPosition":J
    .end local v2    # "entries":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    .end local v3    # "floorSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    .end local v5    # "lookupSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .end local v8    # "queryEndPosition":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized releaseHoleSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 2
    .param p1, "holeSpan"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    .locals 6
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 278
    .local v0, "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->totalSpace:J

    .line 279
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 280
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 281
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cachedSpans:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 277
    .end local v0    # "spansForKey":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 161
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheEvictor;->onStartFile(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    .line 113
    .local v0, "lookupSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 114
    .local v1, "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    if-eqz v1, :cond_0

    .line 115
    monitor-exit p0

    return-object v1

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "lookupSpan":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .end local v1    # "span":Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
