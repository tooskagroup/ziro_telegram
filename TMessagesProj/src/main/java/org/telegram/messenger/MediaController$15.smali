.class Lorg/telegram/messenger/MediaController$15;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .prologue
    .line 2334
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$15;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$15;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x1

    .line 2337
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$15;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4800(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$15;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4800(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2338
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$15;->this$0:Lorg/telegram/messenger/MediaController;

    # invokes: Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$4900(Lorg/telegram/messenger/MediaController;Z)V

    .line 2342
    :goto_0
    return-void

    .line 2340
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$15;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$15;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$15;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
