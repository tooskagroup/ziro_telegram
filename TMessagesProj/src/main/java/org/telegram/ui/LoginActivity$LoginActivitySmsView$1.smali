.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->ignoreOnTextChange:Z
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1145
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1150
    return-void
.end method
