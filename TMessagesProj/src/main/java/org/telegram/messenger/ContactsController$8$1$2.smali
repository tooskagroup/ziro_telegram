.class Lorg/telegram/messenger/ContactsController$8$1$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$1;->run()V
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
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$1;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1$2;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1033
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$8$1$2;->compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 6
    .param p1, "tl_contact"    # Lorg/telegram/tgnet/TLRPC$TL_contact;
    .param p2, "tl_contact2"    # Lorg/telegram/tgnet/TLRPC$TL_contact;

    .prologue
    .line 1036
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$8$1$2;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1037
    .local v2, "user1":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$8$1$2;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1038
    .local v3, "user2":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "name1":Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "name2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4
.end method
