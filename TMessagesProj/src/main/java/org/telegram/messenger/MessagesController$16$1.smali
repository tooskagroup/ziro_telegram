.class Lorg/telegram/messenger/MessagesController$16$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$16;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$16;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$16;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$16$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1302
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$16;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController$16;->val$dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$16$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_0

    .line 1304
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$16$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

    .line 1305
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1306
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_spam:Z

    if-nez v3, :cond_1

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController$16;->val$dialogId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1313
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1315
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    :cond_0
    return-void

    .line 1310
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    .restart local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController$16;->val$dialogId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1311
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->peerSettingsDidLoaded:I

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$16$1;->this$1:Lorg/telegram/messenger/MessagesController$16;

    iget-wide v6, v6, Lorg/telegram/messenger/MessagesController$16;->val$dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
