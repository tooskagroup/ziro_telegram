.class Lorg/telegram/ui/Components/ChatActivityEnterView$14;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->showTopView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$openKeyboard:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$openKeyboard:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1190
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->val$openKeyboard:Z

    if-eqz v0, :cond_1

    .line 1179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 1181
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1183
    :cond_2
    return-void
.end method
