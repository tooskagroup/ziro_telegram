.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->onNextPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 752
    new-instance v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method
