.class Lorg/telegram/ui/ChannelUsersActivity$6$1$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6$1;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 447
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .locals 3
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 450
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v2, p1}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    .line 451
    .local v0, "type1":I
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1$2;->this$2:Lorg/telegram/ui/ChannelUsersActivity$6$1;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    invoke-static {v2, p2}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v1

    .line 452
    .local v1, "type2":I
    if-le v0, v1, :cond_0

    .line 453
    const/4 v2, 0x1

    .line 457
    :goto_0
    return v2

    .line 454
    :cond_0
    if-ge v0, v1, :cond_1

    .line 455
    const/4 v2, -0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
