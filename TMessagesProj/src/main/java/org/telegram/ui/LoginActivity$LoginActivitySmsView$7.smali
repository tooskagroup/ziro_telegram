.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .prologue
    .line 1444
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1447
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1450
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1451
    .local v0, "currentTime":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v4

    sub-double v2, v0, v4

    .line 1452
    .local v2, "diff":D
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # -= operator for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v4, v2, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3726(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I

    .line 1453
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    .line 1454
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
