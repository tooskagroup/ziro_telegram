.class Lorg/telegram/ui/SetAdminsActivity$3;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v6

    if-lt p3, v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v6

    if-ge p3, v6, :cond_b

    :cond_0
    move-object v5, p2

    .line 168
    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    .line 169
    .local v5, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6, v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 171
    const/4 v1, -0x1

    .line 172
    .local v1, "index":I
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v7

    if-ne v6, v7, :cond_7

    .line 173
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v4

    .line 174
    .local v4, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 175
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 176
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v6, v7, :cond_6

    .line 177
    move v1, v0

    .line 184
    .end local v0    # "a":I
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    :goto_1
    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v6, :cond_5

    .line 186
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v6, :cond_8

    .line 187
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    .line 188
    .local v2, "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 189
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 190
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    .line 197
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1300(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 199
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 200
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1300(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 203
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$600(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v6

    # getter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1400(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_3
    move-object v4, v2

    .line 206
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v6, :cond_9

    :cond_4
    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 207
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_5

    .line 208
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v8

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-nez v6, :cond_a

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/messenger/MessagesController;->toggleUserAdmin(IIZ)V

    .line 221
    .end local v1    # "index":I
    .end local v2    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v5    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    .end local p2    # "view":Landroid/view/View;
    :cond_5
    :goto_5
    return-void

    .line 174
    .restart local v0    # "a":I
    .restart local v1    # "index":I
    .restart local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v5    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 182
    .end local v0    # "a":I
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v7

    sub-int v1, p3, v7

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_1

    .line 192
    :cond_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 193
    .restart local v2    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 194
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 195
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    goto/16 :goto_2

    .line 206
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 208
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 212
    .end local v1    # "index":I
    .end local v2    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v5    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1500(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v6

    if-ne p3, v6, :cond_5

    .line 213
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6, v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1002(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 214
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 215
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v6, :cond_c

    const/4 v6, 0x1

    :goto_6
    iput-boolean v6, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    .line 216
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_7
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 217
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->toggleAdminMode(IZ)V

    goto/16 :goto_5

    .line 215
    .restart local p2    # "view":Landroid/view/View;
    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    .line 216
    .end local p2    # "view":Landroid/view/View;
    :cond_d
    const/4 v6, 0x0

    goto :goto_7
.end method
