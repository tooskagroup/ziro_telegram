.class public abstract Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .prologue
    .line 2196
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2197
    iput p2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2198
    iput p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2199
    return-void
.end method


# virtual methods
.method public getDragDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2244
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2249
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2231
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .prologue
    .line 2218
    iput p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2219
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .prologue
    .line 2208
    iput p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2209
    return-void
.end method
