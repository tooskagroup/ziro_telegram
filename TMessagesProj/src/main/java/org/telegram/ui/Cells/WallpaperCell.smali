.class public Lorg/telegram/ui/Cells/WallpaperCell;
.super Landroid/widget/FrameLayout;
.source "WallpaperCell.java"


# instance fields
.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private selectionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x53

    const/16 v2, 0x64

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    const v1, 0x7f0202b9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;I)V
    .locals 11
    .param p1, "wallpaper"    # Lorg/telegram/tgnet/TLRPC$WallPaper;
    .param p2, "selectedBackground"    # I

    .prologue
    const/4 v5, 0x0

    const v8, 0x5a475866

    const/4 v10, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 52
    if-nez p1, :cond_3

    .line 53
    iget-object v5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 54
    iget-object v5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v9, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    if-ne p2, v10, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v6, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    if-eq p2, v10, :cond_0

    const v5, 0xf4241

    if-ne p2, v5, :cond_2

    :cond_0
    move v5, v8

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 84
    :goto_2
    return-void

    :cond_1
    move v5, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/high16 v5, 0x5a000000

    goto :goto_1

    .line 58
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 59
    iget-object v9, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v9, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    iget v10, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    if-ne p2, v10, :cond_4

    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;

    if-eqz v6, :cond_5

    .line 63
    iget-object v6, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, -0x1000000

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->bg_color:I

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    move v6, v7

    .line 60
    goto :goto_3

    .line 66
    :cond_5
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 67
    .local v3, "side":I
    const/4 v4, 0x0

    .line 68
    .local v4, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 69
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 70
    .local v2, "obj":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v2, :cond_7

    .line 68
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 73
    :cond_7
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-lt v6, v7, :cond_a

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 74
    .local v1, "currentSide":I
    :goto_6
    if-eqz v4, :cond_9

    const/16 v6, 0x64

    if-le v3, v6, :cond_8

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_8

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_9

    :cond_8
    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v6, :cond_9

    if-gt v1, v3, :cond_6

    .line 75
    :cond_9
    move-object v4, v2

    goto :goto_5

    .line 73
    .end local v1    # "currentSide":I
    :cond_a
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_6

    .line 78
    .end local v2    # "obj":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    if-eqz v4, :cond_c

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_c

    .line 79
    iget-object v6, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v9, "100_100"

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7, v9, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/BackupImageView;->setBackgroundColor(I)V

    goto/16 :goto_2
.end method
