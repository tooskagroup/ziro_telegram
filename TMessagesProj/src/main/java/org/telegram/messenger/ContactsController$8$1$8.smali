.class Lorg/telegram/messenger/ContactsController$8$1$8;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$1;

.field final synthetic val$contactsByPhonesDictFinal:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$1;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1$8;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8$1$8;->val$contactsByPhonesDictFinal:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1227
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$8$1$8$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$8$1$8$1;-><init>(Lorg/telegram/messenger/ContactsController$8$1$8;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1233
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$8;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$600(Lorg/telegram/messenger/ContactsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$1$8;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$602(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 1237
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook()V

    goto :goto_0
.end method
