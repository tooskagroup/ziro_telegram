.class Lorg/telegram/ui/ChannelEditTypeActivity$7;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->checkUserName(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 458
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 459
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$100(Lorg/telegram/ui/ChannelEditTypeActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelEditTypeActivity$7$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$7$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity$7;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    # setter for: Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1002(Lorg/telegram/ui/ChannelEditTypeActivity;I)I

    .line 487
    return-void
.end method
