.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    # invokes: Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->access$100(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)Z

    .line 213
    return-void
.end method
