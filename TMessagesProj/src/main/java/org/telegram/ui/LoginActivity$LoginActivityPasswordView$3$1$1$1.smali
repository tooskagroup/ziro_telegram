.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 1905
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1908
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1909
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 1910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1911
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "phoneFormated"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->requestPhone:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5100(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string/jumbo v1, "phoneHash"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneHash:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneCode:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1918
    .end local v0    # "params":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1916
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
