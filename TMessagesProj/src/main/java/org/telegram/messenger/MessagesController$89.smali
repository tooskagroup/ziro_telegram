.class Lorg/telegram/messenger/MessagesController$89;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .prologue
    .line 4758
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$89;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$89;->val$newTaskId:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$89;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v3, 0x0

    .line 4761
    if-eqz p1, :cond_0

    move-object v8, p1

    .line 4762
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 4763
    .local v8, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4764
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 4765
    .local v1, "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4766
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4767
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4768
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4769
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$89;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZ)V

    .line 4772
    .end local v1    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$89;->val$newTaskId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 4773
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$89;->val$newTaskId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    .line 4775
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$89;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$89;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4776
    return-void
.end method
