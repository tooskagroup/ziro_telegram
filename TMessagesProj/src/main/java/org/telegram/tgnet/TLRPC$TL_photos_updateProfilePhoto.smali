.class public Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photos_updateProfilePhoto"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

.field public id:Lorg/telegram/tgnet/TLRPC$InputPhoto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17779
    const v0, -0x110a8660

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17778
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
    .line 17785
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17789
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17790
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17791
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17792
    return-void
.end method
