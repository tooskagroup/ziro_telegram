.class Lorg/telegram/messenger/ContactsController$9;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/ContactsController$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$9;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1300
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/messenger/ContactsController$Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$9;->compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 3
    .param p1, "contact"    # Lorg/telegram/messenger/ContactsController$Contact;
    .param p2, "contact2"    # Lorg/telegram/messenger/ContactsController$Contact;

    .prologue
    .line 1303
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1304
    .local v0, "toComapre1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1305
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1307
    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1308
    .local v1, "toComapre2":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1309
    iget-object v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1311
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
