.class Lorg/telegram/messenger/MessagesStorage$66;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$downloadMediaMaskFinal:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0

    .prologue
    .line 4239
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$66;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$downloadMediaMaskFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4242
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$66;->val$downloadMediaMaskFinal:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 4243
    return-void
.end method
