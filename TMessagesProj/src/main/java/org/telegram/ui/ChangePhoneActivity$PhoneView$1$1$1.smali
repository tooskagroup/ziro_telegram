.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;->didSelectCountry(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1$1;->this$3:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1$1;->this$3:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 352
    return-void
.end method
