.class Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;
.super Landroid/widget/FrameLayout;
.source "ApoSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/ApoSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/ApoSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/ApoSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 299
    iput-object p1, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->this$0:Lorg/telegram/ui/zirogram/ApoSettingsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawingTime"    # J

    .prologue
    .line 302
    iget-object v5, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->this$0:Lorg/telegram/ui/zirogram/ApoSettingsActivity;

    # getter for: Lorg/telegram/ui/zirogram/ApoSettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v5}, Lorg/telegram/ui/zirogram/ApoSettingsActivity;->access$000(Lorg/telegram/ui/zirogram/ApoSettingsActivity;)Landroid/widget/ListView;

    move-result-object v5

    if-ne p2, v5, :cond_4

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 304
    .local v3, "result":Z
    iget-object v5, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->this$0:Lorg/telegram/ui/zirogram/ApoSettingsActivity;

    # getter for: Lorg/telegram/ui/zirogram/ApoSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/zirogram/ApoSettingsActivity;->access$100(Lorg/telegram/ui/zirogram/ApoSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "actionBarHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->getChildCount()I

    move-result v2

    .line 307
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 308
    invoke-virtual {p0, v0}, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 309
    .local v4, "view":Landroid/view/View;
    if-ne v4, p2, :cond_1

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    .line 313
    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 319
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$3;->this$0:Lorg/telegram/ui/zirogram/ApoSettingsActivity;

    # getter for: Lorg/telegram/ui/zirogram/ApoSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/zirogram/ApoSettingsActivity;->access$200(Lorg/telegram/ui/zirogram/ApoSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 323
    .end local v0    # "a":I
    .end local v1    # "actionBarHeight":I
    .end local v2    # "childCount":I
    .end local v3    # "result":Z
    :cond_3
    :goto_1
    return v3

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    goto :goto_1
.end method
