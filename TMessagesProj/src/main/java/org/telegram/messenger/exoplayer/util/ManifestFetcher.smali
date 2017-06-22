.class public Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;,
        Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;,
        Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;,
        Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;,
        Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;"
    }
.end annotation


# instance fields
.field private currentLoadStartTimestamp:J

.field private currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private enabledCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

.field private loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

.field private loadExceptionCount:I

.field private loadExceptionTimestamp:J

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private volatile manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile manifestLoadCompleteTimestamp:J

.field private volatile manifestLoadStartTimestamp:J

.field volatile manifestUri:Ljava/lang/String;

.field private final parser:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 6
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;",
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;, "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    const/4 v4, 0x0

    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;)V
    .locals 0
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;",
            "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;, "Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->parser:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;

    .line 150
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;

    .line 152
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    .line 153
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    return-object v0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 315
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyManifestError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 341
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$3;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_0
    return-void
.end method

.method private notifyManifestRefreshStarted()V
    .locals 2

    .prologue
    .line 319
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_0
    return-void
.end method

.method private notifyManifestRefreshed()V
    .locals 2

    .prologue
    .line 330
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$2;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 243
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 227
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 231
    :cond_0
    return-void
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getManifestLoadCompleteTimestamp()J
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    return-wide v0
.end method

.method public getManifestLoadStartTimestamp()J
    .locals 2

    .prologue
    .line 196
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    return-wide v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 218
    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    throw v0
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 0
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 292
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 4
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 267
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    if-eq v2, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 273
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 275
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 276
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 278
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;

    if-eqz v2, :cond_1

    .line 279
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;

    .line 280
    .local v1, "redirectingManifest":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;->getNextManifestUri()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "nextLocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 286
    .end local v0    # "nextLocation":Ljava/lang/String;
    .end local v1    # "redirectingManifest":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$RedirectingManifest;
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V

    goto :goto_0
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "exception"    # Ljava/io/IOException;

    .prologue
    .line 296
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    .line 303
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 305
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->notifyManifestError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method onSingleFetchCompleted(Ljava/lang/Object;J)V
    .locals 2
    .param p2, "loadStartTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 310
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 312
    return-void
.end method

.method public requestRefresh()V
    .locals 6

    .prologue
    .line 249
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadException:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getRetryDelayMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v1, "manifestLoader"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 257
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->parser:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    .line 260
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->currentLoadable:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    .line 261
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V

    goto :goto_0
.end method

.method public singleLoad(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 5
    .param p1, "callbackLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    .local p2, "callback":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback<TT;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->uriDataSource:Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->parser:Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable$Parser;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 175
    .local v0, "fetchHelper":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$SingleFetchHelper;->startLoading()V

    .line 176
    return-void
.end method

.method public updateManifestUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "manifestUri"    # Ljava/lang/String;

    .prologue
    .line 162
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 163
    return-void
.end method
