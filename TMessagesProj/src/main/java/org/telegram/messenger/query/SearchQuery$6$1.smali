.class Lorg/telegram/messenger/query/SearchQuery$6$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/SearchQuery$6;

.field final synthetic val$dtFinal:D


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$6;D)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iput-wide p2, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->val$dtFinal:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 339
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 340
    .local v1, "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v3, v3, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    if-gez v3, :cond_0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    neg-int v4, v4

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    neg-int v4, v4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v3, v3, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    if-lez v3, :cond_4

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    if-ne v3, v4, :cond_4

    .line 341
    :cond_1
    move-object v2, v1

    .line 345
    .end local v1    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_2
    if-nez v2, :cond_3

    .line 346
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    .line 347
    .restart local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v3, v3, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    if-lez v3, :cond_5

    .line 348
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 349
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 354
    :goto_1
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_3
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v6, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->val$dtFinal:D

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    int-to-double v8, v3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    .line 357
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$6$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/query/SearchQuery$6$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$6$1;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget-wide v4, v3, Lorg/telegram/messenger/query/SearchQuery$6;->val$did:J

    long-to-int v3, v4

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    # invokes: Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V
    invoke-static {v3, v10, v4, v5}, Lorg/telegram/messenger/query/SearchQuery;->access$300(IID)V

    .line 371
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 372
    return-void

    .line 338
    .restart local v1    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 351
    .end local v1    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 352
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$6$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$6;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$6;->val$lower_id:I

    neg-int v4, v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_1
.end method
