.class public final Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$RandomEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RandomEvaluator"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$RandomEvaluator;->random:Ljava/util/Random;

    .line 116
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "seed"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/Random;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$RandomEvaluator;->random:Ljava/util/Random;

    .line 123
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 3
    .param p2, "playbackPositionUs"    # J
    .param p4, "formats"    # [Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p5, "evaluation"    # Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lorg/telegram/messenger/exoplayer/chunk/Format;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$RandomEvaluator;->random:Ljava/util/Random;

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, p4, v1

    .line 139
    .local v0, "newFormat":Lorg/telegram/messenger/exoplayer/chunk/Format;
    iget-object v1, p5, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    if-eqz v1, :cond_0

    iget-object v1, p5, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x3

    iput v1, p5, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    .line 142
    :cond_0
    iput-object v0, p5, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    .line 143
    return-void
.end method
