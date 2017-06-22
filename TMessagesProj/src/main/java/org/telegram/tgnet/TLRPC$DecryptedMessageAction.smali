.class public Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptedMessageAction"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public end_seq_no:I

.field public exchange_id:J

.field public g_a:[B

.field public g_b:[B

.field public key_fingerprint:J

.field public layer:I

.field public random_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public start_seq_no:I

.field public ttl_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10400
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10413
    const/4 v0, 0x0

    .line 10414
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    sparse-switch p1, :sswitch_data_0

    .line 10455
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10456
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DecryptedMessageAction"

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

    .line 10416
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    .line 10417
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10419
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    .line 10420
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10422
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    .line 10423
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10425
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    .line 10426
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10428
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    .line 10429
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10431
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    .line 10432
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10434
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;-><init>()V

    .line 10435
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10437
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    .line 10438
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10440
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    .line 10441
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10443
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;-><init>()V

    .line 10444
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10446
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    .line 10447
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10449
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    .line 10450
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10452
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_0

    .line 10458
    :cond_0
    if-eqz v0, :cond_1

    .line 10459
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10461
    :cond_1
    return-object v0

    .line 10414
    nop

    :sswitch_data_0
    .sparse-switch
        -0x753e0b8b -> :sswitch_b
        -0x5e8cc514 -> :sswitch_0
        -0x57d0229d -> :sswitch_c
        -0x334d89bf -> :sswitch_6
        -0x22fa1395 -> :sswitch_4
        -0x13d1f465 -> :sswitch_3
        -0xcfb777d -> :sswitch_1
        -0xc369ee5 -> :sswitch_a
        0xc4f40be -> :sswitch_8
        0x511110b0 -> :sswitch_9
        0x65614304 -> :sswitch_2
        0x6719e45c -> :sswitch_5
        0x6fe1735b -> :sswitch_7
    .end sparse-switch
.end method
