.class Lorg/telegram/ui/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->onFragmentCreate()Z
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
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$1;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 3
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 186
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    .line 187
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->caption:Ljava/lang/String;

    .line 188
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCropAuto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->crop:Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;

    .line 189
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 190
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 191
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SettingsActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SettingsActivity$1$1;-><init>(Lorg/telegram/ui/SettingsActivity$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 234
    return-void
.end method
