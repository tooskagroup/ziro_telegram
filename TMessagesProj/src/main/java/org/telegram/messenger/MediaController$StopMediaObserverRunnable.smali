.class final Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StopMediaObserverRunnable"
.end annotation


# instance fields
.field public currentObserverToken:I

.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 1

    .prologue
    .line 518
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p2, "x1"    # Lorg/telegram/messenger/MediaController$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    iget v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->startObserverToken:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 525
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$1600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 527
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$1602(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 534
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :cond_1
    :goto_1
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 538
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
