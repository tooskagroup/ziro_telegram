.class Lorg/telegram/ui/TwoStepVerificationActivity$10;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->setNewPassword(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

.field final synthetic val$clear:Z

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->val$clear:Z

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$10;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 731
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/TwoStepVerificationActivity$10$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method
