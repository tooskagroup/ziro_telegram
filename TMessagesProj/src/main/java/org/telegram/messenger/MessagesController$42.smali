.class Lorg/telegram/messenger/MessagesController$42;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateTimerProc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .prologue
    .line 2101
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2104
    if-nez p2, :cond_1

    .line 2105
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/MessagesController;->offlineSent:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3802(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 2111
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/MessagesController;->statusRequest:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4002(Lorg/telegram/messenger/MessagesController;I)I

    .line 2112
    return-void

    .line 2107
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3700(Lorg/telegram/messenger/MessagesController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$42;->this$0:Lorg/telegram/messenger/MessagesController;

    const-wide/16 v2, 0x1388

    # += operator for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$3714(Lorg/telegram/messenger/MessagesController;J)J

    goto :goto_0
.end method
