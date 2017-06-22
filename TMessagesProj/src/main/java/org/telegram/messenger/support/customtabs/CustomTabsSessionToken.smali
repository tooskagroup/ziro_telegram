.class public Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

.field private final mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V
    .locals 1
    .param p1, "callbackBinder"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .line 43
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    return-object v0
.end method

.method public static getSessionTokenFromIntent(Landroid/content/Intent;)Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "android.support.customtabs.extra.SESSION"

    invoke-static {v0, v2}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 38
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-static {v1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 64
    instance-of v1, p1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 67
    check-cast v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .line 68
    .local v0, "token":Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCallback()Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
