.class Lorg/telegram/messenger/SendMessagesHelper$9;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/QuickAckDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    .prologue
    .line 3279
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3282
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3283
    .local v0, "msg_id":I
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$9$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SendMessagesHelper$9$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3290
    return-void
.end method
