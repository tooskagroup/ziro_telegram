.class Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "SharedPhotoVideoCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;Z)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->val$checked:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$002(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 139
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->animator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$002(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 128
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->val$checked:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView$1;->this$1:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setBackgroundColor(I)V

    .line 132
    :cond_0
    return-void
.end method
