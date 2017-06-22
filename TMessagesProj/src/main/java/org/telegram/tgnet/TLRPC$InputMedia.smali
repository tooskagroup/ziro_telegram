.class public Lorg/telegram/tgnet/TLRPC$InputMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$DocumentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public first_name:Ljava/lang/String;

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public last_name:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8127
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 8131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 8145
    const/4 v0, 0x0

    .line 8146
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    sparse-switch p1, :sswitch_data_0

    .line 8178
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 8179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputMedia"

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

    .line 8148
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 8149
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8151
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 8152
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8154
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .line 8155
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8157
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 8158
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8160
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 8161
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8163
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 8164
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8166
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 8167
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8169
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 8170
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8172
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 8173
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8175
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_0

    .line 8181
    :cond_0
    if-eqz v0, :cond_1

    .line 8182
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 8184
    :cond_1
    return-object v0

    .line 8146
    nop

    :sswitch_data_0
    .sparse-switch
        -0x699b0a81 -> :sswitch_9
        -0x591ba679 -> :sswitch_4
        -0x529ecb6f -> :sswitch_0
        -0x16404b0d -> :sswitch_8
        -0x8500e40 -> :sswitch_1
        -0x63bbebc -> :sswitch_2
        0x1a77f29c -> :sswitch_5
        0x1d89306d -> :sswitch_7
        0x2827a81a -> :sswitch_3
        0x4843b0fd -> :sswitch_6
    .end sparse-switch
.end method
