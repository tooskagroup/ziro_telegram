.class Lorg/telegram/ui/PhotoPickerActivity$8;
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
    .line 420
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 424
    return-void
.end method
