.class public Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
.super Lorg/telegram/tgnet/TLRPC$Peer;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerChannel"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1262
    const v0, -0x42221ace

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1261
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Peer;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1266
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 1267
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1270
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1271
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1272
    return-void
.end method
