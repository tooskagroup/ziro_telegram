.class final Lorg/telegram/messenger/query/SearchQuery$3;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->increaseInlineRaiting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/query/SearchQuery$3;->compare(Lorg/telegram/tgnet/TLRPC$TL_topPeer;Lorg/telegram/tgnet/TLRPC$TL_topPeer;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_topPeer;Lorg/telegram/tgnet/TLRPC$TL_topPeer;)I
    .locals 4
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .prologue
    .line 242
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 243
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
