.class Lorg/telegram/ui/ContactsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$1;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$1;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ContactsActivity;->finishFragment()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$1;->this$0:Lorg/telegram/ui/ContactsActivity;

    new-instance v1, Lorg/telegram/ui/Apogram/DeleteContactActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Apogram/DeleteContactActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
