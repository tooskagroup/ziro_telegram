.class Lorg/telegram/ui/SettingsActivity$4$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$4;

.field final synthetic val$i:I

.field final synthetic val$maskValues:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$4;[ZI)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 606
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 607
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 613
    .local v3, "newMask":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v4, 0x6

    if-ge v0, v4, :cond_7

    .line 614
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 615
    if-nez v0, :cond_2

    .line 616
    or-int/lit8 v3, v3, 0x1

    .line 613
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    .end local v0    # "a":I
    .end local v3    # "newMask":I
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 617
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v3    # "newMask":I
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 618
    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 619
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 620
    or-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 621
    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 622
    or-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 623
    :cond_5
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 624
    or-int/lit8 v3, v3, 0x10

    goto :goto_2

    .line 625
    :cond_6
    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 626
    or-int/lit8 v3, v3, 0x20

    goto :goto_2

    .line 630
    :cond_7
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 631
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$i:I

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->mobileDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 632
    const-string/jumbo v4, "mobileDataDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 641
    :cond_8
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$000(Lorg/telegram/ui/SettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 643
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$000(Lorg/telegram/ui/SettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    .line 645
    :cond_9
    return-void

    .line 634
    :cond_a
    iget v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$i:I

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->wifiDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_b

    .line 635
    const-string/jumbo v4, "wifiDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 636
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto :goto_3

    .line 637
    :cond_b
    iget v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$i:I

    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v5, v5, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->roamingDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 638
    const-string/jumbo v4, "roamingDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 639
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_3
.end method
