.class Lorg/telegram/ui/Components/ChatActivityEnterView$3;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 1

    .prologue
    .line 605
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 611
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 613
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 614
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hidekeyboard_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V
    invoke-static {v3, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 628
    :cond_1
    :goto_0
    return v2

    .line 621
    :cond_2
    const/16 v3, 0x42

    if-ne p2, v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->ctrlPressed:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 622
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_0

    .line 624
    :cond_4
    const/16 v3, 0x71

    if-eq p2, v3, :cond_5

    const/16 v3, 0x72

    if-ne p2, v3, :cond_7

    .line 625
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$3;->ctrlPressed:Z

    goto :goto_0

    :cond_7
    move v2, v1

    .line 628
    goto :goto_0
.end method
