.class Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ThemingMainPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity$1;->this$0:Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 187
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity$1;->this$0:Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;->finishFragment()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity$1;->this$0:Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;

    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/zirogram/Theming/ThemingMainPageActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
