.class Lorg/telegram/messenger/query/MessagesQuery$6$2;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesQuery$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesQuery$6;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$6$2;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v8, 0x1

    .line 349
    if-nez p2, :cond_0

    move-object v7, p1

    .line 350
    check-cast v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 351
    .local v7, "messagesRes":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 352
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$6$2;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageOwners:Ljava/util/HashMap;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$6$2;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesQuery$6;->val$dialogId:J

    const/4 v6, 0x0

    # invokes: Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/query/MessagesQuery;->access$300(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    .line 353
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 354
    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesQuery$6$2;->this$0:Lorg/telegram/messenger/query/MessagesQuery$6;

    iget-object v0, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageOwners:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/query/MessagesQuery;->saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/query/MessagesQuery;->access$400(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 356
    .end local v7    # "messagesRes":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_0
    return-void
.end method
