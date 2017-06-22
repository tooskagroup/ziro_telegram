.class Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method static drainCache()V
    .locals 1

    .prologue
    .line 327
    :cond_0
    sget-object v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    return-void
.end method

.method static obtain()Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    .locals 2

    .prologue
    .line 314
    sget-object v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 315
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .end local v0    # "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;-><init>()V

    :cond_0
    return-object v0
.end method

.method static recycle(Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;)V
    .locals 2
    .param p0, "record"    # Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .prologue
    const/4 v1, 0x0

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 320
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 321
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 322
    sget-object v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
