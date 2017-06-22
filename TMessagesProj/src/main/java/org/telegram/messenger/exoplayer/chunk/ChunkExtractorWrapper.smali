.class public final Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;
    }
.end annotation


# instance fields
.field private final extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

.field private extractorInitialized:Z

.field private output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

.field private seenTrack:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 0
    .param p1, "extractor"    # Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .line 66
    return-void
.end method


# virtual methods
.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 1
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V

    .line 120
    return-void
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 110
    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 127
    return-void
.end method

.method public init(Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    .line 76
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->seek()V

    goto :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I

    move-result v0

    .line 94
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 95
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 138
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 142
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->sampleMetadata(JIII[B)V

    .line 143
    return-void
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->output:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    .line 115
    return-void
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 103
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->seenTrack:Z

    .line 104
    return-object p0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
