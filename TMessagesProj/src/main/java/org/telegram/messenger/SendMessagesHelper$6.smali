.class Lorg/telegram/messenger/SendMessagesHelper$6;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1032
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$6$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$6$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$6;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1063
    return-void
.end method
