.class Lorg/telegram/messenger/NotificationsController$6$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$6;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$6$1;->this$1:Lorg/telegram/messenger/NotificationsController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$6$1;->this$1:Lorg/telegram/messenger/NotificationsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$6;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$6$1;->this$1:Lorg/telegram/messenger/NotificationsController$6;

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController$6;->val$popupArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 364
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 365
    return-void
.end method
