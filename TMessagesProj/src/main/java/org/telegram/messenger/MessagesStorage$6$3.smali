.class Lorg/telegram/messenger/MessagesStorage$6$3;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$6;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$6;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->this$1:Lorg/telegram/messenger/MessagesStorage$6;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 674
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$6$3;->val$taskId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    .line 675
    return-void
.end method
