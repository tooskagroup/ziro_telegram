.class public Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;
.super Ljava/io/IOException;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderQueryException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    const-string/jumbo v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lorg/telegram/messenger/exoplayer/MediaCodecUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Throwable;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer/MediaCodecUtil$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
