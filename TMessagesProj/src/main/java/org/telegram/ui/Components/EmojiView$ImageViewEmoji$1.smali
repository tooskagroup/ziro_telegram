.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->sendEmoji(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 120
    return-void
.end method
