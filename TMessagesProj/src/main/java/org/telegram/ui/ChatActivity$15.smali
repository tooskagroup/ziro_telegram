.class Lorg/telegram/ui/ChatActivity$15;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1692
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 1695
    const/4 v0, 0x0

    return v0
.end method
