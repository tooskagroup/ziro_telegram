.class Lorg/telegram/ui/PasscodeActivity$2;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 192
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$2;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$2;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$2;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processNext()V
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$100(Lorg/telegram/ui/PasscodeActivity;)V

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$2;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$2;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->processDone()V
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$200(Lorg/telegram/ui/PasscodeActivity;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
