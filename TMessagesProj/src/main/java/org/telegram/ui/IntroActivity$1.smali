.class Lorg/telegram/ui/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 155
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$100(Lorg/telegram/ui/IntroActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/IntroActivity;->access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v5, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lorg/telegram/ui/IntroActivity;->access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    # setter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v4, v5}, Lorg/telegram/ui/IntroActivity;->access$102(Lorg/telegram/ui/IntroActivity;I)I

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 161
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 162
    .local v1, "fadeoutImage":Landroid/widget/ImageView;
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 169
    .local v0, "fadeinImage":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->icons:[I
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$500(Lorg/telegram/ui/IntroActivity;)[I

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v5}, Lorg/telegram/ui/IntroActivity;->access$100(Lorg/telegram/ui/IntroActivity;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 172
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 174
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    const v5, 0x7f04000b

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 175
    .local v3, "outAnimation":Landroid/view/animation/Animation;
    new-instance v4, Lorg/telegram/ui/IntroActivity$1$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/IntroActivity$1$1;-><init>(Lorg/telegram/ui/IntroActivity$1;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    const v5, 0x7f04000a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 192
    .local v2, "inAnimation":Landroid/view/animation/Animation;
    new-instance v4, Lorg/telegram/ui/IntroActivity$1$2;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/IntroActivity$1$2;-><init>(Lorg/telegram/ui/IntroActivity$1;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    .end local v0    # "fadeinImage":Landroid/widget/ImageView;
    .end local v1    # "fadeoutImage":Landroid/widget/ImageView;
    .end local v2    # "inAnimation":Landroid/view/animation/Animation;
    .end local v3    # "outAnimation":Landroid/view/animation/Animation;
    :cond_1
    return-void

    .line 165
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 166
    .restart local v1    # "fadeoutImage":Landroid/widget/ImageView;
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "fadeinImage":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 150
    return-void
.end method
