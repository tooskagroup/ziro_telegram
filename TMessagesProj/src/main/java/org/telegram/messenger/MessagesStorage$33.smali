.class Lorg/telegram/messenger/MessagesStorage$33;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1787
    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 1788
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v4, 0x0

    .line 1789
    .local v4, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    .local v5, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1791
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 1792
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_0

    .line 1793
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    .line 1794
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1795
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 1798
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1799
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v7, :cond_1

    .line 1800
    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$messageId:I

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 1801
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 1803
    move-object v3, v4

    .line 1804
    .local v3, "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v7, Lorg/telegram/messenger/MessagesStorage$33$1;

    invoke-direct {v7, p0, v3}, Lorg/telegram/messenger/MessagesStorage$33$1;-><init>(Lorg/telegram/messenger/MessagesStorage$33;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1811
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string/jumbo v8, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 1812
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v7

    invoke-direct {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1813
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v4, v1}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1814
    const/4 v7, 0x1

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$channelId:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1815
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1816
    const/4 v7, 0x3

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1817
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1818
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1819
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "finalInfo":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v5    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    :goto_0
    return-void

    .line 1821
    :catch_0
    move-exception v2

    .line 1822
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
