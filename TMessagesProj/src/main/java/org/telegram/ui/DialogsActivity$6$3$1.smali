.class Lorg/telegram/ui/DialogsActivity$6$3$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$6$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$6$3;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6$3;I)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 782
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->val$which:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 783
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6$3;->val$isChat:Z

    if-eqz v1, :cond_3

    .line 784
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 785
    .local v0, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 794
    .end local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity$6$3;->val$isBot:Z

    if-eqz v1, :cond_0

    .line 795
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->blockUser(I)V

    .line 797
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 803
    :cond_1
    :goto_1
    return-void

    .line 788
    .restart local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v2, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 789
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_0

    .line 792
    .end local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto/16 :goto_0

    .line 800
    :cond_4
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->val$which:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 801
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_1
.end method
