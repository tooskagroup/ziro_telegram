.class Lorg/telegram/ui/PopupNotificationActivity$12;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 893
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 894
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 896
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 897
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 898
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 899
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 900
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$12;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$1100(Lorg/telegram/ui/PopupNotificationActivity;I)V

    .line 903
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
