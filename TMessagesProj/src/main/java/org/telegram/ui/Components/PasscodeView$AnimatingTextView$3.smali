.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseLastCharacter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$302(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 306
    :cond_0
    return-void
.end method
