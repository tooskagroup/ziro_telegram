.class Lorg/telegram/ui/Components/EmojiView$GifsAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView$GifsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 1881
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifsAdapter$Holder;->this$1:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    .line 1882
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1883
    return-void
.end method
