.class final Lorg/telegram/messenger/browser/Browser$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
    .locals 4
    .param p1, "client"    # Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .prologue
    .line 90
    # setter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .line 91
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    # getter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    # getter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->warmup(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .line 105
    return-void
.end method
