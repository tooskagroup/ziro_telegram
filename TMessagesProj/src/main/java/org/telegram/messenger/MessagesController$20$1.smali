.class Lorg/telegram/messenger/MessagesController$20$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$20;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$20;)V
    .locals 0

    .prologue
    .line 1453
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$20$1;->this$1:Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20$1;->this$1:Lorg/telegram/messenger/MessagesController$20;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$20$1;->this$1:Lorg/telegram/messenger/MessagesController$20;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 1457
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20$1;->this$1:Lorg/telegram/messenger/MessagesController$20;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;I)I

    .line 1458
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$20$1;->this$1:Lorg/telegram/messenger/MessagesController$20;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$20;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1459
    return-void
.end method
