.class Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;
.super Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-static {v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "var4":Landroid/os/RemoteException;
    const-string/jumbo v1, "CustomTabsSessionToken"

    const-string/jumbo v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
