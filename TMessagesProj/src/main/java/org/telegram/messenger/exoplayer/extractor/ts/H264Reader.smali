.class final Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$1;,
        Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;ZZ)V
    .locals 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .param p2, "seiReader"    # Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;
    .param p3, "allowNonIdrKeyframes"    # Z
    .param p4, "detectAccessUnits"    # Z

    .prologue
    const/16 v2, 0x80

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    .line 71
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-direct {v0, p1, p3, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    .line 74
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 76
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 78
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 19
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 167
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v4, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 173
    .local v16, "spsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 174
    .local v15, "ppsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "video/avc"

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v0, v16

    iget v10, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->width:I

    move-object/from16 v0, v16

    iget v11, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->height:I

    const/4 v13, -0x1

    move-object/from16 v0, v16

    iget v14, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    invoke-static/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 178
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 194
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "ppsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;
    .end local v16    # "spsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v17

    .line 196
    .local v17, "unescapedLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    .line 200
    .end local v17    # "unescapedLength":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->endNalUnit(JI)V

    .line 201
    return-void

    .line 184
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 186
    .restart local v16    # "spsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    .line 188
    .end local v16    # "spsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 190
    .restart local v15    # "ppsData":Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    .line 161
    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 6
    .param p1, "position"    # J
    .param p3, "nalUnitType"    # I
    .param p4, "pesTimeUs"    # J

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    .line 152
    return-void
.end method

.method private static unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
    .locals 4
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .prologue
    .line 204
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 205
    .local v1, "length":I
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 206
    .local v0, "bitArray":Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 207
    return-object v0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 20
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 99
    .local v19, "offset":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v17

    .line 100
    .local v17, "limit":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    .line 103
    .local v4, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v14, v5

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v9}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    .line 108
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v5}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v18

    .line 110
    .local v18, "nalUnitOffset":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 138
    .end local v4    # "dataArray":[B
    .end local v17    # "limit":I
    .end local v18    # "nalUnitOffset":I
    .end local v19    # "offset":I
    :cond_0
    return-void

    .line 117
    .restart local v4    # "dataArray":[B
    .restart local v17    # "limit":I
    .restart local v18    # "nalUnitOffset":I
    .restart local v19    # "offset":I
    :cond_1
    move/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v13

    .line 121
    .local v13, "nalUnitType":I
    sub-int v16, v18, v19

    .line 122
    .local v16, "lengthToNalUnit":I
    if-lez v16, :cond_2

    .line 123
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 125
    :cond_2
    sub-int v8, v17, v18

    .line 126
    .local v8, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v14, v8

    sub-long v6, v10, v14

    .line 130
    .local v6, "absolutePosition":J
    if-gez v16, :cond_3

    move/from16 v0, v16

    neg-int v9, v0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 133
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v10, p0

    move-wide v11, v6

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    .line 135
    add-int/lit8 v19, v18, 0x3

    .line 136
    goto :goto_0

    .line 130
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 92
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    .line 93
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 88
    return-void
.end method
