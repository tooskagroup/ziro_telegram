.class Lorg/telegram/ui/PhotoCropActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PhotoCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoCropActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoCropActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoCropActivity;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 429
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoCropActivity;->finishFragment()V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    if-ne p1, v2, :cond_0

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # getter for: Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$200(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # getter for: Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$300(Lorg/telegram/ui/PhotoCropActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # getter for: Lorg/telegram/ui/PhotoCropActivity;->view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$400(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # getter for: Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # setter for: Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoCropActivity;->access$502(Lorg/telegram/ui/PhotoCropActivity;Z)Z

    .line 437
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # getter for: Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$200(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;->didFinishEdit(Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    # setter for: Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoCropActivity;->access$302(Lorg/telegram/ui/PhotoCropActivity;Z)Z

    .line 440
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$1;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoCropActivity;->finishFragment()V

    goto :goto_0
.end method
