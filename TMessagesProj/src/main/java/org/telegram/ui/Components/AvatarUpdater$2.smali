.class Lorg/telegram/ui/Components/AvatarUpdater$2;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "AvatarUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarUpdater;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarUpdater;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarUpdater$2;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p2, p0, Lorg/telegram/ui/Components/AvatarUpdater$2;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public sendButtonPressed(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/high16 v5, 0x44480000    # 800.0f

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater$2;->val$arrayList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 165
    .local v2, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 166
    iget-object v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 170
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v5, v5, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarUpdater$2;->this$0:Lorg/telegram/ui/Components/AvatarUpdater;

    # invokes: Lorg/telegram/ui/Components/AvatarUpdater;->processBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v3, v0}, Lorg/telegram/ui/Components/AvatarUpdater;->access$000(Lorg/telegram/ui/Components/AvatarUpdater;Landroid/graphics/Bitmap;)V

    .line 172
    return-void

    .line 167
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 168
    iget-object v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_0
.end method
