.class public Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;
.super Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_sendMessageRecordVideoAction"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2225
    const v0, -0x5e782991

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2224
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2229
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2230
    return-void
.end method
