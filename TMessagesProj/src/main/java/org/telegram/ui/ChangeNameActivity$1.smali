.class Lorg/telegram/ui/ChangeNameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeNameActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/ChangeNameActivity$1;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 59
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$1;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeNameActivity;->finishFragment()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$1;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # getter for: Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$1;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # invokes: Lorg/telegram/ui/ChangeNameActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$100(Lorg/telegram/ui/ChangeNameActivity;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$1;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeNameActivity;->finishFragment()V

    goto :goto_0
.end method
