.class Lorg/telegram/ui/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f07024a

    const v10, 0x7f070243

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 789
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 796
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 797
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :cond_2

    .line 798
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 800
    :cond_2
    if-eqz v4, :cond_0

    .line 803
    const/4 v2, 0x0

    .line 804
    .local v2, "fullMenu":Z
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    if-nez v5, :cond_3

    .line 805
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "FromCamera"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const-string/jumbo v5, "FromGalley"

    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const-string/jumbo v5, "DeletePhoto"

    const v6, 0x7f0701b1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    .line 806
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 811
    :goto_1
    move v1, v2

    .line 812
    .local v1, "full":Z
    new-instance v5, Lorg/telegram/ui/SettingsActivity$8$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SettingsActivity$8$1;-><init>(Lorg/telegram/ui/SettingsActivity$8;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 808
    .end local v1    # "full":Z
    .end local v3    # "items":[Ljava/lang/CharSequence;
    :cond_3
    new-array v3, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "FromCamera"

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const-string/jumbo v5, "FromGalley"

    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .restart local v3    # "items":[Ljava/lang/CharSequence;
    goto :goto_1
.end method
