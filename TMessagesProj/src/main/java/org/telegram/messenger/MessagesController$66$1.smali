.class Lorg/telegram/messenger/MessagesController$66$1;
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
    .line 3905
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3908
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$66;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3910
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$66;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3915
    :cond_0
    :goto_0
    return-void

    .line 3911
    :catch_0
    move-exception v0

    .line 3912
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
