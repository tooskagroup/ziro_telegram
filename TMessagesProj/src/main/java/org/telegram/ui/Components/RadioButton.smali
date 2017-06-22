.class public Lorg/telegram/ui/Components/RadioButton;
.super Landroid/view/View;
.source "RadioButton.java"


# static fields
.field private static checkedPaint:Landroid/graphics/Paint;

.field private static eraser:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkedColor:I

.field private color:I

.field private isChecked:Z

.field private progress:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, -0x2a1709

    const/4 v3, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    .line 41
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    .line 45
    sget-object v1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    .line 47
    sget-object v1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    sget-object v1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    .line 51
    sget-object v1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 56
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private animateToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 95
    const-string/jumbo v1, "progress"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    .line 110
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    .line 138
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v12, 0x3f000000    # 0.5f

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_4

    .line 146
    sget-object v11, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    sget-object v11, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v12, 0x3f000000    # 0.5f

    div-float v4, v11, v12

    .line 161
    .local v4, "circleProgress":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v4

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v12, v13

    sub-float v10, v11, v12

    .line 164
    .local v10, "rad":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sget-object v14, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v10, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v12, 0x3f000000    # 0.5f

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    sget-object v15, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v4

    mul-float/2addr v14, v15

    sget-object v15, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 174
    .end local v10    # "rad":F
    :cond_3
    return-void

    .line 139
    .end local v4    # "circleProgress":F
    :catch_0
    move-exception v5

    .line 140
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v13, 0x3f000000    # 0.5f

    div-float/2addr v12, v13

    sub-float v4, v11, v12

    .line 151
    .restart local v4    # "circleProgress":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 152
    .local v8, "r1":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 153
    .local v9, "rD":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 154
    .local v6, "g1":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    sub-int/2addr v11, v6

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 155
    .local v7, "gD":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 156
    .local v1, "b1":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    sub-int/2addr v11, v1

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    float-to-int v2, v11

    .line 157
    .local v2, "bD":I
    add-int v11, v8, v9

    add-int v12, v6, v7

    add-int v13, v1, v2

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 158
    .local v3, "c":I
    sget-object v11, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    sget-object v11, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 169
    .end local v1    # "b1":I
    .end local v2    # "bD":I
    .end local v3    # "c":I
    .end local v6    # "g1":I
    .end local v7    # "gD":I
    .end local v8    # "r1":I
    .end local v9    # "rD":I
    .restart local v10    # "rad":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RadioButton;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v14, v14, 0x4

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/RadioButton;->size:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    sget-object v15, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    if-ne p1, v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    .line 118
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RadioButton;->animateToCheckedState(Z)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadioButton;->cancelCheckAnimator()V

    .line 122
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RadioButton;->setProgress(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setColor(II)V
    .locals 0
    .param p1, "color1"    # I
    .param p2, "color2"    # I

    .prologue
    .line 83
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    .line 84
    iput p2, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    .line 86
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    if-ne v0, p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    goto :goto_0
.end method
