.class public Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_toggleSignatures"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19786
    const v0, 0x1f69b606

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19785
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 19792
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19796
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19797
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19798
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 19799
    return-void
.end method
