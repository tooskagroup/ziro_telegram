.class Lorg/telegram/messenger/SendMessagesHelper$7$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$7;)V
    .locals 0

    .prologue
    .line 3119
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$7$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3122
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$7$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$7;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$7;->val$path:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3123
    return-void
.end method
