.class Lorg/telegram/messenger/ImageLoader$2$3$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ImageLoader$2$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$2$3;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$2$3$1;->this$2:Lorg/telegram/messenger/ImageLoader$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1150
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$2$3$1;->this$2:Lorg/telegram/messenger/ImageLoader$2$3;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$2$3;->val$location:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$2$3$1;->this$2:Lorg/telegram/messenger/ImageLoader$2$3;

    iget-boolean v4, v4, Lorg/telegram/messenger/ImageLoader$2$3;->val$isEncrypted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1151
    return-void
.end method
