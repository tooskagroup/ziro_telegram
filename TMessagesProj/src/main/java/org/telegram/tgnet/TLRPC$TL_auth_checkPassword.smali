.class public Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_checkPassword"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public password_hash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18756
    const v0, 0xa63011e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18755
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
    .line 18761
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18765
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18766
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;->password_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 18767
    return-void
.end method
