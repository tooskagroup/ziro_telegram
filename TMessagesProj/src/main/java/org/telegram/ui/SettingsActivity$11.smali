.class Lorg/telegram/ui/SettingsActivity$11;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->needLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;

.field final synthetic val$setVisible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;Z)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/SettingsActivity$11;->val$setVisible:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3900(Lorg/telegram/ui/SettingsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3900(Lorg/telegram/ui/SettingsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4000(Lorg/telegram/ui/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/SettingsActivity$11;->val$setVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$11;->this$0:Lorg/telegram/ui/SettingsActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/SettingsActivity;->access$3902(Lorg/telegram/ui/SettingsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1120
    :cond_0
    return-void

    .line 1117
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
