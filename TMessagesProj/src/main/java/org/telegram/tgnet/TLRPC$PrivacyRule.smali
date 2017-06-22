.class public Lorg/telegram/tgnet/TLRPC$PrivacyRule;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyRule"
.end annotation


# instance fields
.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2459
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2463
    const/4 v0, 0x0

    .line 2464
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    sparse-switch p1, :sswitch_data_0

    .line 2484
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2485
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PrivacyRule"

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

    .line 2466
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;-><init>()V

    .line 2467
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2469
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;-><init>()V

    .line 2470
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2472
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;-><init>()V

    .line 2473
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2475
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowContacts;-><init>()V

    .line 2476
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2478
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;-><init>()V

    .line 2479
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2481
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_0

    .line 2487
    :cond_0
    if-eqz v0, :cond_1

    .line 2488
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2490
    :cond_1
    return-object v0

    .line 2464
    nop

    :sswitch_data_0
    .sparse-switch
        -0x748c189d -> :sswitch_1
        -0x77705e6 -> :sswitch_3
        -0x1e454 -> :sswitch_2
        0xc7f49b7 -> :sswitch_5
        0x4d5bbe0c -> :sswitch_0
        0x65427b82 -> :sswitch_4
    .end sparse-switch
.end method
