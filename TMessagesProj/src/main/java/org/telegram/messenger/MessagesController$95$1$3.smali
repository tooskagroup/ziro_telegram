.class Lorg/telegram/messenger/MessagesController$95$1$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$95$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$95$1;

.field final synthetic val$pushMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$95$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 5433
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95$1$3;->this$2:Lorg/telegram/messenger/MessagesController$95$1;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$95$1$3;->val$pushMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5436
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$1$3;->this$2:Lorg/telegram/messenger/MessagesController$95$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$1;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$1$3;->this$2:Lorg/telegram/messenger/MessagesController$95$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$1;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$95;->val$chat_id:I

    neg-int v1, v1

    int-to-long v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$1$3;->val$pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 5437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5438
    return-void
.end method
