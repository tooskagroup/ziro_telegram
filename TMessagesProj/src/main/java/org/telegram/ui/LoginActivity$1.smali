.class Lorg/telegram/ui/LoginActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->currentViewNum:I
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->onBackPressed()Z

    goto :goto_0
.end method
