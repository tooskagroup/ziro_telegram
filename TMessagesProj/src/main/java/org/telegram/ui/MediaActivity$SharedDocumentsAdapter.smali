.class Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;
.super Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDocumentsAdapter"
.end annotation


# instance fields
.field private currentType:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1421
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;-><init>()V

    .line 1422
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    .line 1423
    iput p3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    .line 1424
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v1, v1, v2

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1465
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_a

    .line 1466
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1467
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1468
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez p2, :cond_2

    .line 1469
    if-nez p3, :cond_0

    .line 1470
    new-instance p3, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v4}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .line 1472
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object v4, p3

    .line 1473
    check-cast v4, Lorg/telegram/ui/Cells/GreySectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    .line 1492
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p3

    .line 1475
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 1476
    new-instance p3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    :cond_3
    move-object v3, p3

    .line 1478
    check-cast v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1479
    .local v3, "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1480
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1481
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$3900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1482
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    aget-object v4, v5, v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_0

    .line 1480
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1482
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1484
    :cond_8
    const/4 v5, 0x0

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->scrolling:Z
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 1488
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_a
    if-nez p3, :cond_1

    .line 1489
    new-instance p3, Lorg/telegram/ui/Cells/LoadingCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v4}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local p3    # "convertView":Landroid/view/View;
    goto/16 :goto_0
.end method

.method public getItemViewType(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1498
    if-nez p2, :cond_0

    .line 1499
    const/4 v0, 0x0

    .line 1504
    :goto_0
    return v0

    .line 1501
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1504
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1451
    if-nez p2, :cond_0

    .line 1452
    new-instance p2, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .line 1454
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 1455
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1456
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->currentType:I

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1457
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object v3, p2

    .line 1458
    check-cast v3, Lorg/telegram/ui/Cells/GreySectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    .line 1460
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1509
    const/4 v0, 0x3

    return v0
.end method

.method public isRowEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 1433
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
