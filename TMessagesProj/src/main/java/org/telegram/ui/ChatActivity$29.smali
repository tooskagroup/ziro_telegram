.class Lorg/telegram/ui/ChatActivity$29;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastHeight:I

.field private lastWidth:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2276
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2283
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIsScrolling:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return v1

    .line 2286
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;I)Z

    move-result v0

    .line 2287
    .local v0, "result":Z
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 2309
    sub-int v9, p4, p2

    .line 2310
    .local v9, "width":I
    sub-int v6, p5, p3

    .line 2312
    .local v6, "height":I
    const/4 v7, -0x1

    .line 2313
    .local v7, "newPosition":I
    const/4 v8, 0x0

    .line 2314
    .local v8, "newTop":I
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewLastViewPosition:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$29;->lastWidth:I

    if-ne v9, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$29;->lastHeight:I

    sub-int v0, v6, v0

    if-eqz v0, :cond_0

    .line 2315
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewLastViewPosition:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    .line 2316
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewLastViewTop:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    add-int/2addr v0, v6

    iget v2, p0, Lorg/telegram/ui/ChatActivity$29;->lastHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$29;->getPaddingTop()I

    move-result v2

    sub-int v8, v0, v2

    .line 2319
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2321
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$5102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2323
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2324
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2328
    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2329
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2332
    :cond_1
    iput v6, p0, Lorg/telegram/ui/ChatActivity$29;->lastHeight:I

    .line 2333
    iput v9, p0, Lorg/telegram/ui/ChatActivity$29;->lastWidth:I

    .line 2334
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->mentionListViewUpdateLayout()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)V

    .line 2335
    return-void

    .line 2326
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIsScrolling:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewScrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2293
    const/4 v0, 0x0

    .line 2296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIgnoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2304
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    goto :goto_0
.end method
