.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;
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
.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->val$this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 403
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$300(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 464
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$302(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 407
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "text":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 410
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "ChooseCountry"

    const v10, 0x7f070165

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 412
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$602(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;I)I

    .line 463
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$302(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    goto :goto_0

    .line 415
    :cond_2
    const/4 v4, 0x0

    .line 416
    .local v4, "ok":Z
    const/4 v7, 0x0

    .line 417
    .local v7, "textToSet":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_4

    .line 418
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$302(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 419
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_2
    const/4 v8, 0x1

    if-lt v0, v8, :cond_3

    .line 420
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, "sub":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codesMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$700(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 423
    const/4 v4, 0x1

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 425
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v8

    move-object v6, v5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .end local v1    # "country":Ljava/lang/String;
    .end local v5    # "sub":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 430
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$302(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .end local v0    # "a":I
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codesMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$700(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .restart local v1    # "country":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 437
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$800(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 438
    .local v3, "index":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    .line 439
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreSelection:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$902(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    .line 440
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$800(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1000(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 442
    .local v2, "hint":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    if-eqz v2, :cond_7

    const/16 v8, 0x58

    const/16 v10, 0x2013

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 443
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$602(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;I)I

    .line 454
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_4
    if-nez v4, :cond_5

    .line 455
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 457
    :cond_5
    if-eqz v7, :cond_1

    .line 458
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 459
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    goto/16 :goto_1

    .line 419
    .restart local v0    # "a":I
    .restart local v5    # "sub":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 442
    .end local v0    # "a":I
    .end local v5    # "sub":Ljava/lang/String;
    .restart local v2    # "hint":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 445
    .end local v2    # "hint":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "WrongCountry"

    const v10, 0x7f070511

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 447
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x2

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$602(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;I)I

    goto :goto_4

    .line 450
    .end local v3    # "index":I
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "WrongCountry"

    const v10, 0x7f070511

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 452
    iget-object v8, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v9, 0x2

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I
    invoke-static {v8, v9}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$602(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;I)I

    goto/16 :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 394
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 399
    return-void
.end method
