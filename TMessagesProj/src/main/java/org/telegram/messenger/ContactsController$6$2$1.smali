.class Lorg/telegram/messenger/ContactsController$6$2$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$6$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$6$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6$2;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 841
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsBookShort:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 842
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6$2;->val$contactsMap:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 843
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$602(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 844
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # setter for: Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z
    invoke-static {v0, v3}, Lorg/telegram/messenger/ContactsController;->access$702(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 845
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-boolean v3, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2, v2, v2}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 850
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$2$1;->this$2:Lorg/telegram/messenger/ContactsController$6$2;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$2;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    :cond_1
    return-void
.end method
