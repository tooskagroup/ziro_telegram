.class Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAnimator"
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private startRadius:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p2, "x1"    # Lorg/telegram/ui/Components/ChatAttachAlert$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method
