.class Lorg/telegram/messenger/SecretChatHelper$14$3;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14;)V
    .locals 0

    .prologue
    .line 1852
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1855
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z
    invoke-static {v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->access$302(Lorg/telegram/messenger/SecretChatHelper;Z)Z

    .line 1856
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1858
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$14$3;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
