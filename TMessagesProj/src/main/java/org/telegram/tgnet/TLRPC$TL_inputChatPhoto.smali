.class public Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputChatPhoto"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15637
    const v0, -0x4d1e40f8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15636
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 15641
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 15642
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 15643
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15646
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15647
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15648
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15649
    return-void
.end method
