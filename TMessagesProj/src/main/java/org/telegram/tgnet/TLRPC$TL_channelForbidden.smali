.class public Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelForbidden"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13643
    const v0, -0x7ac887b1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13642
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

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

    .line 13647
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 13648
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->broadcast:Z

    .line 13649
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->megagroup:Z

    .line 13650
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->id:I

    .line 13651
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->access_hash:J

    .line 13652
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->title:Ljava/lang/String;

    .line 13653
    return-void

    :cond_0
    move v0, v2

    .line 13648
    goto :goto_0

    :cond_1
    move v1, v2

    .line 13649
    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13656
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13657
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->broadcast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 13658
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->megagroup:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    .line 13659
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13660
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13661
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13662
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13663
    return-void

    .line 13657
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    .line 13658
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto :goto_1
.end method
