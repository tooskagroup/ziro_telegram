.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4471
    const v0, -0x54ce55d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4470
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 4475
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    .line 4476
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->can_view_participants:Z

    .line 4477
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->id:I

    .line 4478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->about:Ljava/lang/String;

    .line 4479
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4480
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->participants_count:I

    .line 4482
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4483
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->admins_count:I

    .line 4485
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4486
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->kicked_count:I

    .line 4488
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->read_inbox_max_id:I

    .line 4489
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->unread_count:I

    .line 4490
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 4491
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4492
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4493
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 4494
    return-void

    .line 4476
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 4497
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4498
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->can_view_participants:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    .line 4499
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4500
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4501
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4502
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4503
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4505
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4506
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->admins_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4508
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4509
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->kicked_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4511
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->read_inbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4512
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4513
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4514
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4515
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4516
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4517
    return-void

    .line 4498
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_0
.end method
