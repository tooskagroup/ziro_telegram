.class Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$5;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$5;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$5;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->validateColorInTextView()V

    .line 105
    return-void
.end method
