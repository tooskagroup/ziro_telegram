.class Lorg/telegram/ui/PhotoAlbumPickerActivity$7;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(Z)V
    .locals 1
    .param p1, "canceled"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    .line 480
    if-nez p1, :cond_0

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    .line 483
    :cond_0
    return-void
.end method

.method public didSelectVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public selectedPhotosChanged()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 475
    :cond_0
    return-void
.end method
