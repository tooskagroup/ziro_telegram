.class Lorg/telegram/ui/PhotoViewer$25;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
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
    .line 2225
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$25;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2228
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$25;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)V

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$25;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;I)V

    .line 2230
    return-void
.end method
