.class Lcom/android/hwcamera/Camera$ImageSaver;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mNeedSavedCnt:I

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/Camera$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedCnt:I

.field private mStop:Z

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2736
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2732
    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 2733
    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    .line 2737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 2738
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->start()V

    .line 2739
    return-void
.end method

.method private storeImage([BLandroid/location/Location;IIJI)V
    .locals 23
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "dateTaken"
    .parameter "previewWidth"

    .prologue
    .line 2886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2889
    .local v14, t1:J
    const/4 v10, 0x1

    .line 2890
    .local v10, mIsNeedRecord:Z
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 2891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTWIMG_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2892
    .local v4, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2893
    .local v3, dirPath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2905
    :goto_0
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2906
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v5, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v2, v5}, Lcom/android/hwcamera/Camera;->access$3402(Lcom/android/hwcamera/Camera;I)I

    .line 2910
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v8

    .line 2911
    .local v8, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$10200(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v2

    move-wide/from16 v5, p5

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v2 .. v12}, Lcom/android/hwcamera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I[BZII)Landroid/net/Uri;

    move-result-object v22

    .line 2914
    .local v22, uri:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2916
    .local v16, t2:J
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$10300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$10400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$10300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/android/hwcamera/PictureRemaining;->setSizeOfOnePic(Lcom/android/hwcamera/PictureRemaining$Key;I)V

    .line 2920
    :cond_1
    sub-long v16, v16, v14

    .line 2921
    if-eqz v22, :cond_2

    .line 2922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2925
    :cond_2
    const-string v2, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Flow] storeImage, write jpegdata to file time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_3

    .line 2935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2936
    .local v18, t3:J
    const/16 v2, 0x10

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v8, v2, v1}, Lcom/android/hwcamera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v13

    .line 2938
    .local v13, t:Lcom/android/hwcamera/Thumbnail;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2939
    .local v20, t4:J
    sub-long v20, v20, v18

    .line 2940
    const-string v2, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Flow] storeImage, CreateThumbnail() time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v2, v13}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    invoke-static {v2, v13}, Lcom/android/hwcamera/Camera;->access$10500(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)V

    .line 2944
    .end local v13           #t:Lcom/android/hwcamera/Thumbnail;
    .end local v18           #t3:J
    .end local v20           #t4:J
    :cond_3
    return-void

    .line 2894
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v8           #orientation:I
    .end local v16           #t2:J
    .end local v22           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 2895
    const-string v2, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ACTION_"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2896
    .restart local v4       #title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getActionPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2898
    .restart local v3       #dirPath:Ljava/lang/String;
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2901
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_5
    invoke-static/range {p5 .. p6}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    .line 2902
    .restart local v4       #title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2903
    .restart local v3       #dirPath:Ljava/lang/String;
    const/4 v10, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;II)V
    .locals 3
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 2743
    new-instance v0, Lcom/android/hwcamera/Camera$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera$SaveRequest;-><init>(Lcom/android/hwcamera/Camera$1;)V

    .line 2744
    .local v0, r:Lcom/android/hwcamera/Camera$SaveRequest;
    iput-object p1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    .line 2745
    if-nez p2, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->loc:Landroid/location/Location;

    .line 2746
    iput p3, v0, Lcom/android/hwcamera/Camera$SaveRequest;->width:I

    .line 2747
    iput p4, v0, Lcom/android/hwcamera/Camera$SaveRequest;->height:I

    .line 2748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->dateTaken:J

    .line 2749
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$4600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/hwcamera/Camera$SaveRequest;->previewWidth:I

    .line 2750
    monitor-enter p0

    .line 2751
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    .line 2753
    :try_start_1
    const-string v1, "Camera"

    const-string v2, "ImageSaver warrning! queue is biger than 15!waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2755
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2745
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 2759
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2761
    monitor-exit p0

    .line 2762
    return-void

    .line 2761
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->waitDone()V

    .line 2840
    monitor-enter p0

    .line 2841
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mStop:Z

    .line 2842
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2843
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2845
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2849
    :goto_0
    return-void

    .line 2843
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2846
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAllImageSaved()Z
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public resetSavedPictureCnt(I)V
    .locals 5
    .parameter "needSaveCnt"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x18

    .line 2857
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2859
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2861
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2863
    :cond_1
    iput v4, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 2864
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v0, v4}, Lcom/android/hwcamera/Camera;->access$3402(Lcom/android/hwcamera/Camera;I)I

    .line 2865
    iput p1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    .line 2866
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x18

    const/4 v13, 0x0

    .line 2769
    :cond_0
    :goto_0
    monitor-enter p0

    .line 2770
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2772
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->isSavePic:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;Z)Z

    .line 2774
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2777
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mStop:Z

    if-eqz v0, :cond_1

    .line 2778
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2821
    return-void

    .line 2781
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2785
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2788
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2787
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/Camera$SaveRequest;

    .line 2788
    .local v8, r:Lcom/android/hwcamera/Camera$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2790
    .local v9, t1:J
    iget-object v0, v8, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    if-eqz v0, :cond_4

    .line 2792
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->isSavePic:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;Z)Z

    .line 2794
    iget-object v1, v8, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    iget-object v2, v8, Lcom/android/hwcamera/Camera$SaveRequest;->loc:Landroid/location/Location;

    iget v3, v8, Lcom/android/hwcamera/Camera$SaveRequest;->width:I

    iget v4, v8, Lcom/android/hwcamera/Camera$SaveRequest;->height:I

    iget-wide v5, v8, Lcom/android/hwcamera/Camera$SaveRequest;->dateTaken:J

    iget v7, v8, Lcom/android/hwcamera/Camera$SaveRequest;->previewWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/Camera$ImageSaver;->storeImage([BLandroid/location/Location;IIJI)V

    .line 2798
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2799
    .local v11, t2:J
    sub-long/2addr v11, v9

    .line 2800
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] StoreImage total time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    monitor-enter p0

    .line 2802
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, v8, Lcom/android/hwcamera/Camera$SaveRequest;->data:[B

    .line 2803
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2804
    iget v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    .line 2806
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2807
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2808
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->isSavePic:Z
    invoke-static {v0, v13}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;Z)Z

    .line 2812
    iget v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mSavedCnt:I

    iget v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mNeedSavedCnt:I

    if-lt v0, v1, :cond_0

    .line 2813
    const-string v0, "Camera"

    const-string v1, "[Flow] All Image saved!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2815
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2817
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2796
    .end local v11           #t2:J
    :cond_4
    const-string v0, "Camera"

    const-string v1, "storeImage but jpeg data is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2807
    .restart local v11       #t2:J
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 2782
    .end local v8           #r:Lcom/android/hwcamera/Camera$SaveRequest;
    .end local v9           #t1:J
    .end local v11           #t2:J
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public updateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 2871
    if-eqz p1, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2873
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 2876
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->displayReviewOnGallery()V

    .line 2879
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2881
    :cond_0
    return-void
.end method

.method public waitDone()V
    .locals 2

    .prologue
    .line 2825
    monitor-enter p0

    .line 2826
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2828
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ImageSaver;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->mIsResetThumbnail:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$10102(Lcom/android/hwcamera/Camera;Z)Z

    .line 2829
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2830
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2834
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 2835
    return-void

    .line 2834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
