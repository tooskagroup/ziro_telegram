.class Lorg/telegram/ui/Components/ShareAlert$1$1;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$002(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$302(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    .line 149
    return-void
.end method
