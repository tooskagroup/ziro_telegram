.class Lorg/telegram/messenger/MessagesStorage$81;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$pts:[Ljava/lang/Integer;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 5681
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$channelId:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$pts:[Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5684
    const/4 v0, 0x0

    .line 5686
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT pts FROM dialogs WHERE did = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$channelId:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 5687
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5688
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$pts:[Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5693
    :cond_0
    if-eqz v0, :cond_1

    .line 5694
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5698
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_2

    .line 5699
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5704
    :cond_2
    :goto_1
    return-void

    .line 5690
    :catch_0
    move-exception v1

    .line 5691
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5693
    if-eqz v0, :cond_1

    .line 5694
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0

    .line 5693
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 5694
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    throw v2

    .line 5701
    :catch_1
    move-exception v1

    .line 5702
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
