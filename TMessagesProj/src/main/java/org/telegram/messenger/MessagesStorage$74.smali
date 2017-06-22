.class Lorg/telegram/messenger/MessagesStorage$74;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 4642
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$74;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$74;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 4646
    :try_start_0
    const-string/jumbo v4, ","

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$74;->val$messages:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 4647
    .local v2, "ids":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$74;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT mid FROM randoms WHERE random_id IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 4648
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4649
    .local v3, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4650
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4664
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "ids":Ljava/lang/String;
    .end local v3    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 4665
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4667
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 4652
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v2    # "ids":Ljava/lang/String;
    .restart local v3    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4653
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4654
    new-instance v4, Lorg/telegram/messenger/MessagesStorage$74$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/MessagesStorage$74$1;-><init>(Lorg/telegram/messenger/MessagesStorage$74;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4660
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    invoke-static {v4, v3, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->access$900(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 4661
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)V
    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    .line 4662
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;I)V
    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
