.class Lorg/telegram/messenger/ContactsController$13;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$uid:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$13;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$13;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(I)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1600(Lorg/telegram/messenger/ContactsController;I)V

    .line 1507
    return-void
.end method
