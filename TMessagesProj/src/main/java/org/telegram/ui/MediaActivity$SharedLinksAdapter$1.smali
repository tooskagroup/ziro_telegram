.class Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 1
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/MediaActivity;->access$3600(Lorg/telegram/ui/MediaActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)V

    .line 1373
    return-void
.end method
