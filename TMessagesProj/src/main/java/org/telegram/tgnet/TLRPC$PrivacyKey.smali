.class public Lorg/telegram/tgnet/TLRPC$PrivacyKey;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1736
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1739
    const/4 v0, 0x0

    .line 1740
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    sparse-switch p1, :sswitch_data_0

    .line 1748
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1749
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PrivacyKey"

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

    .line 1742
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;-><init>()V

    .line 1743
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    goto :goto_0

    .line 1745
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    goto :goto_0

    .line 1751
    :cond_0
    if-eqz v0, :cond_1

    .line 1752
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyKey;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1754
    :cond_1
    return-object v0

    .line 1740
    nop

    :sswitch_data_0
    .sparse-switch
        -0x43d154d0 -> :sswitch_0
        0x500e6dfa -> :sswitch_1
    .end sparse-switch
.end method
