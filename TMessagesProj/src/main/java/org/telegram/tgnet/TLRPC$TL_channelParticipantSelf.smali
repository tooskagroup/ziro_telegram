.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantSelf"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12551
    const v0, -0x5cd76593    # -9.139999E-18f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12550
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12555
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->user_id:I

    .line 12556
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->inviter_id:I

    .line 12557
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->date:I

    .line 12558
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12561
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12562
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12563
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->inviter_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12564
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12565
    return-void
.end method
