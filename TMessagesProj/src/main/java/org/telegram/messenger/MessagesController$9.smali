.class Lorg/telegram/messenger/MessagesController$9;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 887
    if-eqz p1, :cond_c

    move-object v3, p1

    .line 888
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 889
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 891
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 892
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    if-nez v6, :cond_0

    .line 893
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 895
    :cond_0
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    if-nez v6, :cond_1

    .line 896
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 898
    :cond_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_2

    .line 899
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_7

    .line 900
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 908
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 909
    .local v5, "value":Ljava/lang/Integer;
    if-nez v5, :cond_3

    .line 910
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 912
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 914
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_9

    .line 915
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 916
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:I

    .line 917
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    .line 918
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 928
    .restart local v5    # "value":Ljava/lang/Integer;
    if-nez v5, :cond_5

    .line 929
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 931
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 933
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_a

    .line 934
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 935
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->channel_id:I

    .line 936
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->max_id:I

    .line 937
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 901
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_7
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v6, :cond_8

    .line 902
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_1

    .line 903
    :cond_8
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_2

    .line 904
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_1

    .line 920
    .restart local v5    # "value":Ljava/lang/Integer;
    :cond_9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 921
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 922
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 923
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 939
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 940
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 941
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->max_id:I

    .line 942
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 946
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 947
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$9;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v6, v1, v12, v12, v10}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 950
    .end local v0    # "a":I
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    :cond_c
    return-void
.end method
