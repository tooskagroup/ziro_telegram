.class Lorg/telegram/ui/ProfileActivity$17;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .prologue
    .line 1086
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$17;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$17;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/ProfileActivity;->kickUser(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;I)V

    .line 1090
    return-void
.end method
