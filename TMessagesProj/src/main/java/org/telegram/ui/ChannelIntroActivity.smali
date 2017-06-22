.class public Lorg/telegram/ui/ChannelIntroActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelIntroActivity.java"


# instance fields
.field private createChannelText:Landroid/widget/TextView;

.field private descriptionText:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private whatIsChannelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelIntroActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelIntroActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelIntroActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelIntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelIntroActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v4, 0x1

    .line 37
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 38
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f02022a

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 39
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, 0x2f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(I)V

    .line 40
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 41
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 44
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ChannelIntroActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelIntroActivity$1;-><init>(Lorg/telegram/ui/ChannelIntroActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 53
    new-instance v1, Lorg/telegram/ui/ChannelIntroActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelIntroActivity$2;-><init>(Lorg/telegram/ui/ChannelIntroActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->fragmentView:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ChannelIntroActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    new-instance v1, Lorg/telegram/ui/ChannelIntroActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelIntroActivity$3;-><init>(Lorg/telegram/ui/ChannelIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    const v2, -0xdededf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    const-string/jumbo v2, "ChannelAlertTitle"

    const v3, 0x7f07010b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->whatIsChannelText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    const v2, -0x878788

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    const-string/jumbo v2, "ChannelAlertText"

    const v3, 0x7f07010a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    const v2, -0xb37136

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    const-string/jumbo v2, "ChannelAlertCreate"

    const v3, 0x7f070109

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->createChannelText:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/ChannelIntroActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelIntroActivity$4;-><init>(Lorg/telegram/ui/ChannelIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method
