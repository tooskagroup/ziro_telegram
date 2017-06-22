.class Lorg/telegram/messenger/ImageLoader$HttpImageTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private canRetry:Z

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private httpConnection:Ljava/net/URLConnection;

.field private imageSize:I

.field private lastProgressTime:J

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V
    .locals 2
    .param p2, "cacheImage"    # Lorg/telegram/messenger/ImageLoader$CacheImage;
    .param p3, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 221
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 225
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    .line 228
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 229
    iput p3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    .line 230
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .prologue
    .line 218
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    return v0
.end method

.method private reportProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    .local v0, "currentTime":J
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 235
    :cond_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    .line 236
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;F)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 253
    .local v6, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 255
    .local v2, "done":Z
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 257
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    .line 259
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string/jumbo v12, "User-Agent"

    const-string/jumbo v13, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string/jumbo v12, "Referer"

    const-string/jumbo v13, "google.com"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 262
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 263
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_0

    .line 264
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 267
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 268
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 269
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    const-string/jumbo v13, "rws"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v3    # "downloadUrl":Ljava/net/URL;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_5

    .line 289
    :try_start_1
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_2

    .line 290
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 291
    .local v0, "code":I
    const/16 v11, 0xc8

    if-eq v0, v11, :cond_2

    const/16 v11, 0xca

    if-eq v0, v11, :cond_2

    const/16 v11, 0x130

    if-eq v0, v11, :cond_2

    .line 292
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v0    # "code":I
    :cond_2
    :goto_1
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-nez v11, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_3

    .line 300
    :try_start_2
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 301
    .local v5, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_3

    .line 302
    const-string/jumbo v11, "content-Length"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 303
    .local v10, "values":Ljava/util/List;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 304
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 305
    .local v7, "length":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 306
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    .end local v5    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "length":Ljava/lang/String;
    .end local v10    # "values":Ljava/util/List;
    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    .line 317
    const/16 v11, 0x2000

    :try_start_3
    new-array v1, v11, [B

    .line 318
    .local v1, "data":[B
    const/4 v9, 0x0

    .line 320
    .local v9, "totalLoaded":I
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v11

    if-eqz v11, :cond_c

    .line 352
    .end local v1    # "data":[B
    .end local v9    # "totalLoaded":I
    :cond_5
    :goto_4
    :try_start_4
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v11, :cond_6

    .line 353
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 354
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 361
    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    .line 362
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 368
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 369
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    if-eqz v11, :cond_8

    .line 370
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 371
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v12, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 376
    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    .line 271
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Throwable;
    instance-of v11, v4, Ljava/net/SocketTimeoutException;

    if-eqz v11, :cond_a

    .line 273
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 274
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 283
    :cond_9
    :goto_7
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 276
    :cond_a
    instance-of v11, v4, Ljava/net/UnknownHostException;

    if-eqz v11, :cond_b

    .line 277
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_7

    .line 278
    :cond_b
    instance-of v11, v4, Ljava/net/SocketException;

    if-eqz v11, :cond_9

    .line 279
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ECONNRESET"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 280
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_7

    .line 295
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 296
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 310
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 311
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 324
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    .restart local v9    # "totalLoaded":I
    :cond_c
    :try_start_6
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 325
    .local v8, "read":I
    if-lez v8, :cond_d

    .line 326
    add-int/2addr v9, v8

    .line 327
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 328
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_4

    .line 329
    int-to-float v11, v9

    iget v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 340
    .end local v8    # "read":I
    :catch_3
    move-exception v4

    .line 341
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 345
    .end local v1    # "data":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "totalLoaded":I
    :catch_4
    move-exception v4

    .line 346
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 331
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v1    # "data":[B
    .restart local v8    # "read":I
    .restart local v9    # "totalLoaded":I
    :cond_d
    const/4 v11, -0x1

    if-ne v8, v11, :cond_5

    .line 332
    const/4 v2, 0x1

    .line 333
    :try_start_8
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_5

    .line 334
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_4

    .line 356
    .end local v1    # "data":[B
    .end local v8    # "read":I
    .end local v9    # "totalLoaded":I
    :catch_5
    move-exception v4

    .line 357
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 364
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v4

    .line 365
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 418
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    if-nez v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v3, 0x0

    # invokes: Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$300(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V

    .line 386
    :goto_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 402
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 408
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$400(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
