.class Lorg/telegram/ui/GroupCreateFinalActivity$4;
.super Ljava/lang/Object;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$4;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$4;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$900(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$4;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$4;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$4;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 308
    return-void

    :cond_0
    move-object v0, v1

    .line 306
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 297
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 302
    return-void
.end method
