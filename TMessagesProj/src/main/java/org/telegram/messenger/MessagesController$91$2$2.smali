.class Lorg/telegram/messenger/MessagesController$91$2$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$91$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$91$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$91$2;)V
    .locals 0

    .prologue
    .line 4926
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 4929
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;

    if-eqz v14, :cond_10

    .line 4930
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 4931
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4932
    .local v8, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-static {v14}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 4934
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4935
    .local v11, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v14, v14, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    neg-int v14, v14

    int-to-long v4, v14

    .line 4936
    .local v4, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4937
    .local v6, "inboxValue":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 4938
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4939
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4942
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4943
    .local v10, "outboxValue":Ljava/lang/Integer;
    if-nez v10, :cond_2

    .line 4944
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 4945
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    :cond_2
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_9

    .line 4949
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4950
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_8

    :cond_3
    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v14, :cond_7

    move-object v14, v10

    :goto_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v14, v15, :cond_8

    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v14, :cond_8

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 4951
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v14, :cond_4

    .line 4952
    iget v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v15, -0x80000000

    or-int/2addr v14, v15

    iput v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 4955
    :cond_4
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v9, v7, v14, v15}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 4956
    .local v9, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4957
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4960
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v14, v14, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    neg-int v14, v14

    int-to-long v12, v14

    .line 4961
    .local v12, "uid":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4962
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v3, :cond_6

    .line 4963
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4964
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4966
    :cond_6
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4948
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v9    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v12    # "uid":J
    :cond_7
    move-object v14, v6

    .line 4950
    goto/16 :goto_1

    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 4969
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9
    new-instance v14, Lorg/telegram/messenger/MessagesController$91$2$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lorg/telegram/messenger/MessagesController$91$2$2$1;-><init>(Lorg/telegram/messenger/MessagesController$91$2$2;Ljava/util/HashMap;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4980
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v14

    new-instance v15, Lorg/telegram/messenger/MessagesController$91$2$2$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lorg/telegram/messenger/MessagesController$91$2$2$2;-><init>(Lorg/telegram/messenger/MessagesController$91$2$2;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4996
    .end local v2    # "a":I
    .end local v4    # "dialog_id":J
    .end local v6    # "inboxValue":Ljava/lang/Integer;
    .end local v8    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v10    # "outboxValue":Ljava/lang/Integer;
    .end local v11    # "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 4997
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 4999
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    const/16 v16, 0x1

    # invokes: Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V
    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/MessagesController;->access$5400(Lorg/telegram/messenger/MessagesController;II)V

    .line 5000
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    .line 5026
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5027
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5029
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_d

    .line 5030
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->timeout:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseIntArray;->put(II)V

    .line 5032
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->isFinal:Z

    if-nez v14, :cond_e

    .line 5033
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v15, v15, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V
    invoke-static {v14, v15}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    .line 5035
    :cond_e
    const-string/jumbo v14, "tmessages"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "received channel difference with pts = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " channelId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    const-string/jumbo v14, "tmessages"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "new_messages = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " messages = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " users = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " chats = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " other updates = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-wide v14, v14, Lorg/telegram/messenger/MessagesController$91;->val$newTaskId:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_f

    .line 5039
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-wide v0, v15, Lorg/telegram/messenger/MessagesController$91;->val$newTaskId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    .line 5041
    :cond_f
    return-void

    .line 5001
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    if-eqz v14, :cond_c

    .line 5002
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v14, v14, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    neg-int v14, v14

    int-to-long v4, v14

    .line 5004
    .restart local v4    # "dialog_id":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5005
    .restart local v6    # "inboxValue":Ljava/lang/Integer;
    if-nez v6, :cond_11

    .line 5006
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 5007
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5010
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 5011
    .restart local v10    # "outboxValue":Ljava/lang/Integer;
    if-nez v10, :cond_12

    .line 5012
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5013
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5016
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_17

    .line 5017
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5018
    .restart local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v14, v14, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    neg-int v14, v14

    int-to-long v14, v14

    iput-wide v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5019
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_16

    :cond_13
    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v14, :cond_15

    move-object v14, v10

    :goto_5
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v14, v15, :cond_16

    const/4 v14, 0x1

    :goto_6
    iput-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 5020
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v14, :cond_14

    .line 5021
    iget v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v15, -0x80000000

    or-int/2addr v14, v15

    iput v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5016
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    move-object v14, v6

    .line 5019
    goto :goto_5

    :cond_16
    const/4 v14, 0x0

    goto :goto_6

    .line 5024
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v0, v14, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2$2;->this$2:Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/MessagesController$91;->val$newDialogType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v14, v1}, Lorg/telegram/messenger/MessagesStorage;->overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V

    goto/16 :goto_3
.end method
