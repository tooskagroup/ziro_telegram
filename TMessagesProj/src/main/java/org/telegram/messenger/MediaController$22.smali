.class final Lorg/telegram/messenger/MediaController$22;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$guid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 3141
    iput p1, p0, Lorg/telegram/messenger/MediaController$22;->val$guid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 3144
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3145
    .local v21, "albumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 3146
    .local v37, "videoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 3147
    .local v20, "albums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    const/16 v22, 0x0

    .line 3148
    .local v22, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "Camera/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 3149
    .local v30, "cameraFolder":Ljava/lang/String;
    const/16 v28, 0x0

    .line 3150
    .local v28, "cameraAlbumId":Ljava/lang/Integer;
    const/16 v29, 0x0

    .line 3152
    .local v29, "cameraAlbumVideoId":Ljava/lang/Integer;
    const/16 v31, 0x0

    .line 3154
    .local v31, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_d

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 3155
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    # getter for: Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$5700()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-static/range {v2 .. v7}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 3156
    if-eqz v31, :cond_d

    .line 3157
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3158
    .local v35, "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3159
    .local v25, "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3160
    .local v27, "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 3161
    .local v32, "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 3162
    .local v33, "dateColumn":I
    const-string/jumbo v2, "orientation"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v36

    .local v36, "orientationColumn":I
    move-object/from16 v23, v22

    .line 3164
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v23, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3165
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3166
    .local v5, "imageId":I
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 3167
    .local v4, "bucketId":I
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 3168
    .local v26, "bucketName":Ljava/lang/String;
    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3169
    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3170
    .local v6, "dateTaken":J
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3172
    .local v9, "orientation":I
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3176
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .line 3178
    .local v3, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v23, :cond_12

    .line 3179
    new-instance v22, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v2, 0x0

    const-string/jumbo v10, "AllPhotos"

    const v11, 0x7f070082

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v10, v3, v11}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3180
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3182
    :goto_1
    if-eqz v22, :cond_2

    .line 3183
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3186
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3187
    .local v19, "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v19, :cond_3

    .line 3188
    new-instance v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 3189
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    if-nez v28, :cond_4

    if-eqz v30, :cond_4

    if-eqz v8, :cond_4

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3191
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 3198
    :cond_3
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    move-object/from16 v23, v22

    .line 3199
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_0

    .line 3194
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3202
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v36    # "orientationColumn":I
    :catch_0
    move-exception v34

    .line 3203
    .local v34, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3205
    if-eqz v31, :cond_5

    .line 3207
    :try_start_4
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3215
    .end local v34    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_11

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 3216
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 3217
    const/16 v24, 0x0

    .line 3218
    .local v24, "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    # getter for: Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$5800()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "datetaken DESC"

    invoke-static/range {v10 .. v15}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 3219
    if-eqz v31, :cond_11

    .line 3220
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3221
    .restart local v35    # "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3222
    .restart local v25    # "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3223
    .restart local v27    # "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 3224
    .restart local v32    # "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 3226
    .restart local v33    # "dateColumn":I
    :cond_7
    :goto_5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3227
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3228
    .restart local v5    # "imageId":I
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 3229
    .restart local v4    # "bucketId":I
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 3230
    .restart local v26    # "bucketName":Ljava/lang/String;
    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3231
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3233
    .restart local v6    # "dateTaken":J
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3237
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-wide v14, v6

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .line 3239
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v24, :cond_8

    .line 3240
    new-instance v24, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    const-string/jumbo v10, "AllVideo"

    const v11, 0x7f070084

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v10, v3, v11}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 3241
    .restart local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3243
    :cond_8
    if-eqz v24, :cond_9

    .line 3244
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3247
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3248
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v19, :cond_a

    .line 3249
    new-instance v19, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 3250
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3251
    if-nez v29, :cond_f

    if-eqz v30, :cond_f

    if-eqz v8, :cond_f

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3252
    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 3259
    :cond_a
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_5

    .line 3263
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    :catch_1
    move-exception v34

    .line 3264
    .restart local v34    # "e":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3266
    if-eqz v31, :cond_b

    .line 3268
    :try_start_7
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 3275
    .end local v34    # "e":Ljava/lang/Throwable;
    :cond_b
    :goto_7
    move-object/from16 v14, v28

    .line 3276
    .local v14, "cameraAlbumIdFinal":Ljava/lang/Integer;
    move-object/from16 v16, v29

    .line 3277
    .local v16, "cameraAlbumVideoIdFinal":Ljava/lang/Integer;
    move-object/from16 v12, v22

    .line 3278
    .local v12, "allPhotosAlbumFinal":Lorg/telegram/messenger/MediaController$AlbumEntry;
    new-instance v10, Lorg/telegram/messenger/MediaController$22$1;

    move-object/from16 v11, p0

    move-object/from16 v13, v21

    move-object/from16 v15, v37

    invoke-direct/range {v10 .. v16}, Lorg/telegram/messenger/MediaController$22$1;-><init>(Lorg/telegram/messenger/MediaController$22;Lorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3285
    return-void

    .end local v12    # "allPhotosAlbumFinal":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v14    # "cameraAlbumIdFinal":Ljava/lang/Integer;
    .end local v16    # "cameraAlbumVideoIdFinal":Ljava/lang/Integer;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v27    # "bucketNameColumn":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v36    # "orientationColumn":I
    :cond_c
    move-object/from16 v22, v23

    .line 3205
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v36    # "orientationColumn":I
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_d
    if-eqz v31, :cond_5

    .line 3207
    :try_start_8
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 3208
    :catch_2
    move-exception v34

    .line 3209
    .local v34, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3208
    .local v34, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v34

    .line 3209
    .local v34, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3205
    .end local v34    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v31, :cond_e

    .line 3207
    :try_start_9
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 3210
    :cond_e
    :goto_9
    throw v2

    .line 3208
    :catch_4
    move-exception v34

    .line 3209
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3255
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v26    # "bucketName":Ljava/lang/String;
    .restart local v27    # "bucketNameColumn":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    :cond_f
    :try_start_a
    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 3266
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v19    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "allVideosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketIdColumn":I
    .end local v26    # "bucketName":Ljava/lang/String;
    .end local v27    # "bucketNameColumn":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    :catchall_1
    move-exception v2

    if-eqz v31, :cond_10

    .line 3268
    :try_start_b
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 3271
    :cond_10
    :goto_a
    throw v2

    .line 3266
    :cond_11
    if-eqz v31, :cond_b

    .line 3268
    :try_start_c
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_7

    .line 3269
    :catch_5
    move-exception v34

    .line 3270
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 3269
    .local v34, "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v34

    .line 3270
    .local v34, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 3269
    .end local v34    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v34

    .line 3270
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 3205
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketIdColumn":I
    .restart local v27    # "bucketNameColumn":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v36    # "orientationColumn":I
    :catchall_2
    move-exception v2

    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto :goto_8

    .line 3202
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_8
    move-exception v34

    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_3

    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v26    # "bucketName":Ljava/lang/String;
    :cond_12
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_1
.end method
