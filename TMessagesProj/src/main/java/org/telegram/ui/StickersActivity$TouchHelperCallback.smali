.class public Lorg/telegram/ui/StickersActivity$TouchHelperCallback;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;
.source "StickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 109
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 110
    return-void
.end method

.method public getMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v1, v1}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    goto :goto_0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 89
    invoke-super/range {p0 .. p7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 90
    return-void
.end method

.method public onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "source"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 80
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->swapElements(II)V

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$100(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 96
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 99
    return-void
.end method

.method public onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 104
    return-void
.end method
