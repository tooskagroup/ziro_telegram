.class Lorg/telegram/ui/LocationActivity$13;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 545
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 546
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 547
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 548
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # invokes: Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V
    invoke-static {v2, v6}, Lorg/telegram/ui/LocationActivity;->access$1100(Lorg/telegram/ui/LocationActivity;Z)V

    .line 563
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 555
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 556
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 557
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 558
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 560
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # setter for: Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/LocationActivity;->access$2102(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 561
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;
    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;
    invoke-static {v6}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method
