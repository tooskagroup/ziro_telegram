.class Lorg/telegram/ui/Components/AvatarUpdater$1;
.super Ljava/lang/Object;
.source "AvatarUpdater.java"

# interfaces
.implements Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarUpdater;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarUpdater;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/high16 v4, 0x44480000    # 800.0f

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v4, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    # invokes: Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AvatarUpdater;->access$000(Lorg/telegram/ui/Components/AvatarUpdater;Landroid/graphics/Bitmap;)V

    .line 93
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public didSelectVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public startPhotoSelectActivity()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "photoPickerIntent":Landroid/content/Intent;
    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarUpdater$1;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v3, 0xe

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "photoPickerIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
