.class public Lorg/telegram/tgnet/TLRPC$ChatPhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatPhoto"
.end annotation


# instance fields
.field public photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    sparse-switch p1, :sswitch_data_0

    .line 164
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChatPhoto"

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

    .line 158
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    .line 159
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    goto :goto_0

    .line 161
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    goto :goto_0

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 170
    :cond_1
    return-object v0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x37c1011c -> :sswitch_0
        0x6153276a -> :sswitch_1
    .end sparse-switch
.end method
