.class Lorg/telegram/messenger/MessagesController$65;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .prologue
    .line 3859
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$65;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$65;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3862
    if-eqz p2, :cond_0

    .line 3863
    new-instance v1, Lorg/telegram/messenger/MessagesController$65$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/MessagesController$65$1;-><init>(Lorg/telegram/messenger/MessagesController$65;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3888
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 3874
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 3875
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$65;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 3876
    new-instance v1, Lorg/telegram/messenger/MessagesController$65$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MessagesController$65$2;-><init>(Lorg/telegram/messenger/MessagesController$65;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
