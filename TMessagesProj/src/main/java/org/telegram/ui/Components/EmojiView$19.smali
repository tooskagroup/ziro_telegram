.class Lorg/telegram/ui/Components/EmojiView$19;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1149
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$19;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1152
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1153
    .local v0, "count1":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1154
    .local v1, "count2":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1157
    :cond_0
    if-nez v1, :cond_1

    .line 1158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1160
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1161
    const/4 v2, -0x1

    .line 1165
    :cond_2
    :goto_0
    return v2

    .line 1162
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1163
    const/4 v2, 0x1

    goto :goto_0
.end method
