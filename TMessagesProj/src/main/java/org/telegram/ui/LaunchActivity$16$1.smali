.class Lorg/telegram/ui/LaunchActivity$16$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$16;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$16;)V
    .locals 0

    .prologue
    .line 1865
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$16$1;->this$1:Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .locals 9
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .prologue
    const/4 v5, 0x0

    .line 1868
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$16$1;->this$1:Lorg/telegram/ui/LaunchActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$16;->val$waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1869
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1870
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1872
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    return-void
.end method
