.class Lorg/telegram/messenger/MessagesController$66$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$66;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$66;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$66;)V
    .locals 0

    .prologue
    .line 3920
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$66$2;->this$1:Lorg/telegram/messenger/MessagesController$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3923
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$66$2;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$66;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3925
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$66$2;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$66;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3929
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$66$2;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$66;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3930
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3931
    const-string/jumbo v2, "ErrorOccurred"

    const v3, 0x7f0701e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3932
    const-string/jumbo v2, "OK"

    const v3, 0x7f07039f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3933
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3935
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void

    .line 3926
    :catch_0
    move-exception v1

    .line 3927
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
