.class Lorg/telegram/messenger/MessagesController$36$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$36;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$36;)V
    .locals 0

    .prologue
    .line 1932
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$36$1;->this$1:Lorg/telegram/messenger/MessagesController$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1935
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$36$1;->this$1:Lorg/telegram/messenger/MessagesController$36;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$36;->val$did:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 1936
    return-void
.end method
