.class Lorg/telegram/messenger/SendMessagesHelper$2$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

.field final synthetic val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$2;Lorg/telegram/tgnet/TLRPC$TL_photo;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v4, 0x0

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 424
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->val$photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    invoke-static {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 430
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 438
    .end local v1    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :goto_0
    return-void

    .line 432
    :cond_0
    const-string/jumbo v0, "tmessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t load image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 434
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v4, 0x2

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 435
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$2$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$2;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$2;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0
.end method
