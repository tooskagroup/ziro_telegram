.class Lorg/telegram/messenger/MessagesController$47$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$47;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$47;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$47;)V
    .locals 0

    .prologue
    .line 2416
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$47$1;->this$1:Lorg/telegram/messenger/MessagesController$47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2419
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$47$1;->this$1:Lorg/telegram/messenger/MessagesController$47;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$47;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$47$1;->this$1:Lorg/telegram/messenger/MessagesController$47;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$47;->val$action:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2420
    .local v0, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 2421
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$47$1;->this$1:Lorg/telegram/messenger/MessagesController$47;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$47;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    :cond_0
    return-void
.end method
