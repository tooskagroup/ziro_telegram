.class Lorg/telegram/ui/SettingsActivity$8$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$8;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$8$1;->this$1:Lorg/telegram/ui/SettingsActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 815
    if-nez p2, :cond_1

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$8$1;->this$1:Lorg/telegram/ui/SettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$8$1;->this$1:Lorg/telegram/ui/SettingsActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$8;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_0

    .line 819
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 820
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    goto :goto_0
.end method
