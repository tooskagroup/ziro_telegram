.class Lorg/telegram/messenger/MessagesController$107$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$107;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$107;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$107;)V
    .locals 0

    .prologue
    .line 7015
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 7018
    const/16 v22, 0x0

    .line 7019
    .local v22, "updateMask":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 7020
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7021
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 7022
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 7023
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 7024
    .local v18, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 7025
    .local v20, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7026
    .local v12, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_1

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_1

    .line 7027
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7028
    .local v21, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7029
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7030
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    .line 7022
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 7034
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "key":I
    .end local v20    # "messageId":I
    :cond_2
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 7035
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 7036
    .restart local v18    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 7037
    .restart local v20    # "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7038
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_3

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_3

    .line 7039
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7040
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7041
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7042
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    .line 7034
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7047
    .end local v11    # "b":I
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "key":I
    .end local v20    # "messageId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 7048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 7049
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7050
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v14, v2, v4

    .line 7051
    .local v14, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7052
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_5

    .line 7053
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MessageObject;

    .line 7054
    .local v19, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v3, v2, :cond_5

    .line 7055
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7056
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    goto :goto_2

    .line 7061
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "dialog_id":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7062
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$107;->val$markAsReadMessages:Ljava/util/ArrayList;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7064
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    .line 7065
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_d

    .line 7066
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 7067
    .restart local v18    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->val$deletedMessages:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 7068
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v10, :cond_9

    .line 7065
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 7071
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7072
    if-nez v18, :cond_b

    .line 7073
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    .line 7074
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 7075
    .local v17, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7076
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_a

    .line 7077
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 7073
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 7081
    .end local v11    # "b":I
    .end local v17    # "id":Ljava/lang/Integer;
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move/from16 v0, v18

    neg-int v3, v0

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 7082
    .restart local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_8

    .line 7083
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    .line 7084
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_c

    .line 7085
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    goto :goto_4

    .line 7083
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 7092
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "b":I
    .end local v18    # "key":I
    .end local v21    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$107$1;->this$1:Lorg/telegram/messenger/MessagesController$107;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$107;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V

    .line 7094
    .end local v9    # "a":I
    :cond_e
    if-eqz v22, :cond_f

    .line 7095
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7097
    :cond_f
    return-void
.end method
