.class Lorg/telegram/messenger/MessagesController$50$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$50;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$50;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$50;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 2523
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$50$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 2526
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$50;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$4100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$50;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2527
    .local v8, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v8, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 2531
    .local v1, "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$50$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_2

    .line 2532
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 2533
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2534
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2537
    .end local v7    # "a":I
    :cond_2
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$50$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    .line 2538
    .local v9, "media":Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v0, :cond_3

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-eqz v0, :cond_5

    .line 2539
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "a":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 2540
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2541
    if-nez v7, :cond_4

    .line 2542
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2544
    :cond_4
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2547
    .end local v7    # "a":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$50;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    .end local v9    # "media":Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;
    :cond_6
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2551
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$50;->val$dialog_id:J

    const/4 v4, -0x2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    .line 2552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$50$1;->this$1:Lorg/telegram/messenger/MessagesController$50;

    iget-wide v10, v4, Lorg/telegram/messenger/MessagesController$50;->val$dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
