.class Lorg/telegram/messenger/MusicBrowserService$1$1;
.super Ljava/lang/Object;
.source "MusicBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MusicBrowserService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MusicBrowserService$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MusicBrowserService$1;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 229
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v7, 0x1

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->chatsLoaded:Z
    invoke-static {v6, v7}, Lorg/telegram/messenger/MusicBrowserService;->access$702(Lorg/telegram/messenger/MusicBrowserService;Z)Z

    .line 230
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->loadingChats:Z
    invoke-static {v6, v9}, Lorg/telegram/messenger/MusicBrowserService;->access$802(Lorg/telegram/messenger/MusicBrowserService;Z)Z

    .line 231
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v7, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v7, Lorg/telegram/messenger/MusicBrowserService$1;->val$parentMediaId:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v8, v8, Lorg/telegram/messenger/MusicBrowserService$1;->val$result:Landroid/service/media/MediaBrowserService$Result;

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->loadChildrenImpl(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/MusicBrowserService;->access$900(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 232
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->dialogs:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$200(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # setter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v7, v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1002(Lorg/telegram/messenger/MusicBrowserService;I)I

    .line 235
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicObjects:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$300(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v7, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v7}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 237
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->musicQueues:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$400(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v7, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v7}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 238
    .local v1, "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 239
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 240
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v6

    if-lez v6, :cond_3

    .line 241
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->users:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$500(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v7, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v7}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 242
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_2

    .line 243
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 255
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 256
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 257
    .local v2, "builder":Landroid/media/MediaMetadata$Builder;
    const-string/jumbo v6, "android.media.metadata.DURATION"

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 258
    const-string/jumbo v6, "android.media.metadata.ARTIST"

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 259
    const-string/jumbo v6, "android.media.metadata.TITLE"

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 260
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 263
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .end local v2    # "builder":Landroid/media/MediaMetadata$Builder;
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v7, 0x0

    # invokes: Lorg/telegram/messenger/MusicBrowserService;->updatePlaybackState(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lorg/telegram/messenger/MusicBrowserService;->access$1200(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V

    .line 264
    return-void

    .line 245
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v1    # "arrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    const-string/jumbo v7, "DELETED USER"

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->chats:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$600(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v7, v7, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->lastSelectedDialog:I
    invoke-static {v7}, Lorg/telegram/messenger/MusicBrowserService;->access$1000(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 249
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_4

    .line 250
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/MusicBrowserService$1$1;->this$1:Lorg/telegram/messenger/MusicBrowserService$1;

    iget-object v6, v6, Lorg/telegram/messenger/MusicBrowserService$1;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    # getter for: Lorg/telegram/messenger/MusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;
    invoke-static {v6}, Lorg/telegram/messenger/MusicBrowserService;->access$1100(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object v6

    const-string/jumbo v7, "DELETED CHAT"

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
