.class public Lcom/android/hwcamera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static sHolder:Lcom/android/hwcamera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mIsOpenInProgress:Z

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    .line 50
    iput v5, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 52
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 53
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 54
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    .line 57
    iput-boolean v5, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v2, Lcom/android/hwcamera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/CameraHolder$MyHandler;-><init>(Lcom/android/hwcamera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    .line 102
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 105
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 106
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 107
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 109
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 110
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/hwcamera/CameraHolder;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/hwcamera/CameraHolder;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    .line 71
    :cond_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 220
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v4, :cond_1

    move v4, v2

    :goto_1
    invoke-static {v4}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 212
    const-string v2, "CameraHolder"

    const-string v3, "releaseCamera delay!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    move v4, v3

    .line 208
    goto :goto_1

    :cond_2
    move v2, v3

    .line 209
    goto :goto_2

    .line 217
    .restart local v0       #now:J
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->release()V

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 219
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 226
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/android/hwcamera/HwCamera;
    .locals 6
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    monitor-enter p0

    :try_start_0
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open mUsers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v3, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v3, :cond_3

    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z

    .line 131
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->release()V

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 139
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Lcom/android/hwcamera/Util;->getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 141
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_2

    .line 142
    new-instance v1, Lcom/android/hwcamera/HwCamera;

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/hwcamera/HwCamera;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 144
    :cond_2
    iput p1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 165
    :goto_1
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 166
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z

    .line 172
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    move v1, v2

    .line 126
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z

    .line 150
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 155
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 163
    :try_start_5
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHolder;->mIsOpenInProgress:Z

    .line 161
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 193
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release mUsers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 195
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 197
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 198
    invoke-direct {p0}, Lcom/android/hwcamera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Lcom/android/hwcamera/HwCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 181
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :cond_0
    monitor-exit p0

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
