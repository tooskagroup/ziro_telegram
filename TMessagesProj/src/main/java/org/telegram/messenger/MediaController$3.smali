.class Lorg/telegram/messenger/MediaController$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;-><init>()V
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
    .line 632
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$3;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$3;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 636
    return-void
.end method
