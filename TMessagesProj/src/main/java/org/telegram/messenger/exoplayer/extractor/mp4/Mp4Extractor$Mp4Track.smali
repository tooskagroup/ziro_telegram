.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

.field public final track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

.field public final trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0
    .param p1, "track"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .param p2, "sampleTable"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;
    .param p3, "trackOutput"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    .line 470
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    .line 471
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 472
    return-void
.end method
