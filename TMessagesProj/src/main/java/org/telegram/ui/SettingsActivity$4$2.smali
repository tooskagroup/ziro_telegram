.class Lorg/telegram/ui/SettingsActivity$4$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$4;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4$2;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$4$2;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # invokes: Lorg/telegram/ui/SettingsActivity;->performAskAQuestion()V
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$900(Lorg/telegram/ui/SettingsActivity;)V

    .line 451
    return-void
.end method
