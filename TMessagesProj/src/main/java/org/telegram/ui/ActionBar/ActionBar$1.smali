.class Lorg/telegram/ui/ActionBar/ActionBar$1;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    goto :goto_0
.end method
