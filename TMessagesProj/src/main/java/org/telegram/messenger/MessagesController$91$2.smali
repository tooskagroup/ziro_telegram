.class Lorg/telegram/messenger/MessagesController$91$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$91;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$91;

.field final synthetic val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$msgUpdates:Ljava/util/ArrayList;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$91;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 4898
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$msgUpdates:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$usersDict:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 4901
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4903
    .local v0, "corrected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[J>;"
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$91$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 4904
    .local v11, "update":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    const/4 v4, 0x0

    iget v5, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$91$2;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v8, v7, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    move-result-object v10

    .line 4905
    .local v10, "ids":[J
    if-eqz v10, :cond_0

    .line 4906
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4910
    .end local v10    # "ids":[J
    .end local v11    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4911
    new-instance v1, Lorg/telegram/messenger/MessagesController$91$2$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MessagesController$91$2$1;-><init>(Lorg/telegram/messenger/MessagesController$91$2;Ljava/util/HashMap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4926
    .end local v0    # "corrected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[J>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesController$91$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$91$2$2;-><init>(Lorg/telegram/messenger/MessagesController$91$2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5043
    return-void
.end method
