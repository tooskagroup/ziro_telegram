.class Lorg/telegram/messenger/MessagesController$95;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0

    .prologue
    .line 5363
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$95;->val$chat_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5366
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, p0, Lorg/telegram/messenger/MessagesController$95;->val$chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 5367
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MessagesController$95;->val$chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_1

    .line 5443
    :cond_0
    :goto_0
    return-void

    .line 5370
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 5371
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
    iget v2, p0, Lorg/telegram/messenger/MessagesController$95;->val$chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 5372
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 5373
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$95$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MessagesController$95$1;-><init>(Lorg/telegram/messenger/MessagesController$95;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method
