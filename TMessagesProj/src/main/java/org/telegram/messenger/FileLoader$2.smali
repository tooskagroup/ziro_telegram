.class Lorg/telegram/messenger/FileLoader$2;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$encrypted:Z

.field final synthetic val$finalSize:J

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoader$2;->val$encrypted:Z

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$2;->val$location:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    iget-boolean v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$encrypted:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileUploadOperation;

    .line 133
    .local v0, "operation":Lorg/telegram/messenger/FileUploadOperation;
    :goto_0
    if-eqz v0, :cond_2

    .line 134
    iget-wide v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalSize:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/FileUploadOperation;->checkNewDataAvailable(J)V

    .line 138
    :cond_0
    :goto_1
    return-void

    .line 131
    .end local v0    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileUploadOperation;

    .restart local v0    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    goto :goto_0

    .line 135
    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$location:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
