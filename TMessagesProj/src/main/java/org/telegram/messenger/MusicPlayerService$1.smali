.class Lorg/telegram/messenger/MusicPlayerService$1;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MusicPlayerService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MusicPlayerService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MusicPlayerService;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/messenger/MusicPlayerService$1;->this$0:Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService$1;->this$0:Lorg/telegram/messenger/MusicPlayerService;

    invoke-virtual {v0}, Lorg/telegram/messenger/MusicPlayerService;->stopSelf()V

    .line 67
    return-void
.end method
