.class Lorg/telegram/ui/TwoStepVerificationActivity$11$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$11;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v4, 0x7f07009a

    const/4 v6, 0x1

    .line 830
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 831
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_0

    .line 832
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v3, v3, Lorg/telegram/ui/TwoStepVerificationActivity$11;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPasswordSettings;->current_password_hash:[B

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v2, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    .line 833
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEntered:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1902(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    .line 834
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 835
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    .line 852
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PASSWORD_HASH_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V
    invoke-static {v2, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    goto :goto_0

    .line 839
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 840
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 842
    .local v0, "time":I
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_2

    .line 843
    const-string/jumbo v2, "Seconds"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FloodWaitTime"

    const v5, 0x7f0701fc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "Minutes"

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 849
    .end local v0    # "time":I
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v2, v2, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
