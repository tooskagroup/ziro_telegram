.class Lorg/telegram/ui/ActionBar/ActionBarLayout$9;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$previousFragmentFinal:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$previousFragmentFinal:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$1500(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    # getter for: Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$previousFragmentFinal:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;->val$previousFragmentFinal:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 920
    return-void
.end method
