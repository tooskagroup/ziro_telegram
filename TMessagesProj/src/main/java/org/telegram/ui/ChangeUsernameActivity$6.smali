.class Lorg/telegram/ui/ChangeUsernameActivity$6;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$6;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 338
    if-nez p2, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 340
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$6$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChangeUsernameActivity$6$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 369
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$6$2;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChangeUsernameActivity$6$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$6;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
