.class Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;
.super Ljava/lang/Object;
.source "BaseSearchAdapterRecycler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->val$currentReqId:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    # getter for: Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastReqId:I
    invoke-static {v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->access$000(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 67
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_2

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 69
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-boolean v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->val$allowChats:Z

    if-eqz v2, :cond_0

    .line 71
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->globalSearch:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "a":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->globalSearch:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->val$query:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastFoundUsername:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->notifyDataSetChanged()V

    .line 82
    .end local v0    # "a":I
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_found;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1$1;->this$1:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->access$102(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;I)I

    .line 83
    return-void
.end method
