.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 254
    return-void
.end method
