.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "ScrollSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;->val$position:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    .line 126
    return-void
.end method
