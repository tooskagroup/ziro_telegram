.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$102(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V

    .line 122
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
