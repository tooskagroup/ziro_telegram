.class Lorg/telegram/messenger/SendMessagesHelper$4$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

.field final synthetic val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

.field final synthetic val$oldId:I

.field final synthetic val$sentMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iput p3, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$oldId:I

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$sentMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 894
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$oldId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    .line 895
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$sentMessages:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 896
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 906
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 909
    :cond_0
    return-void
.end method
