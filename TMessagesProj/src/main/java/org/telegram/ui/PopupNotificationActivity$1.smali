.class Lorg/telegram/ui/PopupNotificationActivity$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildCount()I

    move-result v4

    .line 218
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getKeyboardHeight()I

    move-result v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-gt v12, v13, :cond_0

    iget-object v12, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v9

    .line 220
    .local v9, "paddingBottom":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_6

    .line 221
    invoke-virtual {p0, v7}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 220
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 218
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 225
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v9    # "paddingBottom":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 228
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 233
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_2

    .line 235
    const/16 v5, 0x33

    .line 238
    :cond_2
    and-int/lit8 v0, v5, 0x7

    .line 239
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 241
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_0

    .line 250
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 253
    .local v2, "childLeft":I
    :goto_3
    sparse-switch v10, :sswitch_data_1

    .line 264
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 266
    .local v3, "childTop":I
    :goto_4
    iget-object v12, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 267
    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getMeasuredHeight()I

    move-result v12

    sub-int v3, v12, v9

    .line 272
    :cond_3
    :goto_5
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 243
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_0
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 244
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 246
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v12, p4, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 247
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 255
    :sswitch_2
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 256
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 258
    .end local v3    # "childTop":I
    :sswitch_3
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 259
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 261
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 262
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 267
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getMeasuredHeight()I

    move-result v3

    goto :goto_5

    .line 268
    :cond_5
    iget-object v12, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v12}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordCircle(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 269
    iget-object v12, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 270
    iget-object v12, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    goto/16 :goto_5

    .line 275
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->notifyHeightChanged()V

    .line 276
    return-void

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 253
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 186
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 187
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 188
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 190
    .local v8, "heightSize":I
    invoke-virtual {p0, v12, v8}, Lorg/telegram/ui/PopupNotificationActivity$1;->setMeasuredDimension(II)V

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getKeyboardHeight()I

    move-result v10

    .line 194
    .local v10, "keyboardSize":I
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-gt v10, v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    sub-int/2addr v8, v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildCount()I

    move-result v6

    .line 199
    .local v6, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_4

    .line 200
    invoke-virtual {p0, v9}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 199
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordCircle(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PopupNotificationActivity$1;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 209
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 212
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method
