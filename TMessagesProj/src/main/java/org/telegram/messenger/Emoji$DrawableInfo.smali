.class Lorg/telegram/messenger/Emoji$DrawableInfo;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableInfo"
.end annotation


# instance fields
.field public page:B

.field public page2:B

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;BB)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "p"    # B
    .param p3, "p2"    # B

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->rect:Landroid/graphics/Rect;

    .line 296
    iput-byte p2, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    .line 297
    iput-byte p3, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    .line 298
    return-void
.end method
