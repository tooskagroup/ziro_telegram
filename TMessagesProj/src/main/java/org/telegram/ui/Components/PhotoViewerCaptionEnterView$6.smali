.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 214
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V

    .line 220
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
