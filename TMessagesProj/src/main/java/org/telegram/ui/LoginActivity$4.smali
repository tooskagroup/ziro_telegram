.class Lorg/telegram/ui/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field final synthetic val$newView:Lorg/telegram/ui/Components/SlideView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/SlideView;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$4;->this$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$4;->val$newView:Lorg/telegram/ui/Components/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 432
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 428
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$4;->val$newView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 424
    return-void
.end method
