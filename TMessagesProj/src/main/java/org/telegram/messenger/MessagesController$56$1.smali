.class Lorg/telegram/messenger/MessagesController$56$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$56;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$56;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$56;)V
    .locals 0

    .prologue
    .line 3366
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$56$1;->this$1:Lorg/telegram/messenger/MessagesController$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3369
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$56$1;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$56$1;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3370
    .local v0, "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-nez v1, :cond_0

    .line 3371
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$56$1;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$56$1;->this$1:Lorg/telegram/messenger/MessagesController$56;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$56;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 3373
    :cond_0
    return-void
.end method
