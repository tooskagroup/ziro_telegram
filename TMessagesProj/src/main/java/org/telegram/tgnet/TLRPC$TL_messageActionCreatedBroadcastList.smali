.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionCreatedBroadcastList"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6697
    const v0, 0x55555557

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6696
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6701
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6702
    return-void
.end method
