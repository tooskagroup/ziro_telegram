.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->val$this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/16 v11, 0x20

    const/4 v10, 0x3

    .line 517
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1100(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 561
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v5

    .line 521
    .local v5, "start":I
    const-string/jumbo v4, "0123456789"

    .line 522
    .local v4, "phoneChars":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "str":Ljava/lang/String;
    iget v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-ne v7, v10, :cond_1

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    invoke-virtual {v6, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    add-int/lit8 v5, v5, -0x1

    .line 527
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 529
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "ch":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 531
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v2    # "ch":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v8, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v7, v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1102(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 535
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "hint":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 537
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 538
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 539
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_4

    .line 540
    invoke-virtual {v1, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v0, v0, 0x1

    .line 542
    if-ne v5, v0, :cond_4

    iget v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v7, v13, :cond_4

    iget v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v7, v10, :cond_4

    .line 543
    add-int/lit8 v5, v5, 0x1

    .line 537
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 547
    :cond_5
    invoke-virtual {v1, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v7, v0, 0x1

    if-ne v5, v7, :cond_6

    iget v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v7, v13, :cond_6

    iget v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v7, v10, :cond_6

    .line 549
    add-int/lit8 v5, v5, 0x1

    .line 555
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    if-ltz v5, :cond_7

    .line 557
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v8

    if-gt v5, v8, :cond_8

    .end local v5    # "start":I
    :goto_3
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 559
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v7}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    .line 560
    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v7, v12}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1102(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    goto/16 :goto_0

    .line 557
    .restart local v5    # "start":I
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v5

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v0, 0x1

    .line 496
    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    .line 497
    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    .line 508
    :goto_0
    return-void

    .line 498
    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 499
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    .line 500
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    .line 501
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    goto :goto_0

    .line 506
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 513
    return-void
.end method
