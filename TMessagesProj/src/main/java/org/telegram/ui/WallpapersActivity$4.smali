.class Lorg/telegram/ui/WallpapersActivity$4;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->loadWallpapers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 441
    if-eqz p2, :cond_0

    .line 463
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lorg/telegram/ui/WallpapersActivity$4$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/WallpapersActivity$4$1;-><init>(Lorg/telegram/ui/WallpapersActivity$4;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
