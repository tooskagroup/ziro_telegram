.class Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedSearchButton(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$1600(Lorg/telegram/ui/PhotoAlbumPickerActivity;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    .line 587
    return-void
.end method
