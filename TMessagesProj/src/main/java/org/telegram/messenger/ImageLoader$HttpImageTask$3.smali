.class Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;->this$1:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$500(Lorg/telegram/messenger/ImageLoader;Z)V

    .line 406
    return-void
.end method
