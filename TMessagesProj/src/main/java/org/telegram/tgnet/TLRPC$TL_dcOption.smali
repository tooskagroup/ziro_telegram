.class public Lorg/telegram/tgnet/TLRPC$TL_dcOption;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_dcOption"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public id:I

.field public ip_address:Ljava/lang/String;

.field public ipv6:Z

.field public media_only:Z

.field public port:I

.field public tcpo_only:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16043
    const v0, 0x5d8c6cc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16042
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 16054
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->constructor:I

    if-eq v1, p1, :cond_1

    .line 16055
    if-eqz p2, :cond_0

    .line 16056
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_dcOption"

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

    .line 16058
    :cond_0
    const/4 v0, 0x0

    .line 16063
    :goto_0
    return-object v0

    .line 16061
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;-><init>()V

    .line 16062
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16067
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 16068
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ipv6:Z

    .line 16069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->media_only:Z

    .line 16070
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->tcpo_only:Z

    .line 16071
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->id:I

    .line 16072
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ip_address:Ljava/lang/String;

    .line 16073
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->port:I

    .line 16074
    return-void

    :cond_0
    move v0, v2

    .line 16068
    goto :goto_0

    :cond_1
    move v0, v2

    .line 16069
    goto :goto_1

    :cond_2
    move v1, v2

    .line 16070
    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16077
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16078
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ipv6:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 16079
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->media_only:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 16080
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->tcpo_only:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 16081
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16082
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16083
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ip_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16084
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->port:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16085
    return-void

    .line 16078
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 16079
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 16080
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2
.end method
