.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;->val$this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    new-instance v0, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>()V

    .line 344
    .local v0, "fragment":Lorg/telegram/ui/CountrySelectActivity;
    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iget-object v1, v1, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChangePhoneActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 359
    return-void
.end method
