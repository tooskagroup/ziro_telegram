.class Lorg/telegram/messenger/ContactsController$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$1;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$1;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    .line 186
    return-void
.end method
