.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/ActionMode;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 149
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->fixActionMode(Landroid/view/ActionMode;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)V

    .line 136
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
