.class Lorg/telegram/messenger/MediaController$16;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z
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
    .line 2399
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2403
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2404
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    # setter for: Lorg/telegram/messenger/MediaController;->lastPlayPcm:J
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MediaController;->access$2702(Lorg/telegram/messenger/MediaController;J)J

    .line 2405
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    # invokes: Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$4600(Lorg/telegram/messenger/MediaController;F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2410
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2411
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2412
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2413
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2414
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/MediaController;->decodingFinished:Z
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$3102(Lorg/telegram/messenger/MediaController;Z)Z

    .line 2415
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    # invokes: Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)V

    .line 2416
    return-void

    .line 2407
    :catch_0
    move-exception v0

    .line 2408
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2413
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
