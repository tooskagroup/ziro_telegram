.class Lorg/telegram/ui/Components/ChatAvatarContainer$2;
.super Ljava/lang/Object;
.source "ChatAvatarContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 104
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 105
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 106
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_2

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    const-string/jumbo v4, "dialog_id"

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    :cond_0
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 113
    .local v2, "fragment":Lorg/telegram/ui/ProfileActivity;
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    .line 114
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 123
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    if-eqz v1, :cond_1

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 119
    .restart local v2    # "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 120
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
