.class public final Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final discontinuitySequenceNumber:I

.field public final durationSecs:D

.field public final encryptionIV:Ljava/lang/String;

.field public final encryptionKeyUri:Ljava/lang/String;

.field public final isEncrypted:Z

.field public final startTimeUs:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DIJZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "durationSecs"    # D
    .param p4, "discontinuitySequenceNumber"    # I
    .param p5, "startTimeUs"    # J
    .param p7, "isEncrypted"    # Z
    .param p8, "encryptionKeyUri"    # Ljava/lang/String;
    .param p9, "encryptionIV"    # Ljava/lang/String;
    .param p10, "byterangeOffset"    # J
    .param p12, "byterangeLength"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    .line 47
    iput p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    .line 48
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    .line 49
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    .line 50
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 52
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:J

    .line 53
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:J

    .line 54
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4
    .param p1, "startTimeUs"    # Ljava/lang/Long;

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
