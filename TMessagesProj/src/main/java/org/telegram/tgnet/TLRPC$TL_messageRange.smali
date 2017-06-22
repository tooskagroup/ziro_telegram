.class public Lorg/telegram/tgnet/TLRPC$TL_messageRange;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageRange"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public max_id:I

.field public min_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11904
    const v0, 0xae30253

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11903
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageRange;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11910
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->constructor:I

    if-eq v1, p1, :cond_1

    .line 11911
    if-eqz p2, :cond_0

    .line 11912
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_messageRange"

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

    .line 11914
    :cond_0
    const/4 v0, 0x0

    .line 11919
    :goto_0
    return-object v0

    .line 11917
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageRange;-><init>()V

    .line 11918
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messageRange;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 11923
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->min_id:I

    .line 11924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->max_id:I

    .line 11925
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 11928
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11931
    return-void
.end method
