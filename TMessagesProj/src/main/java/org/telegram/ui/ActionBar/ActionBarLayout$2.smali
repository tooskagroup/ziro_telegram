.class Lorg/telegram/ui/ActionBar/ActionBarLayout$2;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$first:Z

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 595
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v6, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$502(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 599
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$first:Z

    if-eqz v3, :cond_1

    .line 600
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J
    invoke-static {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$602(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    .line 602
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v4, v6, v8

    .line 603
    .local v4, "newTime":J
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 604
    .local v0, "dt":J
    const-wide/16 v6, 0x12

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 605
    const-wide/16 v0, 0x12

    .line 607
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$702(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J

    .line 608
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    long-to-float v6, v0

    const/high16 v7, 0x43160000    # 150.0f

    div-float/2addr v6, v7

    # += operator for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$816(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    .line 609
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-lez v3, :cond_3

    .line 610
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F

    .line 612
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 613
    .local v2, "interpolated":F
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    if-eqz v3, :cond_4

    .line 614
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 615
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v10, v2

    mul-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 620
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F

    move-result v3

    cmpg-float v3, v3, v10

    if-gez v3, :cond_5

    .line 621
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$open:Z

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V
    invoke-static {v3, v6, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1000(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V

    goto/16 :goto_0

    .line 617
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v3

    sub-float v6, v10, v2

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 618
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    goto :goto_1

    .line 623
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V
    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1100(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    goto/16 :goto_0
.end method
