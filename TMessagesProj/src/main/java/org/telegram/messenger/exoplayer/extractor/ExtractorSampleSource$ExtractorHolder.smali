.class final Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

.field private final extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "extractors"    # [Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .line 869
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .line 870
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .prologue
    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/extractor/Extractor;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .prologue
    .line 855
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    return-object p1
.end method


# virtual methods
.method public selectExtractor(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    .locals 6
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    if-eqz v4, :cond_0

    .line 884
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .line 902
    :goto_0
    return-object v4

    .line 886
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    .local v0, "arr$":[Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 888
    .local v1, "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 889
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 898
    .end local v1    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    if-nez v4, :cond_3

    .line 899
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;-><init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    throw v4

    .line 895
    .restart local v1    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 886
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 892
    :catch_0
    move-exception v4

    .line 895
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    throw v4

    .line 901
    .end local v1    # "extractor":Lorg/telegram/messenger/exoplayer/extractor/Extractor;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    .line 902
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    goto :goto_0
.end method
