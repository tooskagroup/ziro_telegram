.class Lorg/telegram/ui/ChatActivity$65;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$last_unread_date_final:I

.field final synthetic val$lastid:I

.field final synthetic val$wasUnreadFinal:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;IIZ)V
    .locals 0

    .prologue
    .line 5430
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$65;->val$lastid:I

    iput p3, p0, Lorg/telegram/ui/ChatActivity$65;->val$last_unread_date_final:I

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$65;->val$wasUnreadFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5433
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->last_message_id:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/ChatActivity$65;->val$lastid:I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->last_message_id:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ChatActivity$65;->val$last_unread_date_final:I

    iget-boolean v7, p0, Lorg/telegram/ui/ChatActivity$65;->val$wasUnreadFinal:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 5438
    :goto_0
    return-void

    .line 5436
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/ChatActivity$65;->val$lastid:I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->minMessageId:[I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)[I

    move-result-object v0

    aget v5, v0, v8

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$65;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->maxDate:[I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)[I

    move-result-object v0

    aget v6, v0, v8

    iget-boolean v7, p0, Lorg/telegram/ui/ChatActivity$65;->val$wasUnreadFinal:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    goto :goto_0
.end method
