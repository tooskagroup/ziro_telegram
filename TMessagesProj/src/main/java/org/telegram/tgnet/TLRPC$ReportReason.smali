.class public Lorg/telegram/tgnet/TLRPC$ReportReason;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportReason"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6850
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReportReason;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6854
    const/4 v0, 0x0

    .line 6855
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    sparse-switch p1, :sswitch_data_0

    .line 6869
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 6870
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ReportReason"

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

    .line 6857
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;-><init>()V

    .line 6858
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 6860
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;-><init>()V

    .line 6861
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 6863
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;-><init>()V

    .line 6864
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 6866
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_0

    .line 6872
    :cond_0
    if-eqz v0, :cond_1

    .line 6873
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ReportReason;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6875
    :cond_1
    return-object v0

    .line 6855
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e8b92f6 -> :sswitch_2
        0x1e22c78d -> :sswitch_1
        0x2e59d922 -> :sswitch_3
        0x58dbcab8 -> :sswitch_0
    .end sparse-switch
.end method
