.class Lorg/telegram/messenger/MessagesController$66;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 3901
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$66;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$66;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$66;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3904
    if-nez p2, :cond_0

    .line 3905
    new-instance v1, Lorg/telegram/messenger/MessagesController$66$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$66$1;-><init>(Lorg/telegram/messenger/MessagesController$66;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object v0, p1

    .line 3917
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 3918
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$66;->this$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 3938
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :goto_0
    return-void

    .line 3920
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    new-instance v1, Lorg/telegram/messenger/MessagesController$66$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$66$2;-><init>(Lorg/telegram/messenger/MessagesController$66;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
