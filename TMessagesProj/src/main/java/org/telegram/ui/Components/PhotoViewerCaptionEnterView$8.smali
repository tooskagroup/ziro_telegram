.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldFocused(Z)V
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
    .line 387
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # getter for: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
