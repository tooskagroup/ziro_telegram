.class public Lorg/telegram/tgnet/TLRPC$TL_upload_file;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_file"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public mtime:I

.field public type:Lorg/telegram/tgnet/TLRPC$storage_FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21468
    const v0, 0x96a18d5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21467
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21475
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    if-eq v1, p1, :cond_1

    .line 21476
    if-eqz p2, :cond_0

    .line 21477
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_upload_file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21479
    :cond_0
    const/4 v0, 0x0

    .line 21484
    :goto_0
    return-object v0

    .line 21482
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    .line 21483
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .prologue
    .line 21495
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    if-eqz v0, :cond_1

    .line 21502
    :cond_0
    :goto_0
    return-void

    .line 21498
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    .line 21499
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 21500
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 21488
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    .line 21489
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->mtime:I

    .line 21490
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 21491
    return-void
.end method
