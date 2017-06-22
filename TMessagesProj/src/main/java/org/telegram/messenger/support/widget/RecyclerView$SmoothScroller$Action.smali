.class public Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 9790
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9791
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 9799
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9800
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 9809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9775
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9779
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9783
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9810
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9811
    iput p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9812
    iput p3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9813
    iput-object p4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9814
    return-void
.end method

.method static synthetic access$6100(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 9765
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 9840
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 9841
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9842
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9843
    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$6200(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 9844
    iput-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9869
    .end local v0    # "position":I
    :goto_0
    return-void

    .line 9847
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v1, :cond_4

    .line 9848
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 9849
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 9850
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 9851
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 9858
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9859
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 9862
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9865
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_0

    .line 9853
    :cond_2
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 9856
    :cond_3
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 9867
    :cond_4
    iput v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9872
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 9873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9875
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 9876
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9878
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 9899
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 9881
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 9890
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 9908
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .prologue
    .line 9836
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 9832
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9833
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 9903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9904
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9905
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 9885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9886
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9887
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 9894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9895
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9896
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9919
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9920
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9931
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9932
    iput p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9933
    iput p3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9934
    iput-object p4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9936
    return-void
.end method
