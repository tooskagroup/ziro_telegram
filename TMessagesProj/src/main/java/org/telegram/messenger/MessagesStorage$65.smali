.class Lorg/telegram/messenger/MessagesStorage$65;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$isChannel:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V
    .locals 0

    .prologue
    .line 3814
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$channelViews:Landroid/util/SparseArray;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$isChannel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3818
    :try_start_0
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 3819
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string/jumbo v10, "UPDATE messages SET media = max((SELECT media FROM messages WHERE mid = ?), ?) WHERE mid = ?"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 3820
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 3821
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3822
    .local v6, "peer":I
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 3823
    .local v3, "messages":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 3824
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 3825
    .local v8, "views":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-long v4, v9

    .line 3826
    .local v4, "messageId":J
    iget-boolean v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$isChannel:Z

    if-eqz v9, :cond_0

    .line 3827
    neg-int v9, v6

    int-to-long v10, v9

    const/16 v9, 0x20

    shl-long/2addr v10, v9

    or-long/2addr v4, v10

    .line 3829
    :cond_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3830
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3831
    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3832
    const/4 v9, 0x3

    invoke-virtual {v7, v9, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3833
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3823
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3820
    .end local v4    # "messageId":J
    .end local v8    # "views":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3836
    .end local v1    # "b":I
    .end local v3    # "messages":Landroid/util/SparseIntArray;
    .end local v6    # "peer":I
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3837
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3841
    .end local v0    # "a":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_2
    return-void

    .line 3838
    :catch_0
    move-exception v2

    .line 3839
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
