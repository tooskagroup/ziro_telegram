.class Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$1;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 1
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    .line 463
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    .line 464
    return-void
.end method
