.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;)V
    .locals 0

    .prologue
    .line 1896
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1899
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1900
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;-><init>()V

    .line 1901
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;
    const-string/jumbo v1, "Forgot password"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_deleteAccount;->reason:Ljava/lang/String;

    .line 1902
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1922
    return-void
.end method
