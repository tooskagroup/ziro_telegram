.class Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$3$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$3$1$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 254
    .local v0, "res1":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$index:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$newStickerSets:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$newStickerSets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 257
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$3$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    iget-object v4, v4, Lorg/telegram/messenger/query/StickersQuery$3$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->access$100(Ljava/util/ArrayList;ZII)V

    .line 259
    :cond_0
    return-void
.end method
