.class public Lorg/telegram/messenger/LocaleController$PluralRules_Breton;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Breton"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1704
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1706
    if-nez p1, :cond_0

    .line 1717
    :goto_0
    return v0

    .line 1708
    :cond_0
    if-ne p1, v0, :cond_1

    move v0, v1

    .line 1709
    goto :goto_0

    .line 1710
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1711
    const/4 v0, 0x4

    goto :goto_0

    .line 1712
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1713
    const/16 v0, 0x8

    goto :goto_0

    .line 1714
    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 1715
    const/16 v0, 0x10

    goto :goto_0

    .line 1717
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
