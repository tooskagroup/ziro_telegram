.class public Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
.super Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_appUpdate"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1988
    const v0, -0x76780cef

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1987
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1992
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->id:I

    .line 1993
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->critical:Z

    .line 1994
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    .line 1995
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 1996
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1999
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2000
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2001
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->critical:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 2002
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2004
    return-void
.end method
