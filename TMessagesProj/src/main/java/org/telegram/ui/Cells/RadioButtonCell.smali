.class public Lorg/telegram/ui/Cells/RadioButtonCell;
.super Landroid/widget/FrameLayout;
.source "RadioButtonCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private needDivider:Z

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x11

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lorg/telegram/ui/Cells/RadioButtonCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/RadioButtonCell;->paint:Landroid/graphics/Paint;

    .line 38
    sget-object v0, Lorg/telegram/ui/Cells/RadioButtonCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object v0, Lorg/telegram/ui/Cells/RadioButtonCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const v1, -0x4c4c4d

    const v2, -0xc85610

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 45
    iget-object v11, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v7

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v3, v9

    :goto_1
    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x12

    :goto_2
    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    move v0, v7

    :goto_3
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v11, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    move v2, v7

    :goto_4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_7

    move v3, v10

    :goto_5
    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    const/16 v5, 0x33

    :goto_6
    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    move v0, v7

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v9, v9, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    :goto_8
    or-int/lit8 v2, v7, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_b

    move v3, v10

    :goto_9
    int-to-float v3, v3

    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    const/16 v10, 0x33

    :cond_1
    int-to-float v5, v10

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    return-void

    :cond_2
    move v2, v8

    .line 45
    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x12

    goto/16 :goto_1

    :cond_4
    move v5, v9

    goto/16 :goto_2

    :cond_5
    move v0, v8

    .line 53
    goto/16 :goto_3

    :cond_6
    move v2, v8

    .line 54
    goto/16 :goto_4

    :cond_7
    const/16 v3, 0x33

    goto/16 :goto_5

    :cond_8
    move v5, v10

    goto/16 :goto_6

    :cond_9
    move v0, v8

    .line 61
    goto :goto_7

    :cond_a
    move v7, v8

    .line 66
    goto :goto_8

    :cond_b
    const/16 v3, 0x33

    goto :goto_9
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioButtonCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioButtonCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioButtonCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioButtonCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioButtonCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/RadioButtonCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 86
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "divider"    # Z

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->needDivider:Z

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 81
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setWillNotDraw(Z)V

    .line 82
    return-void
.end method
