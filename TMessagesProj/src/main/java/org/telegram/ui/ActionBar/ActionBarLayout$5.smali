.class Lorg/telegram/ui/ActionBar/ActionBarLayout$5;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$removeLast:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$removeLast:Z

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$removeLast:Z

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 743
    return-void
.end method
