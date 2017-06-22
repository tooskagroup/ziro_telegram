.class public Lorg/telegram/tgnet/TLRPC$TL_channel;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13683
    const v0, -0x5eb235ae

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13682
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13686
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13687
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    .line 13688
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->kicked:Z

    .line 13689
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    .line 13690
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->editor:Z

    .line 13691
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->moderator:Z

    .line 13692
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    .line 13693
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    .line 13694
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    .line 13695
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    .line 13696
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    .line 13697
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    .line 13698
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    :goto_b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    .line 13699
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    .line 13700
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 13701
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    .line 13703
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    .line 13704
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 13705
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    .line 13707
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 13708
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    .line 13709
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    .line 13710
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 13711
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    .line 13713
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 13687
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 13688
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 13689
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 13690
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 13691
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 13692
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 13693
    goto/16 :goto_6

    :cond_a
    move v0, v2

    .line 13694
    goto/16 :goto_7

    :cond_b
    move v0, v2

    .line 13695
    goto :goto_8

    :cond_c
    move v0, v2

    .line 13696
    goto :goto_9

    :cond_d
    move v0, v2

    .line 13697
    goto :goto_a

    :cond_e
    move v1, v2

    .line 13698
    goto :goto_b
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13716
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13717
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13718
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->kicked:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13719
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13720
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->editor:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13721
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->moderator:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13722
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13723
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13724
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13725
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13726
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13727
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13728
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 13729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13730
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13731
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 13732
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13734
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13735
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 13736
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13738
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13739
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13740
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13741
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 13742
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13744
    :cond_2
    return-void

    .line 13717
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 13718
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 13719
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 13720
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto/16 :goto_3

    .line 13721
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_4

    .line 13722
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_5

    .line 13723
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_6

    .line 13724
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_7

    .line 13725
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_8

    .line 13726
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_9

    .line 13727
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_a

    .line 13728
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_b
.end method
