.class public Lorg/telegram/ui/ChangeNameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeNameActivity.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private headerLabelView:Landroid/view/View;

.field private lastNameField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeNameActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/ChangeNameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeNameActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method private saveName()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 159
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 160
    .local v0, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "newFirst":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "newLast":Ljava/lang/String;
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    .line 169
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;
    const/4 v5, 0x3

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    .line 170
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 171
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 173
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_3

    .line 174
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 175
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 177
    :cond_3
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 178
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChangeNameActivity$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChangeNameActivity$5;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x5

    const/4 v0, -0x1

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v11, 0x1

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "EditName"

    const v4, 0x7f0701c7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$1;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 71
    .local v7, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v1, 0x7f020152

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v7, v11, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->doneButton:Landroid/view/View;

    .line 73
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 74
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v8, :cond_0

    .line 75
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 78
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    iput-object v6, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$2;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 96
    iget-object v3, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    move v1, v9

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const v3, 0xc000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v3, "FirstName"

    const v4, 0x7f0701fa

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 101
    iget-object v10, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const/16 v1, 0x24

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$3;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 114
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const v3, 0xc000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v3, "LastName"

    const v4, 0x7f0702a2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 126
    iget-object v9, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/16 v1, 0x24

    const/high16 v3, 0x41800000    # 16.0f

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeNameActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeNameActivity$4;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    if-eqz v8, :cond_1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 96
    :cond_2
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 121
    :cond_3
    const/4 v9, 0x3

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 149
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 150
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 153
    iget-object v2, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    iget-object v2, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Lorg/telegram/ui/ChangeNameActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeNameActivity$6;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 201
    :cond_0
    return-void
.end method
