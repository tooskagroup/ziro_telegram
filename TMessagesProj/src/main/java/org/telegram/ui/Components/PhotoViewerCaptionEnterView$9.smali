.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 429
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClearEmojiRecent()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 8
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 433
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 434
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 435
    const/4 v1, 0x0

    .line 438
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    .line 439
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 440
    .local v3, "localCharSequence":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v1, v4

    .line 442
    .local v2, "j":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    .line 448
    .end local v2    # "j":I
    .end local v3    # "localCharSequence":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    throw v4
.end method

.method public onGifSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0
    .param p1, "gif"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 462
    return-void
.end method

.method public onGifTab(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 467
    return-void
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 452
    return-void
.end method

.method public onStickersSettingsClick()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 472
    return-void
.end method
