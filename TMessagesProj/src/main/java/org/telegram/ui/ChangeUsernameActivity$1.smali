.class Lorg/telegram/ui/ChangeUsernameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 70
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # invokes: Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V

    goto :goto_0
.end method
