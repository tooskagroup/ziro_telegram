.class Lorg/telegram/ui/ContactsActivity$4;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
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
    .line 315
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searching:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$000(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchWas:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$200(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 317
    .local v16, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v16, :cond_1

    .line 448
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 321
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 324
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 326
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 330
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 333
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v18, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/ContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 337
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 339
    :cond_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 347
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v14

    .line 348
    .local v14, "section":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v13

    .line 349
    .local v13, "row":I
    if-ltz v13, :cond_0

    if-ltz v14, :cond_0

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1100(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_d

    :cond_7
    if-nez v14, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1300(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 354
    if-nez v13, :cond_0

    .line 356
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v18, "android.intent.extra.TEXT"

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/ContactsController;->getInviteText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "InviteFriends"

    const v20, 0x7f070283

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 360
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 361
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 364
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_9

    .line 365
    if-nez v13, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupInviteActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 369
    :cond_9
    if-nez v13, :cond_a

    .line 370
    const-string/jumbo v18, "chat_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 374
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    .line 375
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 376
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v18, "onlyUsers"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    const-string/jumbo v18, "destroyAfterSelect"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string/jumbo v18, "createSecretChat"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    const-string/jumbo v18, "allowBots"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 381
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_0

    .line 382
    const-string/jumbo v18, "broadcast_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 385
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 386
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v18, "channel_intro"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 387
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 388
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v18, "step"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelCreateActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 391
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 392
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string/jumbo v19, "channel_intro"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 397
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v11

    .line 399
    .local v11, "item":Ljava/lang/Object;
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v16, v11

    .line 400
    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 401
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 405
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/ContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 409
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 411
    :cond_10
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 412
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 418
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    instance-of v0, v11, Lorg/telegram/messenger/ContactsController$Contact;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v8, v11

    .line 419
    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 420
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v15, 0x0

    .line 421
    .local v15, "usePhone":Ljava/lang/String;
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_12

    .line 422
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "usePhone":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 424
    .restart local v15    # "usePhone":Ljava/lang/String;
    :cond_12
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 427
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v18, "InviteUser"

    const v19, 0x7f070289

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 429
    const-string/jumbo v18, "AppName"

    const v19, 0x7f07009a

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    move-object v5, v15

    .line 431
    .local v5, "arg1":Ljava/lang/String;
    const-string/jumbo v18, "OK"

    const v19, 0x7f07039f

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/ContactsActivity$4$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ContactsActivity$4$1;-><init>(Lorg/telegram/ui/ContactsActivity$4;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    const-string/jumbo v18, "Cancel"

    const v19, 0x7f0700f2

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$4;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
