.class Lorg/telegram/ui/Adapters/MentionsAdapter$6;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$6;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedImage(Lorg/telegram/ui/Cells/ContextLinkCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ContextLinkCell;

    .prologue
    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$6;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    .line 803
    return-void
.end method
