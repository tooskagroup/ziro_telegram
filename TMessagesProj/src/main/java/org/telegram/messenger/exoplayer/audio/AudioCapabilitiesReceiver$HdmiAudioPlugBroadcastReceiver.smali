.class final Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    .line 95
    .local v0, "newAudioCapabilities":Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;

    # getter for: Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->access$100(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;)Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;)V

    .line 100
    .end local v0    # "newAudioCapabilities":Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;
    :cond_0
    return-void
.end method
