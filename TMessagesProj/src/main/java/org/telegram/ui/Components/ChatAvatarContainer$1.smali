.class Lorg/telegram/ui/Components/ChatAvatarContainer$1;
.super Ljava/lang/Object;
.source "ChatAvatarContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    # getter for: Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->buildTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 97
    return-void
.end method
