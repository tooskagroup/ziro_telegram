.class Lorg/telegram/messenger/MessagesController$91$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$91;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$91;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$91;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 5046
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$91$3;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$91$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5049
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$91$3;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$91;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$91$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$91$3;->this$1:Lorg/telegram/messenger/MessagesController$91;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$91;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V

    .line 5050
    return-void
.end method
