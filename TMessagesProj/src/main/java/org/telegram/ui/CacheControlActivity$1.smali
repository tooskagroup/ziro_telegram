.class Lorg/telegram/ui/CacheControlActivity$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$002(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$302(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$402(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v5}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$502(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v6}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$602(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->canceled:Z
    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/CacheControlActivity;->access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$702(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$1;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    # setter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/CacheControlActivity;->access$802(Lorg/telegram/ui/CacheControlActivity;J)J

    .line 121
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$1$1;-><init>(Lorg/telegram/ui/CacheControlActivity$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
