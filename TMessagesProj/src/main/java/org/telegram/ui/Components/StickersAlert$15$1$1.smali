.class Lorg/telegram/ui/Components/StickersAlert$15$1$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$15$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/StickersAlert$15$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$15$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$15$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$15$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$15;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "AddStickersInstalled"

    const v3, 0x7f070078

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    .line 430
    return-void

    .line 420
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "STICKERSETS_TOO_MUCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$15$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$15;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "TooMuchStickersets"

    const v3, 0x7f0704c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$15$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$15$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$15;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert$15;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ErrorOccurred"

    const v3, 0x7f0701e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
