.class Lorg/telegram/messenger/MessagesController$59;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .prologue
    .line 3591
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v4, -0x1

    .line 3594
    if-nez p2, :cond_0

    move-object v0, p1

    .line 3595
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    .line 3596
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    invoke-virtual {v1, v4, v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 3598
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    :cond_0
    return-void
.end method
