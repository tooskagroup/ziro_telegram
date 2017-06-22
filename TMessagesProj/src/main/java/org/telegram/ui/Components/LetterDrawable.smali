.class public Lorg/telegram/ui/Components/LetterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterDrawable.java"


# static fields
.field private static namePaint:Landroid/text/TextPaint;

.field public static paint:Landroid/graphics/Paint;


# instance fields
.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textHeight:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:F

.field private textWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    .line 38
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->namePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/LetterDrawable;->namePaint:Landroid/text/TextPaint;

    .line 41
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->namePaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 42
    sget-object v0, Lorg/telegram/ui/Components/LetterDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 72
    .local v6, "bounds":Landroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 76
    .local v7, "size":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/LetterDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 79
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v7

    iget v2, p0, Lorg/telegram/ui/Components/LetterDrawable;->textWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLeft:F

    sub-float/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    int-to-float v2, v7

    iget v3, p0, Lorg/telegram/ui/Components/LetterDrawable;->textHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 88
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/Components/LetterDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLeft:F

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textWidth:F

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 61
    .restart local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 62
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v1    # "text":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterDrawable;->textLayout:Landroid/text/StaticLayout;

    goto :goto_0
.end method
