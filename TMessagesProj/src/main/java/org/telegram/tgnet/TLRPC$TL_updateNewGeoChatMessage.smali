.class public Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateNewGeoChatMessage"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public message:Lorg/telegram/tgnet/TLRPC$GeoChatMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9671
    const v0, 0x5a68e3f7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9670
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 9676
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoChatMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;->message:Lorg/telegram/tgnet/TLRPC$GeoChatMessage;

    .line 9677
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9680
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9681
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;->message:Lorg/telegram/tgnet/TLRPC$GeoChatMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9682
    return-void
.end method
