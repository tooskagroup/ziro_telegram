.class Lorg/telegram/messenger/MessagesController$65$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$65;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$65;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$65;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 3863
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$65$1;->this$1:Lorg/telegram/messenger/MessagesController$65;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$65$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3866
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$65$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3867
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$65$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$65$1;->this$1:Lorg/telegram/messenger/MessagesController$65;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$65;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3869
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3870
    return-void
.end method
