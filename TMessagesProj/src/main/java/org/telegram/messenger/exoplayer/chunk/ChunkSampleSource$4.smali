.class Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$100(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;

    # getter for: Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->eventSourceId:I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;->access$000(Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 658
    return-void
.end method
