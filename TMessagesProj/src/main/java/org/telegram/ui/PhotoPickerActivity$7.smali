.class Lorg/telegram/ui/PhotoPickerActivity$7;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(Z)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$7;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    .line 418
    return-void
.end method
