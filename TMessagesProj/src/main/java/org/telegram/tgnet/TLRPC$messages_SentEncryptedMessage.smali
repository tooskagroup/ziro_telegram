.class public Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_SentEncryptedMessage"
.end annotation


# instance fields
.field public date:I

.field public file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    sparse-switch p1, :sswitch_data_0

    .line 311
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in messages_SentEncryptedMessage"

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

    .line 305
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sentEncryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sentEncryptedMessage;-><init>()V

    .line 306
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    goto :goto_0

    .line 308
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sentEncryptedFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sentEncryptedFile;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;
    goto :goto_0

    .line 314
    :cond_0
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 317
    :cond_1
    return-object v0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b6c00ce -> :sswitch_1
        0x560f8935 -> :sswitch_0
    .end sparse-switch
.end method
