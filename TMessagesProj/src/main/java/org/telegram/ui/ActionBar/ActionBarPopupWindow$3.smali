.class Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;
.super Ljava/lang/Object;
.source "ActionBarPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 420
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$502(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    # invokes: Landroid/widget/PopupWindow;->dismiss()V
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$601(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->unregisterListener()V
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 415
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 425
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 403
    return-void
.end method
