.class public Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;
.super Lorg/telegram/tgnet/TLRPC$account_Password;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_noPassword"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10742
    const v0, -0x692543e8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10741
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_Password;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 10746
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->new_salt:[B

    .line 10747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 10748
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 10751
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10752
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->new_salt:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 10753
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10754
    return-void
.end method
