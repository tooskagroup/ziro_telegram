.class public Lorg/telegram/ui/Cells/StickerCell;
.super Landroid/widget/FrameLayout;
.source "StickerCell.java"


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUpdateTime:J

.field private scale:F

.field private scaled:Z

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/StickerCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerCell;->time:J

    .line 37
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 39
    iget-object v7, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x42

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v4, 0x40a00000    # 5.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/StickerCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v10, 0x43c80000    # 400.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 96
    .local v4, "result":Z
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v5, :cond_3

    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-nez v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_3

    .line 97
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 99
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    .line 100
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_4

    .line 101
    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    long-to-float v6, v0

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    .line 102
    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    .line 103
    iput v8, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    .line 111
    :cond_2
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 112
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 113
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->invalidate()V

    .line 116
    .end local v0    # "dt":J
    .end local v2    # "newTime":J
    :cond_3
    return v4

    .line 106
    .restart local v0    # "dt":J
    .restart local v2    # "newTime":J
    :cond_4
    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    long-to-float v6, v0

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    .line 107
    iget v5, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2

    .line 108
    iput v9, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    goto :goto_0
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 44
    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 45
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setPressed(Z)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 54
    return-void
.end method

.method public setScaled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->invalidate()V

    .line 87
    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "side"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "webp"

    invoke-virtual {v0, v1, v6, v2, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 62
    const v0, 0x7f020279

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    .line 63
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v0, v3, v3, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 77
    :cond_2
    return-void

    .line 64
    :cond_3
    if-nez p2, :cond_4

    .line 65
    const v0, 0x7f020278

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {p0, v3, v3, v3, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0

    .line 67
    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 68
    const v0, 0x7f02027a

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    .line 69
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v3, v3, v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0

    .line 70
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 71
    const v0, 0x7f020276

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    .line 72
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0
.end method

.method public showingBitmap()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
