.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;
.super Lorg/telegram/tgnet/TLRPC$InputPeer;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPeerChat"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15939
    const v0, 0x179be863

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15938
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 15943
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;->chat_id:I

    .line 15944
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15947
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15948
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15949
    return-void
.end method
