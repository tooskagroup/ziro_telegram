.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerNotifySettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public show_previews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3032
    const v0, -0x65325b40

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3031
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3037
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    .line 3038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->show_previews:Z

    .line 3039
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->silent:Z

    .line 3040
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->mute_until:I

    .line 3041
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->sound:Ljava/lang/String;

    .line 3042
    return-void

    :cond_0
    move v0, v2

    .line 3038
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3039
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3045
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3046
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->show_previews:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    .line 3047
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->silent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    .line 3048
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3050
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->sound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3051
    return-void

    .line 3046
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 3047
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method
