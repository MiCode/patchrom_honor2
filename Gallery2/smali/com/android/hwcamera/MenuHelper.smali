.class public Lcom/android/hwcamera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 236
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    const-string v1, "com.android.hwcamera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 6
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    .line 222
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "com.scalado.hwcamera.rewind.RewindActivity"

    .line 191
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.scalado.hwcamera.rewind.RewindActivity"

    .line 192
    .local v2, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 195
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 196
    .restart local v0       #action:Ljava/lang/String;
    const-string v2, "com.android.hwcamera.VideoCamera"

    .line 225
    .restart local v2       #className:Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v2}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 200
    .restart local v0       #action:Ljava/lang/String;
    const-string v2, "com.android.hwcamera.Camera"

    .line 201
    .restart local v2       #className:Ljava/lang/String;
    goto :goto_1

    .line 203
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.android.hwcamera.panorama.PanoramaActivity"

    .line 204
    .restart local v0       #action:Ljava/lang/String;
    const-string v2, "com.android.hwcamera.panorama.PanoramaActivity"

    .line 206
    .restart local v2       #className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    :pswitch_4
    const-string v0, "com.scalado.hwcamera.strobe.StrobeViewerActivity"

    .line 212
    .restart local v0       #action:Ljava/lang/String;
    const-string v2, "com.scalado.hwcamera.strobe.StrobeViewerActivity"

    .line 213
    .restart local v2       #className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, actionIntent:Landroid/content/Intent;
    const-string v3, "load"

    invoke-static {}, Lcom/android/hwcamera/Storage;->getActionPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/16 v3, 0xe

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 230
    const-string v0, "android.media.action.VIDEO_CAMERA"

    const-string v1, "com.android.hwcamera.VideoCamera"

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 169
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 178
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 184
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "action"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "config_innerl_intent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 135
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
