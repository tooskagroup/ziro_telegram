.class Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 129
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$000()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$mergeDialogId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I
    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$102(I)I

    .line 131
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 133
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    aput-boolean v2, v1, v8

    .line 134
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v2

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_0
    aput v1, v2, v8

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$mergeDialogId:J

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget v6, v6, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$guid:I

    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget v7, v7, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$direction:I

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZ)V

    .line 138
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_0
    return-void

    .line 134
    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method
