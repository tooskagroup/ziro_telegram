.class final Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput p2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 396
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 397
    return-void
.end method
