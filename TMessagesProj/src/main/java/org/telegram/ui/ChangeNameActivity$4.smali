.class Lorg/telegram/ui/ChangeNameActivity$4;
.super Ljava/lang/Object;
.source "ChangeNameActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ChangeNameActivity$4;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 130
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$4;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    # getter for: Lorg/telegram/ui/ChangeNameActivity;->doneButton:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->access$300(Lorg/telegram/ui/ChangeNameActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
