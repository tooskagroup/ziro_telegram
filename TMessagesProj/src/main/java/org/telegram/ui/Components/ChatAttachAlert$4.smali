.class Lorg/telegram/ui/Components/ChatAttachAlert$4;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 431
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 439
    sub-int v4, p4, p2

    .line 440
    .local v4, "width":I
    sub-int v2, p5, p3

    .line 441
    .local v2, "height":I
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 442
    .local v3, "t":I
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v8, v3, v4, v9}, Lorg/telegram/ui/Components/RecyclerListView;->layout(IIII)V

    .line 443
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v8, v3, v4, v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->layout(IIII)V

    .line 444
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x42c00000    # 96.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;
    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v4, v10}, Landroid/view/View;->layout(IIII)V

    .line 445
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v2, v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v4, v10

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v11, v2, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 447
    const/high16 v7, 0x43b40000    # 360.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v1, v7, 0x3

    .line 448
    .local v1, "diff":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v7, 0x8

    if-ge v0, v7, :cond_0

    .line 449
    div-int/lit8 v7, v0, 0x4

    mul-int/lit8 v7, v7, 0x5f

    add-int/lit8 v7, v7, 0x69

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 450
    .local v6, "y":I
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    rem-int/lit8 v8, v0, 0x4

    const/high16 v9, 0x42aa0000    # 85.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    mul-int/2addr v8, v9

    add-int v5, v7, v8

    .line 451
    .local v5, "x":I
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;

    move-result-object v7

    aget-object v7, v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 434
    const/high16 v0, 0x43930000    # 294.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 435
    return-void
.end method
