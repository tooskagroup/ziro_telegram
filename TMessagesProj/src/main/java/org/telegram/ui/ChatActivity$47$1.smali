.class Lorg/telegram/ui/ChatActivity$47$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$47;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$47;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$47;)V
    .locals 0

    .prologue
    .line 3047
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$47$1;->this$1:Lorg/telegram/ui/ChatActivity$47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3050
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$47$1;->this$1:Lorg/telegram/ui/ChatActivity$47;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$47;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockUser(I)V

    .line 3051
    return-void
.end method
