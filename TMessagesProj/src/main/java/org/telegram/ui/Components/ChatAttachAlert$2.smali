.class Lorg/telegram/ui/Components/ChatAttachAlert$2;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$2;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x0

    .line 406
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 407
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 408
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 409
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 410
    return-void
.end method
