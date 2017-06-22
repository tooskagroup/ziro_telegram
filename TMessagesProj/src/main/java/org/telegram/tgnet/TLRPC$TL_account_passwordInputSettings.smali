.class public Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_passwordInputSettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public email:Ljava/lang/String;

.field public flags:I

.field public hint:Ljava/lang/String;

.field public new_password_hash:[B

.field public new_salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15987
    const v0, -0x796e9215

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15986
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15996
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->constructor:I

    if-eq v1, p1, :cond_1

    .line 15997
    if-eqz p2, :cond_0

    .line 15998
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_account_passwordInputSettings"

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

    .line 16000
    :cond_0
    const/4 v0, 0x0

    .line 16005
    :goto_0
    return-object v0

    .line 16003
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;-><init>()V

    .line 16004
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16009
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    .line 16010
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 16011
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    .line 16013
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 16014
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 16016
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 16017
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 16019
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 16020
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 16022
    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16025
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16026
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16027
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 16028
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_salt:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16030
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 16031
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 16033
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 16034
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16036
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 16037
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16039
    :cond_3
    return-void
.end method
