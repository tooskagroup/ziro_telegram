.class abstract Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# instance fields
.field protected extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field protected final oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

.field protected final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field protected trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 20
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    return-void
.end method


# virtual methods
.method init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .line 28
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 29
    return-void
.end method

.method abstract read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method seek()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->reset()V

    .line 36
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 37
    return-void
.end method
