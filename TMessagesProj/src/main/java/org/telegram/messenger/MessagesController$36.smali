.class Lorg/telegram/messenger/MessagesController$36;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;J)V
    .locals 0

    .prologue
    .line 1929
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$36;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$36;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1932
    new-instance v0, Lorg/telegram/messenger/MessagesController$36$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$36$1;-><init>(Lorg/telegram/messenger/MessagesController$36;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1938
    return-void
.end method
