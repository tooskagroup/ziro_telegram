.class Lorg/telegram/ui/AudioSelectActivity$5;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->loadAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$5;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 191
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "album"

    aput-object v3, v4, v2

    .line 200
    .local v4, "projection":[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v17, "newAudioEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AudioEntry;>;"
    const/4 v10, 0x0

    .line 203
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "is_music != 0"

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 204
    const v15, -0x77359400

    .line 205
    .local v15, "id":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    new-instance v9, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v9}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    .line 207
    .local v9, "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    .line 208
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    .line 209
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    .line 210
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    .line 211
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    .line 212
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 214
    new-instance v13, Ljava/io/File;

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v13, "file":Ljava/io/File;
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 217
    .local v16, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 218
    move-object/from16 v0, v16

    iput v15, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 219
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 220
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v16

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 222
    const-string/jumbo v2, "-1"

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 223
    iget-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 224
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 225
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 226
    move-object/from16 v0, v16

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v2, v2, 0x300

    move-object/from16 v0, v16

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 228
    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "ext":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 231
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 232
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v16

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 233
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .end local v12    # "ext":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 234
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 235
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 236
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 237
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 239
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 240
    .local v8, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    iget v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    iput v2, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 241
    iget-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 242
    iget-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 243
    iget v2, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 244
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 247
    .local v14, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 248
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v2, v9, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 252
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v15, v15, -0x1

    .line 254
    goto/16 :goto_0

    .line 233
    .end local v8    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    .end local v14    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .restart local v12    # "ext":Ljava/lang/String;
    :cond_0
    const-string/jumbo v12, "mp3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 258
    .end local v9    # "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    .end local v12    # "ext":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_1
    if-eqz v10, :cond_2

    .line 259
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 262
    .end local v15    # "id":I
    :cond_2
    :goto_2
    new-instance v2, Lorg/telegram/ui/AudioSelectActivity$5$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/AudioSelectActivity$5$1;-><init>(Lorg/telegram/ui/AudioSelectActivity$5;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 270
    return-void

    .line 255
    :catch_0
    move-exception v11

    .line 256
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-eqz v10, :cond_2

    .line 259
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 258
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 259
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method
