.class Lorg/telegram/ui/PhotoViewer$10;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 1479
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;I)V

    .line 1480
    return-void
.end method
