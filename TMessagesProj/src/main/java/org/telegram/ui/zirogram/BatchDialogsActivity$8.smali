.class Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;
.super Ljava/lang/Object;
.source "BatchDialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/BatchDialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

.field final synthetic val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/BatchDialogsActivity;Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 652
    :cond_0
    :goto_0
    return v7

    .line 611
    :pswitch_0
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->downX:F

    .line 612
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->downY:F

    goto :goto_0

    .line 616
    :pswitch_1
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 617
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "tabs"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 618
    .local v4, "tabs":Z
    if-eqz v4, :cond_0

    .line 619
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->upX:F

    .line 620
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->upY:F

    .line 622
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    iget v5, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->downX:F

    iget-object v6, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    iget v6, v6, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->upX:F

    sub-float v0, v5, v6

    .line 623
    .local v0, "deltaX":F
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    iget v5, v5, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->downY:F

    iget-object v6, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    iget v6, v6, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->upY:F

    sub-float v1, v5, v6

    .line 624
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 625
    cmpg-float v5, v0, v8

    if-gez v5, :cond_1

    .line 626
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->getSeletedTab()I

    move-result v2

    .line 627
    .local v2, "position":I
    add-int/lit8 v2, v2, -0x1

    .line 628
    if-ltz v2, :cond_3

    .line 629
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v2}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->access$1000(Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;I)V

    .line 634
    .end local v2    # "position":I
    :cond_1
    :goto_1
    cmpl-float v5, v0, v8

    if-lez v5, :cond_2

    .line 635
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->getSeletedTab()I

    move-result v2

    .line 636
    .restart local v2    # "position":I
    add-int/lit8 v2, v2, 0x1

    .line 637
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->getTabCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 638
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v2}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->access$1000(Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;I)V

    .line 644
    .end local v2    # "position":I
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    # getter for: Lorg/telegram/ui/zirogram/BatchDialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v5}, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->access$400(Lorg/telegram/ui/zirogram/BatchDialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 645
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->this$0:Lorg/telegram/ui/zirogram/BatchDialogsActivity;

    # getter for: Lorg/telegram/ui/zirogram/BatchDialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v5}, Lorg/telegram/ui/zirogram/BatchDialogsActivity;->access$400(Lorg/telegram/ui/zirogram/BatchDialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 631
    .restart local v2    # "position":I
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    iget-object v6, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    invoke-virtual {v6}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->getTabCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    # invokes: Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v6}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->access$1000(Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;I)V

    goto :goto_1

    .line 640
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/zirogram/BatchDialogsActivity$8;->val$slidingTabView:Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;

    # invokes: Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->didSelectTab(I)V
    invoke-static {v5, v7}, Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;->access$1000(Lorg/telegram/ui/zirogram/BatchDialogsActivity$SlidingTabView;I)V

    goto :goto_2

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
