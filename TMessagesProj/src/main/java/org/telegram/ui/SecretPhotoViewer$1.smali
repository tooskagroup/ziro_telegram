.class Lorg/telegram/ui/SecretPhotoViewer$1;
.super Ljava/lang/Object;
.source "SecretPhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretPhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretPhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretPhotoViewer;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer$1;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer$1;->this$0:Lorg/telegram/ui/SecretPhotoViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V

    .line 223
    :cond_1
    return v2
.end method
