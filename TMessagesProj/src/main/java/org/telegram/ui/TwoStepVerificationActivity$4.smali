.class Lorg/telegram/ui/TwoStepVerificationActivity$4;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f070421

    .line 279
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$100(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->needShowProgress()V
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$300(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 282
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;-><init>()V

    .line 283
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationActivity$4$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$4$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$4;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 349
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v3, "RestorePasswordNoEmailTitle"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RestorePasswordNoEmailText"

    const v5, 0x7f070420

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$500(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 333
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v3, "RestorePasswordNoEmailTitle"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RestoreEmailTroubleText"

    const v5, 0x7f07041f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "YourEmailSkipWarningText"

    const v3, 0x7f070528

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    const-string/jumbo v2, "YourEmailSkipWarning"

    const v3, 0x7f070527

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    const-string/jumbo v2, "YourEmailSkip"

    const v3, 0x7f070526

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$4$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
