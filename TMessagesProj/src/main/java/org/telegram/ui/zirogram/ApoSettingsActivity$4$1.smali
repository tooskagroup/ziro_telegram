.class Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;
.super Ljava/lang/Object;
.source "ApoSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/ApoSettingsActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/zirogram/ApoSettingsActivity$4;

.field final synthetic val$maskValues:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/ApoSettingsActivity$4;[Z)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;->this$1:Lorg/telegram/ui/zirogram/ApoSettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;->val$maskValues:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 405
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 406
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 407
    .local v1, "num":I
    iget-object v4, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;->val$maskValues:[Z

    iget-object v2, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;->val$maskValues:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    aput-boolean v2, v4, v1

    .line 408
    iget-object v2, p0, Lorg/telegram/ui/zirogram/ApoSettingsActivity$4$1;->val$maskValues:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 409
    return-void

    .line 407
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
