.class public final Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/exoplayer/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field private static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private downstreamPositionUs:J

.field private volatile drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractedSampleCount:I

.field private extractedSampleCountAtStartOfLoad:I

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private havePendingNextSampleUs:Z

.field private lastSeekPositionUs:J

.field private loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private maxTrackDurationUs:J

.field private mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingMediaFormat:[Z

.field private pendingNextSampleUs:J

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private remainingReleaseCount:I

.field private final requestedBufferSize:I

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private sampleTimeOffsetUs:J

.field private volatile seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

.field private trackEnabledStates:[Z

.field private volatile tracksBuilt:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    .line 125
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.webm.WebmExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    .line 132
    :goto_0
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp4.FragmentedMp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    .line 139
    :goto_1
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp4.Mp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    .line 146
    :goto_2
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp3.Mp3Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .line 153
    :goto_3
    :try_start_4
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.AdtsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    .line 160
    :goto_4
    :try_start_5
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.TsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 167
    :goto_5
    :try_start_6
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.flv.FlvExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 174
    :goto_6
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ogg.OggExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    .line 181
    :goto_7
    :try_start_8
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.PsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 188
    :goto_8
    :try_start_9
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.wav.WavExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    .line 195
    :goto_9
    :try_start_a
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    .line 201
    :goto_a
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_a

    .line 191
    :catch_1
    move-exception v0

    goto :goto_9

    .line 184
    :catch_2
    move-exception v0

    goto :goto_8

    .line 177
    :catch_3
    move-exception v0

    goto :goto_7

    .line 170
    :catch_4
    move-exception v0

    goto :goto_6

    .line 163
    :catch_5
    move-exception v0

    goto :goto_5

    .line 156
    :catch_6
    move-exception v0

    goto :goto_4

    .line 149
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 142
    :catch_8
    move-exception v0

    goto/16 :goto_2

    .line 135
    :catch_9
    move-exception v0

    goto/16 :goto_1

    .line 128
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    .param p8, "eventSourceId"    # I
    .param p9, "extractors"    # [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    .line 317
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 318
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    .line 319
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    .line 320
    iput p8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventSourceId:I

    .line 321
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    .line 322
    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    .line 323
    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    .line 324
    if-eqz p9, :cond_0

    array-length v2, p9

    if-nez v2, :cond_1

    .line 325
    :cond_0
    sget-object v2, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array p9, v2, [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p9

    if-ge v1, v2, :cond_1

    .line 328
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    aput-object v2, p9, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected error creating default extractor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 331
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected error creating default extractor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 336
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-direct {v2, p9, p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;-><init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .line 337
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    .line 338
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 339
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;II[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "extractors"    # [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 294
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    .line 296
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    .param p7, "eventSourceId"    # I
    .param p8, "extractors"    # [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 277
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    .line 279
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p3, "allocator"    # Lorg/telegram/messenger/exoplayer/upstream/Allocator;
    .param p4, "requestedBufferSize"    # I
    .param p5, "extractors"    # [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 257
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;II[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    .line 259
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    .prologue
    .line 71
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    return-object v0
.end method

.method static synthetic access$308(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;

    .prologue
    .line 71
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    return v0
.end method

.method private clearState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 731
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 734
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 735
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    .line 736
    return-void
.end method

.method private createLoadableFromPositionUs(J)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    .line 708
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v6, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->getPosition(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 8

    .prologue
    .line 703
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private discardSamplesForDisabledTracks(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 723
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->discardUntil(J)V

    .line 722
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_1
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 747
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveFormatsForAllTracks()Z
    .locals 2

    .prologue
    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 714
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->hasFormat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    const/4 v1, 0x0

    .line 718
    :goto_1
    return v1

    .line 713
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isCurrentLoadableExceptionFatal()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    instance-of v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 739
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartLoading()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 637
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v5, :cond_7

    .line 642
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 645
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long v0, v6, v8

    .line 647
    .local v0, "elapsedMillis":J
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-ltz v3, :cond_0

    .line 648
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 649
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v3, :cond_5

    .line 653
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 654
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 674
    .end local v2    # "i":I
    :cond_4
    :goto_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    .line 675
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v3, v4, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 657
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_4

    .line 662
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 663
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 665
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 668
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    .line 669
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    goto :goto_2

    .line 683
    .end local v0    # "elapsedMillis":J
    .end local v2    # "i":I
    :cond_7
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    .line 684
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    .line 686
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v3, :cond_8

    .line 687
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 698
    :goto_4
    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    .line 699
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v3, v4, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    .line 689
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 690
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v12

    if-eqz v3, :cond_9

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_9

    .line 691
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 692
    iput-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto/16 :goto_0

    .line 695
    :cond_9
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromPositionUs(J)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 696
    iput-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_4
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 751
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 626
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 628
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 632
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 6
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 427
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 428
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 429
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->discardSamplesForDisabledTracks(J)V

    .line 430
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return v1

    .line 433
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 434
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 435
    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3
    .param p1, "track"    # I

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 410
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 411
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    .line 412
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v2, v0, p1

    .line 413
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_0

    .line 414
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 415
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 419
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .prologue
    .line 620
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .line 621
    return-void
.end method

.method public enable(IJ)V
    .locals 4
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 393
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 394
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    .line 395
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v1, v0, p1

    .line 396
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v1, v0, p1

    .line 397
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v2, v0, p1

    .line 398
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-ne v0, v1, :cond_1

    .line 400
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    .line 401
    :cond_0
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 402
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 403
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 405
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 393
    goto :goto_0
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    .line 611
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 539
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v1, :cond_1

    .line 540
    const-wide/16 v2, -0x3

    .line 549
    :cond_0
    :goto_0
    return-wide v2

    .line 541
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_0

    .line 544
    :cond_2
    const-wide/high16 v2, -0x8000000000000000L

    .line 545
    .local v2, "largestParsedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 546
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_3
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_0
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 386
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 504
    :cond_0
    return-void

    .line 490
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v1

    .line 494
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 495
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    .line 501
    .local v0, "minLoadableRetryCountForMedia":I
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    if-le v1, v0, :cond_0

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v1

    .line 497
    .end local v0    # "minLoadableRetryCountForMedia":I
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x6

    .restart local v0    # "minLoadableRetryCountForMedia":I
    :goto_1
    goto :goto_0

    .end local v0    # "minLoadableRetryCountForMedia":I
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 578
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    .line 579
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    .line 582
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 1
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    .line 574
    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "ignored"    # Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 588
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 589
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    .line 592
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    .line 593
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 594
    return-void

    .line 589
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 12
    .param p1, "positionUs"    # J

    .prologue
    const-wide/16 v10, -0x1

    const/4 v4, 0x1

    .line 349
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 376
    :goto_0
    return v3

    .line 352
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v3, :cond_1

    .line 353
    new-instance v3, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v5, "Loader:ExtractorSampleSource"

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 356
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    .line 358
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->haveFormatsForAllTracks()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 360
    .local v2, "trackCount":I
    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    .line 361
    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    .line 362
    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    .line 363
    new-array v3, v2, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 364
    iput-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 366
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    .line 367
    .local v0, "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v0, v3, v1

    .line 368
    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 369
    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    .line 365
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    .end local v0    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    move v3, v4

    .line 373
    goto :goto_0

    .line 376
    .end local v1    # "i":I
    .end local v2    # "trackCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 8
    .param p1, "track"    # I
    .param p2, "playbackPositionUs"    # J
    .param p4, "formatHolder"    # Lorg/telegram/messenger/exoplayer/MediaFormatHolder;
    .param p5, "sampleHolder"    # Lorg/telegram/messenger/exoplayer/SampleHolder;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 452
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 454
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 482
    :goto_0
    return v2

    .line 458
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 459
    .local v1, "sampleQueue":Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_2

    .line 460
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v3

    iput-object v3, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 461
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iput-object v3, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .line 462
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v2, v3, p1

    .line 463
    const/4 v2, -0x4

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {v1, p5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 467
    iget-wide v4, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    const/4 v0, 0x1

    .line 468
    .local v0, "decodeOnly":Z
    :goto_1
    iget v4, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_5

    const/high16 v3, 0x8000000

    :goto_2
    or-int/2addr v3, v4

    iput v3, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    .line 469
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    if-eqz v3, :cond_3

    .line 471
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    iget-wide v6, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    .line 472
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    .line 474
    :cond_3
    iget-wide v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    add-long/2addr v2, v4

    iput-wide v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    .line 475
    const/4 v2, -0x3

    goto :goto_0

    .end local v0    # "decodeOnly":Z
    :cond_4
    move v0, v2

    .line 467
    goto :goto_1

    .restart local v0    # "decodeOnly":Z
    :cond_5
    move v3, v2

    .line 468
    goto :goto_2

    .line 478
    .end local v0    # "decodeOnly":Z
    :cond_6
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v2, :cond_7

    .line 479
    const/4 v2, -0x1

    goto :goto_0

    :cond_7
    move v2, v3

    .line 482
    goto :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 444
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 446
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    .line 344
    return-object p0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 557
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release()V

    .line 560
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->access$000(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->access$000(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->release()V

    .line 564
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    # setter for: Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->access$002(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/extractor/Extractor;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .line 567
    :cond_1
    return-void

    .line 556
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    .prologue
    .line 615
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    .line 616
    return-void
.end method

.method public seekToUs(J)V
    .locals 7
    .param p1, "positionUs"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 508
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 509
    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v4, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 511
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 p1, 0x0

    .line 513
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    .line 514
    .local v0, "currentPositionUs":J
    :goto_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    .line 515
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    .line 516
    cmp-long v4, v0, p1

    if-nez v4, :cond_4

    .line 535
    :cond_1
    return-void

    .end local v0    # "currentPositionUs":J
    :cond_2
    move v4, v6

    .line 509
    goto :goto_0

    .line 513
    :cond_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_1

    .line 521
    .restart local v0    # "currentPositionUs":J
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v4

    if-nez v4, :cond_5

    move v3, v5

    .line 522
    .local v3, "seekInsideBuffer":Z
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 523
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v4

    and-int/2addr v3, v4

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "seekInsideBuffer":Z
    :cond_5
    move v3, v6

    .line 521
    goto :goto_2

    .line 527
    .restart local v2    # "i":I
    .restart local v3    # "seekInsideBuffer":Z
    :cond_6
    if-nez v3, :cond_7

    .line 528
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    .line 532
    :cond_7
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 533
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v5, v4, v2

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 600
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 601
    .local v0, "sampleQueue":Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .end local v0    # "sampleQueue":Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    .line 603
    .restart local v0    # "sampleQueue":Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    :cond_0
    return-object v0
.end method
