.class public Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contactBlocked"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public date:I

.field public user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7548
    const v0, 0x561bc879

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7547
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7554
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->constructor:I

    if-eq v1, p1, :cond_1

    .line 7555
    if-eqz p2, :cond_0

    .line 7556
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_contactBlocked"

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

    .line 7558
    :cond_0
    const/4 v0, 0x0

    .line 7563
    :goto_0
    return-object v0

    .line 7561
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;-><init>()V

    .line 7562
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7567
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->user_id:I

    .line 7568
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->date:I

    .line 7569
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7572
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7573
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7574
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7575
    return-void
.end method
