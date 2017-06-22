.class public Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelParticipant"
.end annotation


# instance fields
.field public date:I

.field public inviter_id:I

.field public kicked_by:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12496
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12503
    const/4 v0, 0x0

    .line 12504
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    sparse-switch p1, :sswitch_data_0

    .line 12524
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 12525
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelParticipant"

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

    .line 12506
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    .line 12507
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12509
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;-><init>()V

    .line 12510
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12512
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;-><init>()V

    .line 12513
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12515
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked;-><init>()V

    .line 12516
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12518
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;-><init>()V

    .line 12519
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12521
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 12527
    :cond_0
    if-eqz v0, :cond_1

    .line 12528
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 12530
    :cond_1
    return-object v0

    .line 12504
    nop

    :sswitch_data_0
    .sparse-switch
        -0x733a1966 -> :sswitch_3
        -0x6efa8011 -> :sswitch_4
        -0x67e6d29f -> :sswitch_2
        -0x5cd76593 -> :sswitch_1
        -0x1c1d1e07 -> :sswitch_5
        0x15ebac1d -> :sswitch_0
    .end sparse-switch
.end method
