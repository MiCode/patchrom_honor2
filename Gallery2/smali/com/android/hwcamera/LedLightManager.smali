.class public Lcom/android/hwcamera/LedLightManager;
.super Ljava/lang/Object;
.source "LedLightManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ledOn(Landroid/app/NotificationManager;)V
    .locals 2
    .parameter "nm"

    .prologue
    .line 38
    const/4 v1, 0x1

    .line 39
    .local v1, ledOnMS:I
    const/4 v0, 0x0

    .line 40
    .local v0, ledOffMS:I
    invoke-static {p0, v1, v0}, Lcom/android/hwcamera/LedLightManager;->showNotification(Landroid/app/NotificationManager;II)V

    .line 41
    return-void
.end method

.method public static ledOn(Landroid/app/NotificationManager;I)V
    .locals 9
    .parameter "nm"
    .parameter "timer"

    .prologue
    .line 27
    const-wide/high16 v3, 0x4049

    mul-int v5, p1, p1

    int-to-double v5, v5

    const-wide/high16 v7, 0x4004

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v2, v3

    .line 28
    .local v2, time:I
    move v1, v2

    .line 29
    .local v1, ledOnMS:I
    move v0, v2

    .line 30
    .local v0, ledOffMS:I
    invoke-static {p0, v1, v0}, Lcom/android/hwcamera/LedLightManager;->showNotification(Landroid/app/NotificationManager;II)V

    .line 31
    return-void
.end method

.method public static ledoff(Landroid/app/NotificationManager;)V
    .locals 1
    .parameter "nm"

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 61
    :cond_0
    return-void
.end method

.method private static showNotification(Landroid/app/NotificationManager;II)V
    .locals 5
    .parameter "nm"
    .parameter "ledOnMS"
    .parameter "ledOffMS"

    .prologue
    .line 65
    new-instance v0, Landroid/app/Notification;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 67
    .local v0, notification:Landroid/app/Notification;
    const v1, 0x8000

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 68
    const-string v1, "#ff00ff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 69
    iput p1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 70
    iput p2, v0, Landroid/app/Notification;->ledOffMS:I

    .line 71
    const-string v1, "LedLightManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ledOnMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ledOffMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p0, :cond_0

    .line 74
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 76
    :cond_0
    return-void
.end method
