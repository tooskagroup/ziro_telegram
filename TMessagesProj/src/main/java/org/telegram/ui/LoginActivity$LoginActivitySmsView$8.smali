.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    .prologue
    .line 1547
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1550
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1645
    return-void
.end method
