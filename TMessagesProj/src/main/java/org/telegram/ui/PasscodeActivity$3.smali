.class Lorg/telegram/ui/PasscodeActivity$3;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processNext()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$100(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$3;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processDone()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 214
    return-void
.end method
