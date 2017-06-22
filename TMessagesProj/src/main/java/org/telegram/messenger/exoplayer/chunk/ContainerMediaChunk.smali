.class public Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private volatile bytesLoaded:I

.field private drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIJLorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/MediaFormat;IILorg/telegram/messenger/exoplayer/drm/DrmInitData;ZI)V
    .locals 19
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "sampleOffsetUs"    # J
    .param p12, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;
    .param p13, "mediaFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p14, "adaptiveMaxWidth"    # I
    .param p15, "adaptiveMaxHeight"    # I
    .param p16, "drmInitData"    # Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .param p17, "isMediaFormatFinal"    # Z
    .param p18, "parentId"    # I

    .prologue
    .line 76
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v7 .. v18}, Lorg/telegram/messenger/exoplayer/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIZI)V

    .line 78
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    .line 79
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 80
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    .line 81
    move/from16 v0, p15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    .line 82
    move-object/from16 v0, p13

    move-wide/from16 v1, p10

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 84
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .line 85
    return-void
.end method

.method private static getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 5
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;
    .param p1, "sampleOffsetUs"    # J
    .param p3, "adaptiveMaxWidth"    # I
    .param p4, "adaptiveMaxHeight"    # I

    .prologue
    const/4 v4, -0x1

    .line 179
    if-nez p0, :cond_1

    .line 180
    const/4 p0, 0x0

    .line 188
    .end local p0    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    :cond_0
    :goto_0
    return-object p0

    .line 182
    .restart local p0    # "format":Lorg/telegram/messenger/exoplayer/MediaFormat;
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 183
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/MediaFormat;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object p0

    .line 185
    :cond_2
    if-ne p3, v4, :cond_3

    if-eq p4, v4, :cond_0

    .line 186
    :cond_3
    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 142
    return-void
.end method

.method public final drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    .line 112
    return-void
.end method

.method public final format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 4
    .param p1, "mediaFormat"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxWidth:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->adaptiveMaxHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getAdjustedMediaFormat(Lorg/telegram/messenger/exoplayer/MediaFormat;JII)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    .line 118
    return-void
.end method

.method public final getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final getMediaFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    move-result-object v6

    .line 155
    .local v6, "loadDataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V

    .line 157
    .local v0, "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :cond_0
    const/4 v7, 0x0

    .line 164
    .local v7, "result":I
    :goto_0
    if-nez v7, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    .line 168
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    .line 173
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    throw v1
.end method

.method public final sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
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
    .line 123
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public final sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 129
    return-void
.end method

.method public final sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    add-long/2addr v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    .line 135
    return-void
.end method

.method public final seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    .prologue
    .line 107
    return-void
.end method
