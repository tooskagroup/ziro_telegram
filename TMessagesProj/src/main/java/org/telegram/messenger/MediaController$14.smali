.class Lorg/telegram/messenger/MediaController$14;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


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
    .line 2305
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 2
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    const/4 v1, 0x1

    .line 2308
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 2309
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 2314
    return-void
.end method
