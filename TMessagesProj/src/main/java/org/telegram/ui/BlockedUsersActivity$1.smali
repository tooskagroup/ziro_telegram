.class Lorg/telegram/ui/BlockedUsersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "BlockedUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlockedUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BlockedUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlockedUsersActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 75
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/BlockedUsersActivity;->finishFragment()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-ne p1, v3, :cond_0

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "onlyUsers"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string/jumbo v2, "destroyAfterSelect"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string/jumbo v2, "returnAsResult"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 83
    .local v1, "fragment":Lorg/telegram/ui/ContactsActivity;
    iget-object v2, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 84
    iget-object v2, p0, Lorg/telegram/ui/BlockedUsersActivity$1;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/BlockedUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
