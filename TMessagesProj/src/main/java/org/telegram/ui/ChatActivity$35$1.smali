.class Lorg/telegram/ui/ChatActivity$35$1;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$35;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$35;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$35;)V
    .locals 0

    .prologue
    .line 2476
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2486
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2489
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2479
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35$1;->this$1:Lorg/telegram/ui/ChatActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2482
    :cond_0
    return-void
.end method
