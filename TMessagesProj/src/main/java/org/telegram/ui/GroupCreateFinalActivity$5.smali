.class Lorg/telegram/ui/GroupCreateFinalActivity$5;
.super Ljava/lang/Object;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

.field final synthetic val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->val$file:Lorg/telegram/tgnet/TLRPC$InputFile;

    # setter for: Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$802(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->val$small:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    # setter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$702(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$1000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$700(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$900(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$500(Lorg/telegram/ui/GroupCreateFinalActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "tmessages"

    const-string/jumbo v1, "avatar did uploaded"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$300(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    # getter for: Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I
    invoke-static {v4}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$200(Lorg/telegram/ui/GroupCreateFinalActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateFinalActivity$5;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I

    .line 342
    :cond_0
    return-void
.end method
