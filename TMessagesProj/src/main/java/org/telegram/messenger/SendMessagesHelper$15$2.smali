.class Lorg/telegram/messenger/SendMessagesHelper$15$2;
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

.field final synthetic val$needDownloadHttpFinal:Z

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field final synthetic val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/MediaController$SearchImage;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 4165
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$needDownloadHttpFinal:Z

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 4168
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$photoFinal:Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$needDownloadHttpFinal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->this$0:Lorg/telegram/messenger/SendMessagesHelper$15;

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15$2;->val$params:Ljava/util/HashMap;

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 4169
    return-void

    :cond_0
    move-object v3, v7

    .line 4168
    goto :goto_0
.end method
