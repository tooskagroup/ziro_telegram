.class Lorg/telegram/ui/LocationActivity$3;
.super Landroid/widget/FrameLayout;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$3;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity$3;->first:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 259
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$3;->this$0:Lorg/telegram/ui/LocationActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity$3;->first:Z

    # invokes: Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1000(Lorg/telegram/ui/LocationActivity;Z)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity$3;->first:Z

    .line 265
    :cond_0
    return-void
.end method
