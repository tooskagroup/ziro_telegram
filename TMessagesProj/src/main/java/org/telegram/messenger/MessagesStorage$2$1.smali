.class Lorg/telegram/messenger/MessagesStorage$2$1;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$2;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$2$1;->this$1:Lorg/telegram/messenger/MessagesStorage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 560
    return-void
.end method
