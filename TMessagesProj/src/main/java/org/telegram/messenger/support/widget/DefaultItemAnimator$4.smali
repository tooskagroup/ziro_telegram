.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;
.super Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateRemoveImpl(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 209
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$700(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # invokes: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$800(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)V

    .line 211
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$4;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchRemoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 202
    return-void
.end method
