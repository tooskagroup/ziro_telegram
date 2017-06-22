.class public Lorg/telegram/ui/Cells/ShareDialogCell;
.super Landroid/widget/FrameLayout;
.source "ShareDialogCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x18

    const/4 v9, 0x2

    const/high16 v7, 0x40c00000    # 6.0f

    const/16 v2, 0x31

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 39
    const v0, 0x7f0201ab

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setBackgroundResource(I)V

    .line 41
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 43
    iget-object v8, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v4, 0x40e00000    # 7.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v8, 0x42800000    # 64.0f

    move v9, v7

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020258

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xc13e07

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setColor(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x421c0000    # 39.0f

    move v4, v11

    move v6, v2

    move v9, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 66
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ShareDialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ShareDialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 76
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 114
    return-void
.end method

.method public setDialog(IZLjava/lang/CharSequence;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "checked"    # Z
    .param p3, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-lez p1, :cond_3

    .line 82
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 83
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p3, :cond_1

    .line 84
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 91
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 108
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v4, "50_50"

    iget-object v5, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 110
    return-void

    .line 85
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-eqz v2, :cond_2

    .line 86
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 96
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz p3, :cond_4

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 104
    if-eqz v0, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    .line 98
    :cond_4
    if-eqz v0, :cond_5

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 101
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
