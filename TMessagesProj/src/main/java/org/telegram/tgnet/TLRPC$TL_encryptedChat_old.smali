.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;
.super Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_encryptedChat_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11358
    const v0, 0x6601d14f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11357
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 11362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->id:I

    .line 11363
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->access_hash:J

    .line 11364
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->date:I

    .line 11365
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->admin_id:I

    .line 11366
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->participant_id:I

    .line 11367
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->g_a_or_b:[B

    .line 11368
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->nonce:[B

    .line 11369
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->key_fingerprint:J

    .line 11370
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 11373
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11374
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11375
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 11376
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11377
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->admin_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11378
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->participant_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11379
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->g_a_or_b:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 11380
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->nonce:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 11381
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;->key_fingerprint:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 11382
    return-void
.end method
