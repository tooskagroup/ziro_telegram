.class Lorg/telegram/messenger/ContactsController$6$3$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$6$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$6$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$6$3;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6$3$1;->this$2:Lorg/telegram/messenger/ContactsController$6$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$6$3$1;->this$2:Lorg/telegram/messenger/ContactsController$6$3;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6$3;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$6$3$1;->this$2:Lorg/telegram/messenger/ContactsController$6$3;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6$3;->this$1:Lorg/telegram/messenger/ContactsController$6;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    .line 877
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 878
    return-void
.end method
