.class Lorg/telegram/ui/DialogsActivity$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$1;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->loadRecources(Landroid/content/Context;)V

    .line 268
    return-void
.end method
