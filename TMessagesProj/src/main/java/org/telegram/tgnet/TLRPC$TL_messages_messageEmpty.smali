.class public Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_messageEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14527
    const v0, 0x3f4e0648

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14526
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 14531
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;->constructor:I

    if-eq v1, p1, :cond_1

    .line 14532
    if-eqz p2, :cond_0

    .line 14533
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_messages_messageEmpty"

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

    .line 14535
    :cond_0
    const/4 v0, 0x0

    .line 14540
    :goto_0
    return-object v0

    .line 14538
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;-><init>()V

    .line 14539
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14544
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14545
    return-void
.end method
