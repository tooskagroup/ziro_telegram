.class public Lorg/telegram/ui/Cells/EmptyCell;
.super Landroid/widget/FrameLayout;
.source "EmptyCell.java"


# instance fields
.field cellHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "height"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput p2, p0, Lorg/telegram/ui/Cells/EmptyCell;->cellHeight:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Cells/EmptyCell;->cellHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 35
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/telegram/ui/Cells/EmptyCell;->cellHeight:I

    .line 29
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/EmptyCell;->requestLayout()V

    .line 30
    return-void
.end method
