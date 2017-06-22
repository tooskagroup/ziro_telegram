.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field private final mAnimationType:I

.field private mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

.field final mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2328
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2321
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2323
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2329
    iput p4, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2330
    iput p3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2331
    iput-object p2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 2332
    iput p5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2333
    iput p6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2334
    iput p7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2335
    iput p8, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2336
    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2337
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2344
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    iget-object v1, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->setTarget(Landroid/view/View;)V

    .line 2345
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/ValueAnimatorCompat;->addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 2346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2347
    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2295
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2295
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->cancel()V

    .line 2360
    return-void
.end method

.method public onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2398
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2399
    return-void
.end method

.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    const/4 v1, 0x1

    .line 2390
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v0, :cond_0

    .line 2391
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2393
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2394
    return-void
.end method

.method public onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2404
    return-void
.end method

.method public onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2386
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 2350
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/animation/ValueAnimatorCompat;->setDuration(J)V

    .line 2351
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 2363
    iput p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2364
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2354
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2355
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->start()V

    .line 2356
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 2371
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2372
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2376
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2377
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2381
    :goto_1
    return-void

    .line 2374
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2379
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
