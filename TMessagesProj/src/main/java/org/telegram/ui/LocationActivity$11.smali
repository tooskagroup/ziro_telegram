.class Lorg/telegram/ui/LocationActivity$11;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didLoadedSearchResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "places":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;>;"
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->wasResults:Z
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/LocationActivity;->wasResults:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1602(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 469
    :cond_0
    return-void
.end method
