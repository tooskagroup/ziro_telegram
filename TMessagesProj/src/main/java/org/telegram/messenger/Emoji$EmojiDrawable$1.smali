.class Lorg/telegram/messenger/Emoji$EmojiDrawable$1;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/Emoji$EmojiDrawable;->draw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;->this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;->this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;

    # getter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;
    invoke-static {v0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object v0

    iget-byte v0, v0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;->this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;

    # getter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;
    invoke-static {v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object v1

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    # invokes: Lorg/telegram/messenger/Emoji;->loadEmoji(II)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/Emoji;->access$600(II)V

    .line 254
    # getter for: Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$400()[[Z

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;->this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;

    # getter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;
    invoke-static {v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object v1

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;->this$0:Lorg/telegram/messenger/Emoji$EmojiDrawable;

    # getter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;
    invoke-static {v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object v1

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 255
    return-void
.end method
