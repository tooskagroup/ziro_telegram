.class Lorg/telegram/messenger/MessagesController$10$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$10;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$10;Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1013
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    neg-int v4, v4

    int-to-long v4, v4

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    # invokes: Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    .line 1014
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1015
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 1016
    .local v1, "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-static {v1}, Lorg/telegram/messenger/query/BotQuery;->putBotInfo(Lorg/telegram/tgnet/TLRPC$BotInfo;)V

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1020
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1022
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1023
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->address:Ljava/lang/String;

    .line 1026
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1027
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v8}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1028
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$10;->val$classGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1029
    return-void
.end method
