.class public Lorg/telegram/tgnet/TLRPC$ContactLink;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7926
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7929
    const/4 v0, 0x0

    .line 7930
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    sparse-switch p1, :sswitch_data_0

    .line 7944
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7945
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ContactLink"

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

    .line 7932
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;-><init>()V

    .line 7933
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 7935
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;-><init>()V

    .line 7936
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 7938
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;-><init>()V

    .line 7939
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 7941
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 7947
    :cond_0
    if-eqz v0, :cond_1

    .line 7948
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7950
    :cond_1
    return-object v0

    .line 7930
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2afd3d30 -> :sswitch_1
        -0x1122c53 -> :sswitch_0
        0x268f3f59 -> :sswitch_2
        0x5f4f9247 -> :sswitch_3
    .end sparse-switch
.end method
