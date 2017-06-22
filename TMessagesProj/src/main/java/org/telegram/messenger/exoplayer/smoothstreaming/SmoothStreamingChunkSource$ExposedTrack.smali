.class final Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "SmoothStreamingChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedTrack"
.end annotation


# instance fields
.field private final adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private final elementIndex:I

.field private final fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field public final trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/MediaFormat;ILorg/telegram/messenger/exoplayer/chunk/Format;)V
    .locals 2
    .param p1, "trackFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p2, "elementIndex"    # I
    .param p3, "fixedFormat"    # Lorg/telegram/messenger/exoplayer/chunk/Format;

    .prologue
    const/4 v1, -0x1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 535
    iput p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    .line 536
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 538
    iput v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 539
    iput v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 540
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/MediaFormat;I[Lorg/telegram/messenger/exoplayer/chunk/Format;II)V
    .locals 1
    .param p1, "trackFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p2, "elementIndex"    # I
    .param p3, "adaptiveFormats"    # [Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p4, "adaptiveMaxWidth"    # I
    .param p5, "adaptiveMaxHeight"    # I

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 545
    iput p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    .line 546
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 547
    iput p4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 548
    iput p5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 550
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 519
    iget v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 519
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 519
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 519
    iget v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 519
    iget v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return v0
.end method


# virtual methods
.method public isAdaptive()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
