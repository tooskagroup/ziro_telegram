.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 10329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 10386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 10389
    iput-wide v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 10390
    iput-wide v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 10391
    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 10392
    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 10993
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 10714
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I
    invoke-static {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$6500(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v3

    and-int/lit8 v0, v3, 0xe

    .line 10715
    .local v0, "flags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10716
    const/4 v3, 0x4

    .line 10725
    :goto_0
    return v3

    .line 10718
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    .line 10719
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 10720
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 10721
    .local v2, "pos":I
    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 10722
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    move v3, v0

    .line 10725
    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract animatePersistence(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10903
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 10933
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final dispatchAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10798
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 10799
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10800
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 10802
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10839
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->onAnimationStarted(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 10840
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 10941
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10942
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10943
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 10942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10945
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10946
    return-void
.end method

.method public abstract endAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 10418
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 10454
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 10400
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 10436
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .prologue
    .line 10870
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 10871
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 10872
    if-nez v0, :cond_1

    .line 10873
    invoke-interface {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 10878
    :cond_0
    :goto_0
    return v0

    .line 10875
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public obtainHolderInfo()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .prologue
    .line 10958
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10813
    return-void
.end method

.method public onAnimationStarted(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10851
    return-void
.end method

.method public recordPostLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 10543
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "changeFlags"    # I
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/widget/RecyclerView$State;",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 10514
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 10427
    iput-wide p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 10428
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 10463
    iput-wide p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 10464
    return-void
.end method

.method setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 10475
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 10476
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 10409
    iput-wide p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 10410
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 10445
    iput-wide p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 10446
    return-void
.end method
