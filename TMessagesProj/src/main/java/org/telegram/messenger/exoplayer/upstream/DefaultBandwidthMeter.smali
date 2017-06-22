.class public final Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;


# static fields
.field public static final DEFAULT_MAX_WEIGHT:I = 0x7d0


# instance fields
.field private bitrateEstimate:J

.field private bytesAccumulator:J

.field private final clock:Lorg/telegram/messenger/exoplayer/util/Clock;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

.field private final slidingPercentile:Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;

.field private startTimeMs:J

.field private streamCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

    .prologue
    .line 48
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/SystemClock;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;Lorg/telegram/messenger/exoplayer/util/Clock;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;I)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "maxWeight"    # I

    .prologue
    .line 56
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/SystemClock;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;Lorg/telegram/messenger/exoplayer/util/Clock;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;Lorg/telegram/messenger/exoplayer/util/Clock;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "clock"    # Lorg/telegram/messenger/exoplayer/util/Clock;

    .prologue
    .line 52
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;Lorg/telegram/messenger/exoplayer/util/Clock;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;Lorg/telegram/messenger/exoplayer/util/Clock;I)V
    .locals 2
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    .param p3, "clock"    # Lorg/telegram/messenger/exoplayer/util/Clock;
    .param p4, "maxWeight"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

    .line 63
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lorg/telegram/messenger/exoplayer/util/Clock;

    .line 64
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;

    invoke-direct {v0, p4}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;)Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

    return-object v0
.end method

.method private notifyBandwidthSample(IJJ)V
    .locals 8
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrate"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter$1;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getBitrateEstimate()J
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBytesTransferred(I)V
    .locals 4
    .param p1, "bytes"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferEnd()V
    .locals 10

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 90
    .local v8, "nowMs":J
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    sub-long v2, v8, v2

    long-to-int v1, v2

    .line 91
    .local v1, "elapsedMs":I
    if-lez v1, :cond_0

    .line 92
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v7, v2

    .line 93
    .local v7, "bitsPerSecond":F
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->addSample(IF)V

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/SlidingPercentile;->getPercentile(F)F

    move-result v6

    .line 95
    .local v6, "bandwidthEstimateFloat":F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 97
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->notifyBandwidthSample(IJJ)V

    .line 99
    .end local v6    # "bandwidthEstimateFloat":F
    .end local v7    # "bitsPerSecond":F
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    .line 100
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_1

    .line 101
    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    .line 103
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->bytesAccumulator:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 88
    .end local v1    # "elapsedMs":I
    .end local v8    # "nowMs":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    .restart local v1    # "elapsedMs":I
    .restart local v6    # "bandwidthEstimateFloat":F
    .restart local v7    # "bitsPerSecond":F
    .restart local v8    # "nowMs":J
    :cond_3
    float-to-long v2, v6

    goto :goto_1

    .line 88
    .end local v1    # "elapsedMs":I
    .end local v6    # "bandwidthEstimateFloat":F
    .end local v7    # "bitsPerSecond":F
    .end local v8    # "nowMs":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferStart()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->clock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->startTimeMs:J

    .line 78
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
