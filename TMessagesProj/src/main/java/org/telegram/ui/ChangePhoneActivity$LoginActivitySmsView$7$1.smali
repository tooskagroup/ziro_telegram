.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1209
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    .line 1210
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v0, v3, 0x3c

    .line 1211
    .local v0, "minutes":I
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v4, v0, 0x3c

    sub-int v2, v3, v4

    .line 1212
    .local v2, "seconds":I
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1213
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "CallText"

    const v5, 0x7f0700f0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1218
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v4, v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I
    invoke-static {v4}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v5, v5, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeout:I
    invoke-static {v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v9, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->setProgress(F)V

    .line 1260
    .end local v0    # "minutes":I
    .end local v2    # "seconds":I
    :cond_2
    :goto_1
    return-void

    .line 1214
    .restart local v0    # "minutes":I
    .restart local v2    # "seconds":I
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1215
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "SmsText"

    const v5, 0x7f070492

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1221
    .end local v0    # "minutes":I
    .end local v2    # "seconds":I
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1222
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$ProgressView;->setProgress(F)V

    .line 1224
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1225
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1226
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1228
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v3, v8}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1229
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1230
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    goto :goto_1

    .line 1231
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1232
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 1233
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "Calling"

    const v5, 0x7f0700f1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1235
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1236
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1237
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1238
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;)V

    invoke-virtual {v3, v1, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1

    .line 1251
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1252
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1253
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1254
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v3, v8}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1255
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1256
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    goto/16 :goto_1
.end method
