.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_getLocated"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public limit:I

.field public radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18004
    const v0, 0x7f192d8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18003
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 18011
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_geochats_located;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18015
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18016
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18017
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;->radius:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18018
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getLocated;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18019
    return-void
.end method
