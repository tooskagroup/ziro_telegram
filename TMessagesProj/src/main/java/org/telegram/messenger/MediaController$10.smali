.class Lorg/telegram/messenger/MediaController$10;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .prologue
    .line 1810
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x7530

    .line 1813
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4100(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4100(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1816
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1817
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1819
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1820
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1822
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1823
    return-void
.end method
