.class Lorg/telegram/ui/ChatActivity$59;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$charSequence:Ljava/lang/CharSequence;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 3788
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$59;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3791
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 3792
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3793
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v10, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9, v10}, Lorg/telegram/ui/ChatActivity;->access$12202(Lorg/telegram/ui/ChatActivity;I)I

    .line 3795
    :cond_0
    const/4 v7, 0x0

    .line 3798
    .local v7, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :try_start_0
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v8, v7

    .line 3799
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local v8, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3800
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-lez v9, :cond_2

    .line 3801
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x40

    if-eq v9, v10, :cond_1

    .line 3805
    :cond_2
    if-nez v8, :cond_c

    .line 3806
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3808
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_1
    :try_start_2
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v7

    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 3810
    :cond_3
    if-eqz v8, :cond_6

    :try_start_3
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 3811
    const/4 v1, 0x1

    .line 3812
    .local v1, "clear":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 3813
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3814
    const/4 v1, 0x0

    .line 3812
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3817
    :cond_5
    if-eqz v1, :cond_6

    move-object v7, v8

    .line 3921
    .end local v0    # "a":I
    .end local v1    # "clear":Z
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_3
    return-void

    .line 3821
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v9, v8}, Lorg/telegram/ui/ChatActivity;->access$12302(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3822
    if-nez v8, :cond_7

    .line 3823
    new-instance v9, Lorg/telegram/ui/ChatActivity$59$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$59$1;-><init>(Lorg/telegram/ui/ChatActivity$59;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object v7, v8

    .line 3832
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_3

    .line 3834
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_7
    const-string/jumbo v9, " "

    invoke-static {v9, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .local v6, "textToCheck":Ljava/lang/CharSequence;
    move-object v7, v8

    .line 3853
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v9, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    .line 3854
    new-instance v9, Lorg/telegram/ui/ChatActivity$59$3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$59$3;-><init>(Lorg/telegram/ui/ChatActivity$59;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 3835
    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 3836
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3837
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 3838
    .local v5, "text":Ljava/lang/String;
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xd

    if-lt v9, v10, :cond_8

    const-string/jumbo v9, "http://"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "https://"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 3839
    :cond_8
    new-instance v9, Lorg/telegram/ui/ChatActivity$59$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$59$2;-><init>(Lorg/telegram/ui/ChatActivity$59;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 3850
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$59;->val$charSequence:Ljava/lang/CharSequence;

    .restart local v6    # "textToCheck":Ljava/lang/CharSequence;
    goto :goto_4

    .line 3879
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "text":Ljava/lang/String;
    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 3880
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 3881
    check-cast v6, Ljava/lang/String;

    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 3885
    :goto_6
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/ChatActivity$59$4;

    invoke-direct {v11, p0, v4}, Lorg/telegram/ui/ChatActivity$59$4;-><init>(Lorg/telegram/ui/ChatActivity$59;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;)V

    invoke-virtual {v10, v4, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v10

    # setter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9, v10}, Lorg/telegram/ui/ChatActivity;->access$12202(Lorg/telegram/ui/ChatActivity;I)I

    .line 3920
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_3

    .line 3883
    .restart local v6    # "textToCheck":Ljava/lang/CharSequence;
    :cond_b
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    goto :goto_6

    .line 3835
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_5

    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_c
    move-object v7, v8

    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto/16 :goto_1
.end method
