.class Lorg/telegram/ui/Components/EmojiView$5;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 634
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$5;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 636
    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 640
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$5;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v2, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 641
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v3, v3

    :goto_0
    iput v3, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 642
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-eqz v5, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v4, v4

    :cond_0
    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    .line 643
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 644
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 645
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_1

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_4

    .line 646
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    .line 647
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    .line 651
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$5;->size:Lorg/telegram/ui/Components/Size;

    return-object v3

    .end local v1    # "b":I
    :cond_3
    move v3, v4

    .line 641
    goto :goto_0

    .line 643
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v1    # "b":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
