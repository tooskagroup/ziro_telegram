.class Lorg/telegram/ui/PrivacyUsersActivity$4$1;
.super Ljava/lang/Object;
.source "PrivacyUsersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity$4;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->selectedUserId:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$500(Lorg/telegram/ui/PrivacyUsersActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->listViewAdapter:Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$300(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->delegate:Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$400(Lorg/telegram/ui/PrivacyUsersActivity;)Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$4$1;->this$1:Lorg/telegram/ui/PrivacyUsersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PrivacyUsersActivity$4;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;->didUpdatedUserList(Ljava/util/ArrayList;Z)V

    .line 195
    :cond_0
    return-void
.end method
