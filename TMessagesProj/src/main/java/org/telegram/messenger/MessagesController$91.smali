.class Lorg/telegram/messenger/MessagesController$91;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I

.field final synthetic val$newDialogType:I

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIJ)V
    .locals 0

    .prologue
    .line 4856
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$91;->val$newDialogType:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesController$91;->val$newTaskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4859
    if-nez p2, :cond_6

    move-object/from16 v5, p1

    .line 4860
    check-cast v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    .line 4862
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4863
    .local v7, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 4864
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    .line 4865
    .local v12, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4863
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4867
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    const/4 v9, 0x0

    .line 4868
    .local v9, "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v8, 0x0

    :goto_1
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_1

    .line 4869
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 4870
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    if-ne v2, v3, :cond_3

    .line 4871
    move-object v9, v10

    .line 4875
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    move-object v6, v9

    .line 4877
    .local v6, "channelFinal":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4878
    .local v4, "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4879
    const/4 v8, 0x0

    :goto_2
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_4

    .line 4880
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4881
    .local v11, "upd":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v2, :cond_2

    .line 4882
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v11    # "upd":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4883
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4884
    add-int/lit8 v8, v8, -0x1

    .line 4879
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4868
    .end local v4    # "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    .end local v6    # "channelFinal":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4889
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v4    # "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    .restart local v6    # "channelFinal":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    iget-object v13, v5, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v2, v3, v13, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4890
    new-instance v2, Lorg/telegram/messenger/MessagesController$91$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lorg/telegram/messenger/MessagesController$91$1;-><init>(Lorg/telegram/messenger/MessagesController$91;Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4898
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v13

    new-instance v2, Lorg/telegram/messenger/MessagesController$91$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$91$2;-><init>(Lorg/telegram/messenger/MessagesController$91;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/HashMap;)V

    invoke-virtual {v13, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5057
    .end local v4    # "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
    .end local v6    # "channelFinal":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v7    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v8    # "a":I
    .end local v9    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_3
    return-void

    .line 5046
    :cond_6
    new-instance v2, Lorg/telegram/messenger/MessagesController$91$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MessagesController$91$3;-><init>(Lorg/telegram/messenger/MessagesController$91;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5052
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5053
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController$91;->val$newTaskId:J

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-eqz v2, :cond_5

    .line 5054
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/MessagesController$91;->val$newTaskId:J

    invoke-virtual {v2, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_3
.end method
