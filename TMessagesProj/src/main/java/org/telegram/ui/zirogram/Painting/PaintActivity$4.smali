.class Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/Painting/PaintActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/Painting/PaintActivity;

.field final synthetic val$backColorButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/Painting/PaintActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;->this$0:Lorg/telegram/ui/zirogram/Painting/PaintActivity;

    iput-object p2, p0, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;->val$backColorButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;->this$0:Lorg/telegram/ui/zirogram/Painting/PaintActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/zirogram/Painting/PaintActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 206
    .local v7, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 207
    new-instance v0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;->this$0:Lorg/telegram/ui/zirogram/Painting/PaintActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/zirogram/Painting/PaintActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4$1;-><init>(Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;)V

    iget-object v3, p0, Lorg/telegram/ui/zirogram/Painting/PaintActivity$4;->this$0:Lorg/telegram/ui/zirogram/Painting/PaintActivity;

    # getter for: Lorg/telegram/ui/zirogram/Painting/PaintActivity;->bgColor:I
    invoke-static {v3}, Lorg/telegram/ui/zirogram/Painting/PaintActivity;->access$1400(Lorg/telegram/ui/zirogram/Painting/PaintActivity;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/zirogram/Theming/ColorPicker/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 215
    .local v0, "colorDialog":Lorg/telegram/ui/zirogram/Theming/ColorPicker/ColorSelectorDialog;
    invoke-virtual {v0}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/ColorSelectorDialog;->show()V

    .line 216
    return-void
.end method
