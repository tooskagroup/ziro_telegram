.class Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$3;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 75
    iput-object p1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$3;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$3;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-virtual {v0}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->validateColorInTextView()V

    .line 86
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 78
    return-void
.end method
