.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionChatAddUser"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6654
    const v0, 0x488a7337

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6653
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6658
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 6659
    .local v2, "magic":I
    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_0

    .line 6660
    if-eqz p2, :cond_1

    .line 6661
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong Vector magic, got %x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6665
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 6666
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6667
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6669
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6672
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6673
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6674
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6675
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6676
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6677
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6679
    :cond_0
    return-void
.end method
