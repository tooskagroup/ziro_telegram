.class public Lorg/telegram/messenger/ChatObject;
.super Ljava/lang/Object;
.source "ChatObject.java"


# static fields
.field public static final CHAT_TYPE_BROADCAST:I = 0x1

.field public static final CHAT_TYPE_CHANNEL:I = 0x2

.field public static final CHAT_TYPE_CHAT:I = 0x0

.field public static final CHAT_TYPE_MEGAGROUP:I = 0x4

.field public static final CHAT_TYPE_USER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 52
    long-to-int v1, p0

    .line 53
    .local v1, "lower_id":I
    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v0, v2

    .line 54
    .local v0, "high_id":I
    if-gez v1, :cond_0

    .line 55
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-int v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCanWriteToChannel(I)Z
    .locals 3
    .param p0, "chatId"    # I

    .prologue
    .line 43
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 44
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChannel(I)Z
    .locals 3
    .param p0, "chatId"    # I

    .prologue
    .line 38
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 39
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 34
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
