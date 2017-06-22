.class public Lorg/telegram/ui/Components/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Switch$Insets;
    }
.end annotation


# static fields
.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private attachedToWindow:Z

.field private mMinFlingVelocity:I

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private thumbPosition:F

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 114
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    .line 119
    :goto_0
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    .line 120
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    .line 122
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 123
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->refreshDrawableState()V

    .line 127
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 128
    return-void

    .line 116
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_2
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    goto :goto_0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 358
    .local v0, "targetPosition":F
    :goto_0
    const-string/jumbo v1, "thumbPosition"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 361
    return-void

    .line 357
    .end local v0    # "targetPosition":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 367
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 330
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 331
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 333
    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 62
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 3

    .prologue
    .line 606
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    .line 607
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    sub-float v0, v1, v2

    .line 611
    .local v0, "position":F
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 609
    .end local v0    # "position":F
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    .restart local v0    # "position":F
    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    .line 615
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 617
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 620
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 621
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 626
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int/2addr v2, v3

    .line 628
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 623
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .restart local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    goto :goto_0

    .line 628
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v2

    .line 246
    .local v2, "thumbOffset":I
    iget-object v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 247
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int v4, v5, v6

    .line 248
    .local v4, "thumbTop":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    add-int/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int v1, v5, v6

    .line 249
    .local v1, "thumbLeft":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int v3, v5, v6

    .line 250
    .local v3, "thumbRight":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int v0, v5, v6

    .line 251
    .local v0, "thumbBottom":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 374
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    .line 375
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 376
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 336
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 340
    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 341
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 343
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 344
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    .line 352
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 353
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 354
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_1
    move v0, v3

    .line 338
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_2
    move v1, v3

    .line 344
    goto :goto_1

    :cond_3
    cmpl-float v4, v2, v6

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_1

    .line 346
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 349
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 490
    .local v5, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    .line 491
    .local v7, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 492
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    .line 493
    .local v8, "switchRight":I
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 495
    .local v6, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v18

    add-int v10, v7, v18

    .line 498
    .local v10, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 499
    sget-object v11, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 504
    .local v11, "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 507
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v10, v10, v18

    .line 509
    move v15, v7

    .line 510
    .local v15, "trackLeft":I
    move/from16 v17, v9

    .line 511
    .local v17, "trackTop":I
    move/from16 v16, v8

    .line 512
    .local v16, "trackRight":I
    move v14, v6

    .line 513
    .local v14, "trackBottom":I
    sget-object v18, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_3

    .line 514
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 515
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v15, v15, v18

    .line 517
    :cond_0
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 518
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v17, v17, v18

    .line 520
    :cond_1
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 521
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v16, v16, v18

    .line 523
    :cond_2
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 524
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v14, v14, v18

    .line 527
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    .end local v14    # "trackBottom":I
    .end local v15    # "trackLeft":I
    .end local v16    # "trackRight":I
    .end local v17    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 533
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v12, v10, v18

    .line 534
    .local v12, "thumbLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    move/from16 v18, v0

    add-int v18, v18, v10

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v13, v18, v19

    .line 535
    .local v13, "thumbRight":I
    sget v18, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v19, 0x3fc00000    # 1.5f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_7

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 536
    .local v4, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    add-int v19, v9, v4

    add-int v20, v6, v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 539
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 540
    invoke-virtual {v3, v12, v9, v13, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 544
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v4    # "offset":I
    .end local v12    # "thumbLeft":I
    .end local v13    # "thumbRight":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 545
    return-void

    .line 501
    .end local v11    # "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    :cond_6
    sget-object v11, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .restart local v11    # "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    goto/16 :goto_0

    .line 535
    .restart local v12    # "thumbLeft":I
    .restart local v13    # "thumbRight":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 661
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 670
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 645
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getDrawableState()[I

    move-result-object v0

    .line 647
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 651
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 655
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 656
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 590
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_0

    .line 591
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 593
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 598
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 599
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbPosition()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    return v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 679
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 685
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 689
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 693
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    .line 391
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 392
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 397
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    .line 398
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 399
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 551
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 552
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 553
    .local v6, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 554
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 559
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 560
    .local v4, "switchTop":I
    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 562
    .local v3, "switchBottom":I
    iget-object v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 563
    .local v5, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 564
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    .line 565
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 566
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 567
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 568
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 571
    .local v2, "saveCount":I
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 572
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 573
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 579
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v2    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 581
    .restart local v2    # "saveCount":I
    if-eqz v5, :cond_1

    .line 582
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 585
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 586
    return-void

    .line 556
    .end local v2    # "saveCount":I
    .end local v3    # "switchBottom":I
    .end local v4    # "switchTop":I
    .end local v5    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 575
    .restart local v3    # "switchBottom":I
    .restart local v4    # "switchTop":I
    .restart local v5    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 433
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 435
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 438
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 439
    iget-object v7, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 440
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 441
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 446
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 447
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 448
    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 453
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    .line 454
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 455
    .local v4, "switchLeft":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .line 463
    .local v5, "switchRight":I
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v6

    .line 467
    .local v6, "switchTop":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 481
    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    .line 482
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 483
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 484
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    .line 485
    return-void

    .line 443
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 457
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 458
    .restart local v5    # "switchRight":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    .line 471
    :sswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 472
    .restart local v6    # "switchTop":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 473
    .restart local v3    # "switchBottom":I
    goto :goto_2

    .line 476
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 477
    .restart local v3    # "switchBottom":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_2

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 198
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 201
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 202
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 203
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v10, v11

    .line 204
    .local v8, "thumbWidth":I
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 211
    .local v7, "thumbHeight":I
    :goto_0
    iput v8, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    .line 214
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 215
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 216
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 222
    .local v9, "trackHeight":I
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 223
    .local v3, "paddingLeft":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 224
    .local v4, "paddingRight":I
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 225
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 226
    .local v0, "inset":Lorg/telegram/ui/Components/Switch$Insets;
    iget v10, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 227
    iget v10, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 230
    .end local v0    # "inset":Lorg/telegram/ui/Components/Switch$Insets;
    :cond_0
    iget v10, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    iget v11, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    add-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 231
    .local v6, "switchWidth":I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 232
    .local v5, "switchHeight":I
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    .line 233
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    .line 235
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getMeasuredHeight()I

    move-result v1

    .line 238
    .local v1, "measuredHeight":I
    if-ge v1, v5, :cond_1

    .line 239
    invoke-virtual {p0, v6, v5}, Lorg/telegram/ui/Components/Switch;->setMeasuredDimension(II)V

    .line 241
    :cond_1
    return-void

    .line 206
    .end local v1    # "measuredHeight":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "switchHeight":I
    .end local v6    # "switchWidth":I
    .end local v7    # "thumbHeight":I
    .end local v8    # "thumbWidth":I
    .end local v9    # "trackHeight":I
    :cond_2
    const/4 v8, 0x0

    .line 207
    .restart local v8    # "thumbWidth":I
    const/4 v7, 0x0

    .restart local v7    # "thumbHeight":I
    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 219
    const/4 v9, 0x0

    .restart local v9    # "trackHeight":I
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 256
    iget-object v9, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 258
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 260
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 261
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 262
    .local v6, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    iput v8, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 264
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 265
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    goto :goto_0

    .line 271
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 276
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 277
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 278
    .restart local v6    # "y":F
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 279
    :cond_1
    iput v11, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 281
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 282
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    move v7, v8

    .line 283
    goto :goto_1

    .line 289
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 290
    .restart local v5    # "x":F
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v4

    .line 291
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v3, v5, v9

    .line 293
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_4

    .line 294
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 298
    .local v1, "dPos":F
    :goto_2
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_2

    .line 299
    neg-float v1, v1

    .line 301
    :cond_2
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Lorg/telegram/ui/Components/Switch;->constrain(FFF)F

    move-result v2

    .line 302
    .local v2, "newPos":F
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_3

    .line 303
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 304
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    :cond_3
    move v7, v8

    .line 306
    goto :goto_1

    .line 296
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    cmpl-float v9, v3, v10

    if-lez v9, :cond_5

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_3
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_5
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 314
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    if-ne v7, v11, :cond_6

    .line 315
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 316
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 317
    goto/16 :goto_1

    .line 319
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 320
    iget-object v7, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 403
    return-void
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 409
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result p1

    .line 411
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    if-eqz v3, :cond_2

    .line 412
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateThumbToCheckedState(Z)V

    .line 419
    :goto_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 420
    .local v2, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "theme_setting_section_color"

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getThemeColor()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "color":I
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v3}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v1

    .line 423
    .local v1, "lightColor":I
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_4

    .end local v1    # "lightColor":I
    :goto_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 426
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_5

    .end local v0    # "color":I
    :goto_2
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 429
    :cond_1
    return-void

    .line 414
    .end local v2    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelPositionAnimator()V

    .line 415
    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 424
    .restart local v0    # "color":I
    .restart local v1    # "lightColor":I
    .restart local v2    # "themePreferences":Landroid/content/SharedPreferences;
    :cond_4
    const v1, -0x383839

    goto :goto_1

    .line 427
    .end local v1    # "lightColor":I
    :cond_5
    const v0, -0x121213

    goto :goto_2
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 190
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 140
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 142
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 133
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 176
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 181
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 149
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 151
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 161
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 166
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 385
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
