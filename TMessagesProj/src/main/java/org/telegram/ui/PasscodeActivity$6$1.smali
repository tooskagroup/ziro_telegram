.class Lorg/telegram/ui/PasscodeActivity$6$1;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$6;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6$1;->this$1:Lorg/telegram/ui/PasscodeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x5

    const v5, 0x7f0700c8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 356
    if-nez p1, :cond_0

    .line 357
    const-string/jumbo v0, "AutoLockDisabled"

    const v1, 0x7f0700c7

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 358
    :cond_0
    if-ne p1, v3, :cond_1

    .line 359
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Minutes"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 361
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Minutes"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 363
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Hours"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 365
    const-string/jumbo v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Hours"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method
