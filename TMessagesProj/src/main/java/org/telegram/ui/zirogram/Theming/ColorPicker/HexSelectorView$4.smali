.class Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$4;
.super Ljava/lang/Object;
.source "HexSelectorView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$4;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 91
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$4;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-virtual {v1}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->validateColorInTextView()V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$4;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    invoke-virtual {v1}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    .local v0, "in":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView$4;->this$0:Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;

    # getter for: Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->edit:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;->access$100(Lorg/telegram/ui/zirogram/Theming/ColorPicker/HexSelectorView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 95
    const/4 v1, 0x1

    .line 97
    .end local v0    # "in":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
