.class Lorg/telegram/messenger/MessagesController$95$1$2$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$95$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/MessagesController$95$1$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$95$1$2;)V
    .locals 0

    .prologue
    .line 5423
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95$1$2$1;->this$3:Lorg/telegram/messenger/MessagesController$95$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5426
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$1$2$1;->this$3:Lorg/telegram/messenger/MessagesController$95$1$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$1$2;->val$pushMessages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;Z)V

    .line 5427
    return-void
.end method
