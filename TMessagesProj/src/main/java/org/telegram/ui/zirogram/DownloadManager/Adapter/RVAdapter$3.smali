.class Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$3;
.super Ljava/lang/Object;
.source "RVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;->onBindViewHolder(Lorg/telegram/ui/zirogram/DownloadManager/Adapter/downloadItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$3;->this$0:Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;

    iput p2, p0, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$3;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$3;->this$0:Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;

    # getter for: Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;->mOnItemClickListener:Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$OnItemClickListener;
    invoke-static {v0}, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;->access$000(Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter;)Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$3;->val$i:I

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/zirogram/DownloadManager/Adapter/RVAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 91
    return-void
.end method
