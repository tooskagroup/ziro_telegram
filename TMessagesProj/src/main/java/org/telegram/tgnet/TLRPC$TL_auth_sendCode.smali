.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_sendCode"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public allow_flashcall:Z

.field public api_hash:Ljava/lang/String;

.field public api_id:I

.field public current_number:Z

.field public flags:I

.field public phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16611
    const v0, -0x79510f14

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16610
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
    .line 16621
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16625
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16626
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->flags:I

    .line 16627
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16628
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16629
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 16630
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 16632
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16633
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16634
    return-void

    .line 16626
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
