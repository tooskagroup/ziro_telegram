.class Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)V
    .locals 0

    .prologue
    .line 320
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher.1;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;, "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher.1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$1;->this$0:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    # getter for: Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->eventListener:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->access$000(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;)Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher$EventListener;->onManifestRefreshStarted()V

    .line 324
    return-void
.end method
