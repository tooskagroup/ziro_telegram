.class Lorg/telegram/messenger/MessagesController$41;
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

.field final synthetic val$ghostMode:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Z)V
    .locals 0

    .prologue
    .line 2077
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$41;->val$ghostMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v4, 0x0

    .line 2080
    if-nez p2, :cond_1

    .line 2081
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$3702(Lorg/telegram/messenger/MessagesController;J)J

    .line 2083
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$41;->val$ghostMode:Z

    # setter for: Lorg/telegram/messenger/MessagesController;->offlineSent:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3802(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 2084
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->statusSettingState:I
    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->access$3902(Lorg/telegram/messenger/MessagesController;I)I

    .line 2090
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->statusRequest:I
    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->access$4002(Lorg/telegram/messenger/MessagesController;I)I

    .line 2091
    return-void

    .line 2086
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3700(Lorg/telegram/messenger/MessagesController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    const-wide/16 v2, 0x1388

    # += operator for: Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$3714(Lorg/telegram/messenger/MessagesController;J)J

    goto :goto_0
.end method
