.class public Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedChatInvite"
.end annotation


# instance fields
.field public link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14923
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 14927
    const/4 v0, 0x0

    .line 14928
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    sparse-switch p1, :sswitch_data_0

    .line 14936
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 14937
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ExportedChatInvite"

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

    .line 14930
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;-><init>()V

    .line 14931
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    goto :goto_0

    .line 14933
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    goto :goto_0

    .line 14939
    :cond_0
    if-eqz v0, :cond_1

    .line 14940
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 14942
    :cond_1
    return-object v0

    .line 14928
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d1fa44 -> :sswitch_0
        0x69df3769 -> :sswitch_1
    .end sparse-switch
.end method
