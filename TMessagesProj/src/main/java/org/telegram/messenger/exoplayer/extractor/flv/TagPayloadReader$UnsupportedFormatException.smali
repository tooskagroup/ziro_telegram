.class public final Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
.super Lorg/telegram/messenger/exoplayer/ParserException;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedFormatException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
