.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8941
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 8965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8837
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8838
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8839
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 8840
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 8841
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8844
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 8846
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 8943
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8944
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8946
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8950
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 8952
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 8956
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8966
    if-nez p1, :cond_0

    .line 8967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8969
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8970
    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5002(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8835
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$5102(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 8835
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8835
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .prologue
    .line 9184
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 9186
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 9188
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .prologue
    .line 9321
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState()V
    .locals 2

    .prologue
    .line 9229
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9231
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9233
    return-void
.end method

.method private onLeftHiddenState()V
    .locals 2

    .prologue
    .line 9239
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9241
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9242
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .prologue
    .line 9313
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/Object;

    .prologue
    .line 9175
    if-nez p1, :cond_1

    .line 9176
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9181
    :cond_0
    :goto_0
    return-void

    .line 9177
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 9178
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 9179
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 9171
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9172
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8995
    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8996
    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8997
    return-void
.end method

.method clearPayload()V
    .locals 1

    .prologue
    .line 9191
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9192
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9194
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9195
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 9122
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9123
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 9126
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9127
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 8973
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8974
    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 8975
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8976
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 9071
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9072
    const/4 v0, -0x1

    .line 9074
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    invoke-static {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 9099
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 9106
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 9045
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 9089
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9019
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9198
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 9199
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9201
    :cond_0
    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 9207
    :goto_0
    return-object v0

    .line 9204
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0

    .line 9207
    :cond_2
    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 9155
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .prologue
    .line 9163
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 9147
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    .prologue
    .line 9139
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    .prologue
    .line 9304
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 9151
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 9110
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    .prologue
    .line 9159
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 9325
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 9143
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .prologue
    const/4 v1, -0x1

    .line 8979
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    if-ne v0, v1, :cond_0

    .line 8980
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8982
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 8983
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8985
    :cond_1
    if-eqz p2, :cond_2

    .line 8986
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8988
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8989
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8990
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8992
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 9212
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9213
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9214
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 9216
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9217
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9218
    iput-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 9219
    iput-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 9220
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 9221
    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9222
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 9000
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9001
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9003
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 9167
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9168
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .prologue
    .line 9279
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9280
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    .line 9281
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9286
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9296
    :cond_0
    :goto_1
    return-void

    .line 9279
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9288
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9289
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 9290
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    .line 9291
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .prologue
    .line 9134
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 9135
    iput-boolean p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 9136
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 9006
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 1

    .prologue
    .line 9130
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9246
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9249
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9250
    const-string/jumbo v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9253
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9254
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9255
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9256
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9257
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9258
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9259
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9260
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9262
    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    const-string/jumbo v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9263
    :cond_9
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9250
    :cond_a
    const-string/jumbo v1, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 9114
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 9115
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .prologue
    .line 9118
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
