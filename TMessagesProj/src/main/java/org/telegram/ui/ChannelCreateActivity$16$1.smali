.class Lorg/telegram/ui/ChannelCreateActivity$16$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$16;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$16;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iget-object v1, v0, Lorg/telegram/ui/ChannelCreateActivity$16;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2102(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$16;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$3502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$16;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$3600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Cells/TextBlockCell;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$16;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2100(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$16$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$16;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2100(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 868
    return-void

    .line 867
    :cond_1
    const-string/jumbo v0, "Loading"

    const v2, 0x7f0702d1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
