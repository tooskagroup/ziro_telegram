.class Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;
.super Ljava/lang/Object;
.source "BaseSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseSearchAdapter;->loadRecentHashtags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "SELECT id, date FROM hashtag_recent_v2 WHERE 1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 97
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    new-instance v4, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    invoke-direct {v4}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;-><init>()V

    .line 101
    .local v4, "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    .line 102
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->date:I

    .line 103
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, v4, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    .end local v4    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 106
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v3    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 107
    new-instance v5, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$1;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    new-instance v5, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$2;

    invoke-direct {v5, p0, v0, v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$2;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
