.class Lorg/telegram/messenger/MessagesController$92;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V
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
    .line 5102
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v1, 0x0

    .line 5105
    if-nez p2, :cond_5

    move-object v2, p1

    .line 5106
    check-cast v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;

    .line 5108
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    if-eqz v0, :cond_0

    .line 5109
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    const/4 v12, 0x1

    invoke-virtual {v0, v1, v10, v11, v12}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5112
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5113
    .local v4, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5114
    .local v5, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 5115
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 5116
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5114
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5118
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 5119
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5120
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5118
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5123
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5124
    .local v3, "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5125
    const/4 v6, 0x0

    :goto_2
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 5126
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5127
    .local v8, "upd":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v0, :cond_3

    .line 5128
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v8    # "upd":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5129
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5130
    add-int/lit8 v6, v6, -0x1

    .line 5125
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5135
    :cond_4
    new-instance v0, Lorg/telegram/messenger/MessagesController$92$1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/messenger/MessagesController$92$1;-><init>(Lorg/telegram/messenger/MessagesController$92;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5143
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v10

    new-instance v0, Lorg/telegram/messenger/MessagesController$92$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$92$2;-><init>(Lorg/telegram/messenger/MessagesController$92;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5303
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    .end local v3    # "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    .end local v4    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v6    # "a":I
    :goto_3
    return-void

    .line 5300
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$92;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5301
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    goto :goto_3
.end method
