.class Lorg/telegram/messenger/ContactsController$3;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->checkContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$3;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$3;->this$0:Lorg/telegram/messenger/ContactsController;

    # invokes: Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$200(Lorg/telegram/messenger/ContactsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "detected contacts change"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    .line 298
    :cond_0
    return-void
.end method
