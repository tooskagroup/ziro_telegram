.class Lorg/telegram/messenger/GcmPushListenerService$1;
.super Ljava/lang/Object;
.source "GcmPushListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmPushListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmPushListenerService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmPushListenerService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->this$0:Lorg/telegram/messenger/GcmPushListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 28
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 31
    :try_start_0
    iget-object v9, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v10, "loc_key"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "DC_UPDATE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 33
    iget-object v9, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v10, "custom"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "data":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "dc"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    .local v2, "dc":I
    const-string/jumbo v9, "addr"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "addr":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "parts":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    .line 51
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dc":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "parts":[Ljava/lang/String;
    :goto_0
    return-void

    .line 41
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dc":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    aget-object v4, v7, v9

    .line 42
    .local v4, "ip":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 43
    .local v8, "port":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dc":I
    .end local v4    # "ip":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v8    # "port":I
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived()V

    .line 50
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
