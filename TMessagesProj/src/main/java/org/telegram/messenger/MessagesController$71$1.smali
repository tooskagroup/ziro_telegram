.class Lorg/telegram/messenger/MessagesController$71$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$71;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$71;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$71;)V
    .locals 0

    .prologue
    .line 4031
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$71$1;->this$1:Lorg/telegram/messenger/MessagesController$71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4034
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$71$1;->this$1:Lorg/telegram/messenger/MessagesController$71;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$71;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$71$1;->this$1:Lorg/telegram/messenger/MessagesController$71;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$71;->val$about:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 4035
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$71$1;->this$1:Lorg/telegram/messenger/MessagesController$71;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$71;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4036
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$71$1;->this$1:Lorg/telegram/messenger/MessagesController$71;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$71;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4037
    return-void
.end method
