.class Lorg/telegram/messenger/ImageLoader$5;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 1473
    const/4 v4, 0x0

    .line 1474
    .local v4, "start":I
    const/4 v2, 0x2

    .line 1475
    .local v2, "count":I
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    if-ne v5, v6, :cond_3

    .line 1476
    const/4 v2, 0x1

    .line 1480
    :cond_0
    :goto_0
    move v1, v4

    .local v1, "a":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1481
    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v1, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v0

    .line 1482
    .local v0, "TAG":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 1483
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    # invokes: Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(Ljava/lang/Integer;)V
    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->access$2900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Integer;)V

    .line 1485
    :cond_1
    if-eqz v0, :cond_2

    .line 1486
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1700(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1487
    .local v3, "ei":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-eqz v3, :cond_2

    .line 1488
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$5;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1480
    .end local v3    # "ei":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1477
    .end local v0    # "TAG":Ljava/lang/Integer;
    .end local v1    # "a":I
    :cond_3
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$5;->val$type:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 1478
    const/4 v4, 0x1

    goto :goto_0

    .line 1481
    .restart local v1    # "a":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1492
    :cond_5
    return-void
.end method
