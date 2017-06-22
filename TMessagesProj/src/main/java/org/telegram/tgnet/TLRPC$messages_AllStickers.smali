.class public Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_AllStickers"
.end annotation


# instance fields
.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public hash:Ljava/lang/String;

.field public packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_stickerPack;",
            ">;"
        }
    .end annotation
.end field

.field public sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10329
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->sets:Ljava/util/ArrayList;

    .line 10332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->packs:Ljava/util/ArrayList;

    .line 10333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10336
    const/4 v0, 0x0

    .line 10337
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    sparse-switch p1, :sswitch_data_0

    .line 10345
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10346
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in messages_AllStickers"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10339
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;-><init>()V

    .line 10340
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    goto :goto_0

    .line 10342
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickersNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickersNotModified;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_AllStickers;
    goto :goto_0

    .line 10348
    :cond_0
    if-eqz v0, :cond_1

    .line 10349
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10351
    :cond_1
    return-object v0

    .line 10337
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1799fd3d -> :sswitch_1
        -0x1202bfa1 -> :sswitch_0
    .end sparse-switch
.end method
