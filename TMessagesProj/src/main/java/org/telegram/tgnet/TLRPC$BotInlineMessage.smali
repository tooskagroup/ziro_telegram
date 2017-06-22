.class public Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotInlineMessage"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public last_name:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public title:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4824
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4841
    const/4 v0, 0x0

    .line 4842
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    sparse-switch p1, :sswitch_data_0

    .line 4859
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4860
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in BotInlineMessage"

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

    .line 4844
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;-><init>()V

    .line 4845
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    goto :goto_0

    .line 4847
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;-><init>()V

    .line 4848
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    goto :goto_0

    .line 4850
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;-><init>()V

    .line 4851
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    goto :goto_0

    .line 4853
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;-><init>()V

    .line 4854
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    goto :goto_0

    .line 4856
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
    goto :goto_0

    .line 4862
    :cond_0
    if-eqz v0, :cond_1

    .line 4863
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4865
    :cond_1
    return-object v0

    .line 4842
    nop

    :sswitch_data_0
    .sparse-switch
        -0x73809a1e -> :sswitch_2
        0xa74b15b -> :sswitch_1
        0x35edb4d4 -> :sswitch_3
        0x3a8fd8b8 -> :sswitch_0
        0x4366232e -> :sswitch_4
    .end sparse-switch
.end method
