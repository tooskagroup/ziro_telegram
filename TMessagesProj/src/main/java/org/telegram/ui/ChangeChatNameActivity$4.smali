.class Lorg/telegram/ui/ChangeChatNameActivity$4;
.super Ljava/lang/Object;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 149
    :cond_0
    return-void
.end method
