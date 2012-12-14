.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;
.super Landroid/os/AsyncTask;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStrobeObjectThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .parameter "params"

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 300
    .local v14, res:Landroid/content/res/Resources;
    const v2, 0x7f0a003f

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 301
    .local v16, topMargin:F
    const v2, 0x7f0a003e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v7, 0x4000

    mul-float v7, v7, v16

    sub-float/2addr v2, v7

    float-to-int v11, v2

    .line 302
    .local v11, height:I
    move/from16 v17, v11

    .line 304
    .local v17, width:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v16

    float-to-int v2, v0

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 308
    const v2, 0x7f0a0040

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 310
    const/4 v2, 0x2

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    .line 312
    .local v12, layers:[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 315
    .local v5, object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 319
    .local v13, objThumb:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getRect()Lcom/scalado/base/Rect;

    move-result-object v9

    .line 320
    .local v9, cropRect:Lcom/scalado/base/Rect;
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v7

    if-le v2, v7, :cond_0

    .line 321
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 326
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/scalado/caps/Session;

    .line 328
    .local v15, session:Lcom/scalado/caps/Session;
    new-instance v8, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v8, v15}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 329
    .local v8, crop:Lcom/scalado/caps/filter/Crop;
    invoke-virtual {v8, v9}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 331
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->renderSessionToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v15, v13}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_2
    invoke-virtual {v8}, Lcom/scalado/caps/filter/Crop;->abort()V

    .line 338
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 340
    .local v3, stateList:Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v12, v2

    .line 341
    const/4 v2, 0x1

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const v18, 0x7f090030

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v12, v2

    .line 344
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v18, 0x10100a1

    aput v18, v2, v7

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 346
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v18, 0x10100a7

    aput v18, v2, v7

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 349
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v7, 0x0

    aget-object v7, v12, v7

    invoke-virtual {v3, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 350
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v2, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;-><init>(Landroid/graphics/drawable/StateListDrawable;Landroid/widget/LinearLayout$LayoutParams;Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;ILcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V

    aput-object v2, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->publishProgress([Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 323
    .end local v3           #stateList:Landroid/graphics/drawable/StateListDrawable;
    .end local v8           #crop:Lcom/scalado/caps/filter/Crop;
    .end local v15           #session:Lcom/scalado/caps/Session;
    :cond_0
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/scalado/base/Rect;->setHeight(I)V

    goto/16 :goto_1

    .line 332
    .restart local v8       #crop:Lcom/scalado/caps/filter/Crop;
    .restart local v15       #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v10

    .line 334
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 352
    .end local v5           #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v8           #crop:Lcom/scalado/caps/filter/Crop;
    .end local v9           #cropRect:Lcom/scalado/base/Rect;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v13           #objThumb:Landroid/graphics/Bitmap;
    .end local v15           #session:Lcom/scalado/caps/Session;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 294
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 387
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mwillShown:[Z
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    if-nez v4, :cond_0

    .line 388
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 389
    .local v1, object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setVisible(Z)V

    .line 390
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 391
    .local v2, objectView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 394
    .local v3, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 395
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 386
    .end local v1           #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v2           #objectView:Landroid/view/View;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1       #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    :cond_1
    move v4, v6

    .line 389
    goto :goto_1

    .line 391
    .restart local v2       #objectView:Landroid/view/View;
    :cond_2
    const/4 v4, 0x4

    goto :goto_2

    .restart local v3       #v:Landroid/view/View;
    :cond_3
    move v4, v6

    .line 394
    goto :goto_3

    .line 401
    .end local v1           #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v2           #objectView:Landroid/view/View;
    .end local v3           #v:Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 403
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->hideSpinner()V
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 404
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showControls()V
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 405
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarScrollView:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->setVisibility(I)V

    .line 406
    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
    invoke-static {v4, v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Z)V

    .line 407
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)V
    .locals 5
    .parameter "progressObjects"

    .prologue
    const/4 v4, 0x2

    .line 356
    if-nez p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, v:Landroid/widget/ImageView;
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 362
    .local v0, progressObject:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;
    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$1900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStrobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$2000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 364
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mThumbObjectLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 369
    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mIndex:I
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$2300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 372
    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 376
    :goto_1
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 378
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->access$2500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 374
    :cond_1
    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 294
    check-cast p1, [Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$LoadStrobeObjectThumbnailTask;->onProgressUpdate([Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)V

    return-void
.end method
