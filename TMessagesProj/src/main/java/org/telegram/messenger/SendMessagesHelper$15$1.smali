.class Lorg/telegram/messenger/SendMessagesHelper$15$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

.field final synthetic val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$pathFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 4115
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$pathFinal:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 4118
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$documentFinal:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$pathFinal:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iget-wide v4, v4, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iget-object v6, v6, Lorg/telegram/messenger/SendMessagesHelper$15;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15$1;->val$params:Ljava/util/HashMap;

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 4119
    return-void
.end method
