.class Lorg/telegram/ui/ChannelUsersActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$1;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$1;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity;->finishFragment()V

    .line 120
    :cond_0
    return-void
.end method
