.class Lorg/telegram/ui/ChatActivity$35;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .prologue
    .line 2435
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/16 v7, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 2438
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2439
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2443
    :goto_0
    if-eqz p1, :cond_8

    .line 2444
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2445
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2446
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2449
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2450
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2535
    :cond_1
    :goto_1
    return-void

    .line 2441
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 2453
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2454
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v8, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2458
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2459
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2460
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2461
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "secretbot"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2464
    const-string/jumbo v2, "SecretChatContextBotAlert"

    const v3, 0x7f070443

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2465
    const-string/jumbo v2, "OK"

    const v3, 0x7f07039f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2466
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2467
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "secretbot"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2470
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2471
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2472
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2473
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2476
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$35$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$35$1;-><init>(Lorg/telegram/ui/ChatActivity$35;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2491
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2492
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 2456
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_2

    .line 2494
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2495
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 2498
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2499
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2500
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2503
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_1

    .line 2506
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2507
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2508
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2511
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$35$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$35$2;-><init>(Lorg/telegram/ui/ChatActivity$35;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2528
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2529
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 2531
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2532
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 2473
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 10
    .param p1, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .prologue
    .line 2547
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-void

    .line 2550
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v1, "web_player_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2551
    :cond_2
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2552
    .local v9, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    new-instance v0, Lorg/telegram/ui/Components/WebFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2553
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setUseFullWidth(Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 2552
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_1

    .line 2556
    .end local v9    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContextSearch(Z)V
    .locals 2
    .param p1, "searching"    # Z

    .prologue
    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCaption(Ljava/lang/String;)V

    .line 2541
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showContextProgress(Z)V

    .line 2543
    :cond_0
    return-void
.end method
