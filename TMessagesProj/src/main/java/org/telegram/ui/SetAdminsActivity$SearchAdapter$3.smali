.class Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1402(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$2202(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 591
    return-void
.end method
