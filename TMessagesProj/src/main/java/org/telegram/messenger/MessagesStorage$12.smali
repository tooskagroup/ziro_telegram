.class Lorg/telegram/messenger/MessagesStorage$12;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadWebRecent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$12;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$12;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 895
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$12;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SELECT id, image_url, thumb_url, local_url, width, height, size, date, document FROM web_recent_v3 WHERE type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$12;->val$type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ORDER BY date DESC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 896
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 898
    new-instance v4, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v4}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 899
    .local v4, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 900
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 901
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 902
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 903
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 904
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 905
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 906
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 907
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 908
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 909
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_0

    .line 910
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 911
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 914
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$12;->val$type:I

    iput v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 915
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :catch_0
    move-exception v3

    .line 925
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 927
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 917
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 918
    new-instance v5, Lorg/telegram/messenger/MessagesStorage$12$1;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/MessagesStorage$12$1;-><init>(Lorg/telegram/messenger/MessagesStorage$12;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
