.class Lorg/telegram/messenger/MessagesController$83;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$regid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4494
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$83;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$83;->val$regid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4497
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    .line 4498
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "registered for push"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4499
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 4500
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$83;->val$regid:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 4501
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4503
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$83$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$83$1;-><init>(Lorg/telegram/messenger/MessagesController$83;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4509
    return-void
.end method
