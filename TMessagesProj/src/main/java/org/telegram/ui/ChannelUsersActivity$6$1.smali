.class Lorg/telegram/ui/ChannelUsersActivity$6$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_1

    .line 398
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 399
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$602(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 402
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 403
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z
    invoke-static {v2, v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 466
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z
    invoke-static {v2, v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$1102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 470
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 471
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 473
    :cond_3
    return-void

    .line 446
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 447
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
