.class public Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_getWallPapers"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16902
    const v0, -0x3fb3053e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16901
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 16906
    new-instance v3, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 16907
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 16908
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 16909
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p3}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v1

    .line 16910
    .local v1, "object":Lorg/telegram/tgnet/TLRPC$WallPaper;
    if-nez v1, :cond_1

    .line 16915
    .end local v1    # "object":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_0
    return-object v3

    .line 16913
    .restart local v1    # "object":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16919
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16920
    return-void
.end method
