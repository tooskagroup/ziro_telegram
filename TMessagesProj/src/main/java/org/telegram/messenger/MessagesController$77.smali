.class Lorg/telegram/messenger/MessagesController$77;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field final synthetic val$isChannel:Z

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V
    .locals 0

    .prologue
    .line 4290
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$77;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$77;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$77;->val$chat_id:I

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$77;->val$isChannel:Z

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$77;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4293
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$77;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4294
    new-instance v1, Lorg/telegram/messenger/MessagesController$77$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$77$1;-><init>(Lorg/telegram/messenger/MessagesController$77;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4305
    :cond_0
    if-eqz p2, :cond_2

    .line 4318
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 4308
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4309
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$77;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4310
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$77;->val$isChannel:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$77;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-nez v1, :cond_1

    .line 4311
    new-instance v1, Lorg/telegram/messenger/MessagesController$77$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$77$2;-><init>(Lorg/telegram/messenger/MessagesController$77;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
