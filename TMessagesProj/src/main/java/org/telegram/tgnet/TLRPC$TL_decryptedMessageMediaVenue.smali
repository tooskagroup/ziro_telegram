.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaVenue"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13291
    const v0, -0x75f20a91

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13290
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13295
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->lat:D

    .line 13296
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->_long:D

    .line 13297
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->title:Ljava/lang/String;

    .line 13298
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->address:Ljava/lang/String;

    .line 13299
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->provider:Ljava/lang/String;

    .line 13300
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->venue_id:Ljava/lang/String;

    .line 13301
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13304
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13305
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->lat:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 13306
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->_long:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 13307
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13308
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13309
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13310
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->venue_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13311
    return-void
.end method
