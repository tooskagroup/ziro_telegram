.class Lorg/telegram/messenger/MediaController$12$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$12;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$12;)V
    .locals 0

    .prologue
    .line 1971
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1974
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->isPaused:Z
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1975
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x3

    # setter for: Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2502(Lorg/telegram/messenger/MediaController;I)I

    .line 1976
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget v2, v2, Lorg/telegram/messenger/MediaController$12;->val$progress:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    # setter for: Lorg/telegram/messenger/MediaController;->lastPlayPcm:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$2702(Lorg/telegram/messenger/MediaController;J)J

    .line 1977
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 1980
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x42400000    # 48.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget v2, v2, Lorg/telegram/messenger/MediaController$12;->val$progress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2602(Lorg/telegram/messenger/MediaController;I)I

    .line 1981
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$12$1;->this$1:Lorg/telegram/messenger/MediaController$12;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$12;->this$0:Lorg/telegram/messenger/MediaController;

    # invokes: Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)V

    .line 1983
    :cond_1
    return-void
.end method
