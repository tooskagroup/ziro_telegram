.class Lorg/telegram/messenger/MessagesController$60;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog_id:J

.field final synthetic val$max_positive_id:I

.field final synthetic val$popup:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JZI)V
    .locals 0

    .prologue
    .line 3655
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog_id:J

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$60;->val$popup:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesController$60;->val$max_positive_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3658
    new-instance v0, Lorg/telegram/messenger/MessagesController$60$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$60$1;-><init>(Lorg/telegram/messenger/MessagesController$60;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3679
    return-void
.end method
