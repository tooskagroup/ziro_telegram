.class final Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MusicBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MusicBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MusicBrowserService;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/MusicBrowserService;
    .param p2, "x1"    # Lorg/telegram/messenger/MusicBrowserService$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;-><init>(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePauseRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1400(Lorg/telegram/messenger/MusicBrowserService;)V

    .line 427
    return-void
.end method

.method public onPlay()V
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 364
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v0, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 387
    const-string/jumbo v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "args":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 393
    .local v4, "did":I
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 394
    .local v6, "id":I
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 395
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$400(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 396
    .local v2, "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz v1, :cond_0

    if-ltz v6, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 399
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v8, v4}, Lorg/telegram/messenger/MusicBrowserService;->access$1002(Lorg/telegram/messenger/MusicBrowserService;I)I

    .line 400
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "Notifications"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "auto_lastSelectedDialog"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v8, v10}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    .line 402
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 403
    if-lez v4, :cond_3

    .line 404
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 405
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_2

    .line 406
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v8

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .end local v4    # "did":I
    .end local v6    # "id":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1300(Lorg/telegram/messenger/MusicBrowserService;)V

    goto/16 :goto_0

    .line 408
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v2    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .restart local v4    # "did":I
    .restart local v6    # "id":I
    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v8

    const-string/jumbo v9, "DELETED USER"

    invoke-virtual {v8, v9}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 418
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .end local v4    # "did":I
    .end local v6    # "id":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v5

    .line 419
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 411
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v2    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .restart local v4    # "did":I
    .restart local v6    # "id":I
    :cond_3
    :try_start_2
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v8

    neg-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 412
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_4

    .line 413
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v8

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 415
    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v8}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v8

    const-string/jumbo v9, "DELETED CHAT"

    invoke-virtual {v8, v9}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 450
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 451
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 452
    .local v2, "did":I
    if-lez v2, :cond_6

    .line 453
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 454
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :cond_3

    .line 450
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    .restart local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 462
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v4

    neg-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 463
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    .line 466
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onSeekTo(J)V
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 379
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 380
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 383
    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playNextMessage()V

    .line 437
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playPreviousMessage()V

    .line 442
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3
    .param p1, "queueId"    # J

    .prologue
    .line 373
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playMessageAtIndex(I)V

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handlePlayRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->access$1300(Lorg/telegram/messenger/MusicBrowserService;)V

    .line 375
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->handleStopRequest(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->access$1500(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V

    .line 432
    return-void
.end method
