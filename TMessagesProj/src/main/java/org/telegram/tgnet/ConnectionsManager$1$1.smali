.class Lorg/telegram/tgnet/ConnectionsManager$1$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegateInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/tgnet/ConnectionsManager$1;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IILjava/lang/String;)V
    .locals 10
    .param p1, "response"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v6, 0x0

    .line 133
    .local v6, "resp":Lorg/telegram/tgnet/TLObject;
    const/4 v2, 0x0

    .line 134
    .local v2, "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    if-eqz p1, :cond_1

    .line 135
    :try_start_0
    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 136
    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 137
    iget-object v7, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v7, v7, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v0, v8, v9}, Lorg/telegram/tgnet/TLObject;->deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    .line 144
    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    :goto_0
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "java received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object v5, v6

    .line 146
    .local v5, "finalResponse":Lorg/telegram/tgnet/TLObject;
    move-object v4, v2

    .line 147
    .local v4, "finalError":Lorg/telegram/tgnet/TLRPC$TL_error;
    sget-object v7, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;

    invoke-direct {v8, p0, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 159
    .end local v4    # "finalError":Lorg/telegram/tgnet/TLRPC$TL_error;
    .end local v5    # "finalResponse":Lorg/telegram/tgnet/TLObject;
    :goto_1
    return-void

    .line 138
    :cond_1
    if-eqz p3, :cond_0

    .line 139
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .local v3, "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    :try_start_1
    iput p2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 141
    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 142
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v9, v9, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " got error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    goto :goto_2
.end method
