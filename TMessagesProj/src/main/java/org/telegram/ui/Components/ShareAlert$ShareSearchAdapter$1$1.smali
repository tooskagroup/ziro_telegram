.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;->this$2:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 947
    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1$1;->compare(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;)I
    .locals 2
    .param p1, "lhs"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    .param p2, "rhs"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .prologue
    .line 950
    iget v0, p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    iget v1, p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    if-ge v0, v1, :cond_0

    .line 951
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    .line 952
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    iget v1, p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->date:I

    if-le v0, v1, :cond_1

    .line 953
    const/4 v0, -0x1

    goto :goto_0

    .line 955
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
