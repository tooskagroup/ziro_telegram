.class public Lorg/telegram/tgnet/TLRPC$Peer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Peer"
.end annotation


# instance fields
.field public channel_id:I

.field public chat_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Peer;
    sparse-switch p1, :sswitch_data_0

    .line 1251
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1252
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Peer"

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

    .line 1242
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 1243
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_0

    .line 1245
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 1246
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_0

    .line 1248
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_0

    .line 1254
    :cond_0
    if-eqz v0, :cond_1

    .line 1255
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1257
    :cond_1
    return-object v0

    .line 1240
    nop

    :sswitch_data_0
    .sparse-switch
        -0x624e4393 -> :sswitch_1
        -0x452f1a45 -> :sswitch_2
        -0x42221ace -> :sswitch_0
    .end sparse-switch
.end method
