.class public Lorg/telegram/tgnet/TLRPC$ChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatInvite"
.end annotation


# instance fields
.field public broadcast:Z

.field public channel:Z

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public flags:I

.field public isPublic:Z

.field public megagroup:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatInvite;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1904
    const/4 v0, 0x0

    .line 1905
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    sparse-switch p1, :sswitch_data_0

    .line 1913
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1914
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChatInvite"

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

    .line 1907
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;-><init>()V

    .line 1908
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    goto :goto_0

    .line 1910
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteAlready;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteAlready;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    goto :goto_0

    .line 1916
    :cond_0
    if-eqz v0, :cond_1

    .line 1917
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatInvite;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1919
    :cond_1
    return-object v0

    .line 1905
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c1664a0 -> :sswitch_0
        0x5a686d7c -> :sswitch_1
    .end sparse-switch
.end method
