.class Lorg/telegram/ui/PhotoViewer$16;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1595
    if-eqz p1, :cond_5

    .line 1596
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1597
    .local v1, "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x24

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    if-le v2, v6, :cond_2

    const/16 v2, 0x12

    :goto_0
    add-int v0, v4, v2

    .line 1598
    .local v0, "height":I
    int-to-float v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1599
    int-to-float v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1600
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1603
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1604
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1607
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1608
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 1662
    .end local v0    # "height":I
    .end local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v2, v3

    .line 1597
    goto :goto_0

    .line 1611
    .restart local v0    # "height":I
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    const/16 v4, 0x2710

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1613
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1614
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1615
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1616
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1619
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$16$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$16$1;-><init>(Lorg/telegram/ui/PhotoViewer$16;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1627
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1628
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 1630
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 1631
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_1

    .line 1634
    .end local v0    # "height":I
    .end local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1635
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1636
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1639
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_1

    .line 1642
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1643
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1644
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1647
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$16$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$16$2;-><init>(Lorg/telegram/ui/PhotoViewer$16;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1656
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1657
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 1659
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1616
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 0
    .param p1, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .prologue
    .line 1672
    return-void
.end method

.method public onContextSearch(Z)V
    .locals 0
    .param p1, "searching"    # Z

    .prologue
    .line 1667
    return-void
.end method
