.class Lorg/telegram/ui/PhotoViewer$27$1;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$27;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$27;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$27;)V
    .locals 0

    .prologue
    .line 2309
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2319
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$27;->val$mode:I

    # setter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$5502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToScale:F
    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$7102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2321
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToX:F
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$7202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToY:F
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$7302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2323
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$7402(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7400(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;F)V

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$27$1;->this$1:Lorg/telegram/ui/PhotoViewer$27;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$27;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 2326
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2313
    return-void
.end method
