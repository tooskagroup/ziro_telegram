.class Lorg/telegram/ui/TwoStepVerificationActivity$10$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v7, 0x7f07039f

    const v6, 0x7f07009a

    const/4 v9, 0x0

    .line 734
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 735
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v4, :cond_2

    .line 736
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-boolean v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->val$clear:Z

    if-eqz v4, :cond_1

    .line 737
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 738
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    new-array v5, v9, [B

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    .line 739
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->loadPasswordInfo(Z)V
    invoke-static {v4, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 740
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 745
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$10$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$10$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$10$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    const-string/jumbo v4, "YourPasswordSuccessText"

    const v5, 0x7f07052c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 754
    const-string/jumbo v4, "YourPasswordSuccess"

    const v5, 0x7f07052b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 755
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 756
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 758
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 761
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v4, :cond_0

    .line 762
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_UNCONFIRMED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$10$1$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$10$1$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$10$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    const-string/jumbo v4, "YourEmailAlmostThereText"

    const v5, 0x7f070524

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 772
    const-string/jumbo v4, "YourEmailAlmostThere"

    const v5, 0x7f070523

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 773
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 774
    .restart local v1    # "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 776
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 779
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 780
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PasswordEmailInvalid"

    const v7, 0x7f0703c9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 782
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 784
    .local v2, "time":I
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_5

    .line 785
    const-string/jumbo v4, "Seconds"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWaitTime"

    const v7, 0x7f0701fc

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "Minutes"

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 791
    .end local v2    # "time":I
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$10;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
