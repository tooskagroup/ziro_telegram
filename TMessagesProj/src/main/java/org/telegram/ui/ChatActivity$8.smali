.class Lorg/telegram/ui/ChatActivity$8;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChatActivity.java"


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
    .line 1161
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1181
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    const v1, 0x7fffffff

    # setter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$3902(Lorg/telegram/ui/ChatActivity;I)I

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToLastMessage(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)V

    .line 1186
    return-void

    .line 1174
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1177
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSearchExpand()V
    .locals 4

    .prologue
    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSearchKeyboard:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1193
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$8$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$8$1;-><init>(Lorg/telegram/ui/ChatActivity$8;)V

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 8
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v7, 0x0

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateSearchButtons(III)V
    invoke-static {v0, v7, v7, v7}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;III)V

    .line 1205
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$8;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJII)V

    .line 1206
    return-void
.end method
