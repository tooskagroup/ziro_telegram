.class public Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
.super Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_replyKeyboardMarkup"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3810
    const v0, 0x3502758c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3809
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3814
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 3815
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    .line 3816
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    .line 3817
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->selective:Z

    .line 3818
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 3819
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_3

    .line 3820
    if-eqz p2, :cond_4

    .line 3821
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_0
    move v4, v6

    .line 3815
    goto :goto_0

    :cond_1
    move v4, v6

    .line 3816
    goto :goto_1

    :cond_2
    move v4, v6

    .line 3817
    goto :goto_2

    .line 3825
    .restart local v2    # "magic":I
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 3826
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 3827
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    move-result-object v3

    .line 3828
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    if-nez v3, :cond_5

    .line 3833
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_4
    return-void

    .line 3831
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_5
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3826
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3836
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3837
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 3838
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 3839
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->selective:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 3840
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3841
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3842
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3843
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3844
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 3845
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3844
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3837
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 3838
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 3839
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_2

    .line 3847
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3
    return-void
.end method
