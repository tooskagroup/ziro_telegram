.class Lorg/telegram/ui/ChatActivity$66$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$66;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$66;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$66;)V
    .locals 0

    .prologue
    .line 5617
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$66$1;->this$1:Lorg/telegram/ui/ChatActivity$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5620
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$66$1;->this$1:Lorg/telegram/ui/ChatActivity$66;

    iget v1, v1, Lorg/telegram/ui/ChatActivity$66;->val$channel_id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 5621
    return-void
.end method
