.class Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;
.super Ljava/util/TimerTask;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    # getter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1900(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1902(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$2000(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    .line 512
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
