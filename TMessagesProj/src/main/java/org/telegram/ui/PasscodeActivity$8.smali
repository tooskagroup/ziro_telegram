.class Lorg/telegram/ui/PasscodeActivity$8;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$8;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # invokes: Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)V

    .line 470
    const/4 v0, 0x1

    return v0
.end method
