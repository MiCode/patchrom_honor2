.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 302
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 22
    .parameter "jc"

    .prologue
    .line 305
    const-wide/32 v16, 0x7a120

    .line 306
    .local v16, validStorage:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 307
    .local v4, cropRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 309
    .local v7, extra:Landroid/os/Bundle;
    new-instance v12, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    .local v12, rect:Landroid/graphics/Rect;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v13, result:Landroid/content/Intent;
    const-string v18, "cropped-rect"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, cropped:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 317
    .local v11, outputted:Z
    if-eqz v7, :cond_c

    .line 318
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 319
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_2

    .line 320
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v13, 0x0

    .line 370
    .end local v13           #result:Landroid/content/Intent;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v13

    .line 321
    .restart local v13       #result:Landroid/content/Intent;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v11, 0x1

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v0, v1, v5, v15}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 325
    :cond_2
    const-string v18, "return-data"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 326
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    .line 327
    :cond_3
    const/4 v11, 0x1

    .line 328
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 329
    :cond_4
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    :cond_5
    const-string v18, "set-as-theme"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, setAsTheme:Ljava/lang/String;
    const-string v18, "home"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "unlock"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 334
    :cond_6
    const/4 v11, 0x1

    .line 335
    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 336
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    const-string v19, "/data/skin/wallpaper"

    const-string v20, "_wallpaper_0.jpg"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    #calls: Lcom/android/gallery3d/app/CropImage;->saveLockscreenBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v14, v5, v1, v2}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_8
    const-string v18, "set-as-wallpaper"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 341
    :cond_9
    const/4 v11, 0x1

    .line 342
    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 344
    :cond_a
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    .line 346
    .local v8, imgStorage:I
    int-to-long v0, v8

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7a120

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v18

    if-nez v18, :cond_b

    .line 347
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 350
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v18

    if-nez v18, :cond_c

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 353
    .end local v8           #imgStorage:I
    .end local v14           #setAsTheme:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_c
    if-nez v11, :cond_0

    .line 354
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 355
    :cond_d
    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 357
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/LocalImage;

    .line 360
    .local v10, localImage:Lcom/android/gallery3d/data/LocalImage;
    iget-wide v8, v10, Lcom/android/gallery3d/data/LocalImage;->fileSize:J

    .line 361
    .local v8, imgStorage:J
    const-wide/32 v18, 0x7a120

    add-long v18, v18, v8

    iget-object v0, v10, Lcom/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(JLjava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 362
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 367
    .end local v8           #imgStorage:J
    .end local v10           #localImage:Lcom/android/gallery3d/data/LocalImage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v6

    .line 368
    .local v6, data:Landroid/net/Uri;
    if-eqz v6, :cond_0

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
