.class public Lorg/telegram/tgnet/TLRPC$TL_nearestDc;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_nearestDc"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public country:Ljava/lang/String;

.field public nearest_dc:I

.field public this_dc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15678
    const v0, -0x71e5e88b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15677
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_nearestDc;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15685
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->constructor:I

    if-eq v1, p1, :cond_1

    .line 15686
    if-eqz p2, :cond_0

    .line 15687
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_nearestDc"

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

    .line 15689
    :cond_0
    const/4 v0, 0x0

    .line 15694
    :goto_0
    return-object v0

    .line 15692
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;-><init>()V

    .line 15693
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_nearestDc;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 15698
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->country:Ljava/lang/String;

    .line 15699
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->this_dc:I

    .line 15700
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->nearest_dc:I

    .line 15701
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15704
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15705
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15706
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->this_dc:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15707
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_nearestDc;->nearest_dc:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15708
    return-void
.end method
