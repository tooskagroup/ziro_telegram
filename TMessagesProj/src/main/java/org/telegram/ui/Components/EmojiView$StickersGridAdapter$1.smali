.class Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;
.super Lorg/telegram/ui/Cells/StickerEmojiCell;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1704
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1706
    const/high16 v0, 0x42a40000    # 82.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->onMeasure(II)V

    .line 1707
    return-void
.end method
