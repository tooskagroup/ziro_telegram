.class Lorg/telegram/messenger/MessagesController$92$2$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$92$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$92$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$92$2;)V
    .locals 0

    .prologue
    .line 5172
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 5175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_f

    .line 5176
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5177
    .local v11, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    .line 5178
    .local v7, "encryptedMessage":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v6

    .line 5179
    .local v6, "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 5180
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5181
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5186
    .end local v6    # "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "encryptedMessage":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 5188
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5189
    .local v13, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_e

    .line 5190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5192
    .restart local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$User;

    .line 5194
    .local v15, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v15, :cond_3

    iget-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5195
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 5199
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_4

    .line 5200
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 5201
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5210
    :cond_4
    :goto_2
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 5211
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 5212
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 5223
    :goto_3
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$chatsDict:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v19

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v12, v10, v0, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 5225
    .local v12, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 5226
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5229
    :cond_6
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 5230
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v5, :cond_7

    .line 5231
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5232
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5234
    :cond_7
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5189
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 5203
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v12    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_8
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v17, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 5204
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 5206
    :cond_9
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_2

    .line 5214
    :cond_a
    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5215
    .local v14, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_4
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 5216
    .local v16, "value":Ljava/lang/Integer;
    if-nez v16, :cond_b

    .line 5217
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v17

    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move/from16 v18, v0

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 5218
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5220
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_3

    .line 5214
    .end local v14    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_4

    .line 5220
    .restart local v14    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v16    # "value":Ljava/lang/Integer;
    :cond_d
    const/16 v17, 0x0

    goto :goto_5

    .line 5237
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v14    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_e
    new-instance v17, Lorg/telegram/messenger/MessagesController$92$2$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lorg/telegram/messenger/MessagesController$92$2$2$1;-><init>(Lorg/telegram/messenger/MessagesController$92$2$2;Ljava/util/HashMap;)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5248
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v17

    new-instance v18, Lorg/telegram/messenger/MessagesController$92$2$2$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/messenger/MessagesController$92$2$2$2;-><init>(Lorg/telegram/messenger/MessagesController$92$2$2;Ljava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5263
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    .line 5266
    .end local v4    # "a":I
    .end local v11    # "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v13    # "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    .line 5267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v17 .. v21}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 5270
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 5271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 5276
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5277
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v4, v0, :cond_12

    .line 5278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    .line 5277
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5280
    .end local v4    # "a":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 5281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 5282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 5283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 5293
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v17

    sget v18, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v19, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v20, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v21, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual/range {v17 .. v21}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 5294
    const-string/jumbo v17, "tmessages"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "received difference with date = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " pts = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " seq = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " messages = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " users = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " chats = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " other updates = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5295
    return-void

    .line 5284
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceEmpty;

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 5285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->seq:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 5287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->date:I

    move/from16 v17, v0

    sput v17, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 5288
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5289
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v4, v0, :cond_12

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2$2;->this$2:Lorg/telegram/messenger/MessagesController$92$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92$2;->this$1:Lorg/telegram/messenger/MessagesController$92;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    .line 5289
    add-int/lit8 v4, v4, 0x1

    goto :goto_7
.end method
