.class Lorg/telegram/messenger/MediaController$8;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1520
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1521
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v11, 0x3

    if-eq v2, v11, :cond_2

    .line 1522
    :cond_0
    monitor-exit v3

    .line 1575
    :cond_1
    :goto_0
    return-void

    .line 1524
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1525
    const/4 v8, 0x0

    .line 1526
    .local v8, "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1527
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1528
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioBuffer;

    move-object v8, v0

    .line 1529
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1531
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1533
    if-eqz v8, :cond_5

    .line 1534
    const/4 v9, 0x0

    .line 1536
    .local v9, "count":I
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    const/4 v11, 0x0

    iget v12, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    invoke-virtual {v2, v3, v11, v12}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    .line 1540
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # operator++ for: Lorg/telegram/messenger/MediaController;->buffersWrited:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3908(Lorg/telegram/messenger/MediaController;)I

    .line 1542
    if-lez v9, :cond_4

    .line 1543
    iget-wide v4, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->pcmOffset:J

    .line 1544
    .local v4, "pcm":J
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-ne v2, v13, :cond_8

    move v6, v9

    .line 1545
    .local v6, "marker":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->buffersWrited:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)I

    move-result v7

    .line 1546
    .local v7, "finalBuffersWrited":I
    new-instance v2, Lorg/telegram/messenger/MediaController$8$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MediaController$8$1;-><init>(Lorg/telegram/messenger/MediaController$8;JII)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1562
    .end local v4    # "pcm":J
    .end local v6    # "marker":I
    .end local v7    # "finalBuffersWrited":I
    :cond_4
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_5

    .line 1563
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # invokes: Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)V

    .line 1566
    .end local v9    # "count":I
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v8, :cond_7

    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_7

    .line 1567
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # invokes: Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)V

    .line 1570
    :cond_7
    if-eqz v8, :cond_1

    .line 1571
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1572
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1524
    .end local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1531
    .restart local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 1537
    .restart local v9    # "count":I
    :catch_0
    move-exception v10

    .line 1538
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1544
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "pcm":J
    :cond_8
    const/4 v6, -0x1

    goto :goto_2
.end method
