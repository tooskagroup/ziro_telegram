.class Lorg/telegram/messenger/MessagesController$104;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V
    .locals 0

    .prologue
    .line 6421
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$104;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$104;->val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6424
    new-instance v0, Lorg/telegram/messenger/MessagesController$104$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$104$1;-><init>(Lorg/telegram/messenger/MessagesController$104;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6437
    return-void
.end method
