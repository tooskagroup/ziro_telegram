.class Lorg/telegram/ui/ProfileActivity$18$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$18;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$18;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$18;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1140
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_3

    .line 1141
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 1142
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1143
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 1144
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # setter for: Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z
    invoke-static {v3, v6}, Lorg/telegram/ui/ProfileActivity;->access$4502(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 1146
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    if-nez v3, :cond_1

    .line 1147
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1148
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 1149
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1150
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    .line 1152
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1153
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 1154
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1155
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->inviter_id:I

    .line 1156
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    .line 1157
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    .line 1158
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1159
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    .end local v0    # "a":I
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)V

    .line 1165
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # setter for: Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z
    invoke-static {v3, v7}, Lorg/telegram/ui/ProfileActivity;->access$4702(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 1166
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)V

    .line 1167
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1168
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1170
    :cond_4
    return-void
.end method
