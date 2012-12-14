.class public Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;
.super Landroid/app/Activity;
.source "PanoramaViewer.java"


# instance fields
.field glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

.field glviewDef:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

.field imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

.field logid:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private messageHandlerCircle:Landroid/os/Handler;

.field private modeFlat:Z

.field private modeSwitchBtn:Landroid/widget/ImageView;

.field modeSwitchClickListener:Landroid/view/View$OnClickListener;

.field modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

.field panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

.field xClick:F

.field yClick:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->logid:I

    .line 48
    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 49
    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glviewDef:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 64
    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 65
    iput-boolean v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    .line 67
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    invoke-direct {v0}, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    .line 72
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$1;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$1;-><init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$2;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$2;-><init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

    .line 114
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;-><init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    return v0
.end method

.method static synthetic access$202(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    return p1
.end method

.method static synthetic access$300(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v10}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->requestWindowFeature(I)Z

    .line 173
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 177
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 178
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .local v3, pathparece:Landroid/os/Parcelable;
    move-object v2, v3

    .line 179
    check-cast v2, Landroid/net/Uri;

    .line 181
    .local v2, pathUri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 182
    const-string v6, "INTENT_TEST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver launched.:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const-string v7, "imgPath"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iget-object v6, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iget-object v6, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    :cond_0
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 187
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image Path :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iget-object v8, v8, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nAngle Of View :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iget v8, v8, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nFocal Length :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iget v8, v8, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->focalLength:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 210
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001e

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 212
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0c0070

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    .line 214
    invoke-virtual {p0, v5}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setLayout(Landroid/view/View;)V

    .line 215
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setContentView(Landroid/view/View;)V

    .line 216
    new-instance v6, Lcom/android/hwcamera/hwui/Review;

    iget-object v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 217
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v6}, Lcom/android/hwcamera/hwui/Review;->initReview()V

    .line 218
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v6, v2}, Lcom/android/hwcamera/hwui/Review;->setUri(Landroid/net/Uri;)V

    .line 220
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    invoke-virtual {p0, v6, v7}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setPanoramaData(Landroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V

    .line 222
    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    iput-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 223
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    iget-object v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget-object v7, v7, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setWorld(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;)V

    .line 224
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v6}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->requestFocus()Z

    .line 225
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 226
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    iget-object v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setHandler(Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #view:Landroid/view/View;
    :goto_1
    return-void

    .line 189
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const-string v7, "FOV"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    .line 190
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const-string v7, "FL"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->setFocalLength(F)V

    .line 191
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 192
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v10, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 196
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v9, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v10, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 201
    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v9, v6, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    goto/16 :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PanoramaActivity"

    const-string v7, "Could not init textureProvider. Quit!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->finish()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 344
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->onPause()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setProgressBarInvisible()V

    .line 350
    invoke-virtual {p0, v2, v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->overridePendingTransition(II)V

    .line 351
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->finish()V

    .line 355
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 333
    const-string v0, "PanoramaActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->onResume()V

    .line 339
    :cond_0
    return-void
.end method

.method setLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 240
    const v0, 0x7f0c003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0f002c

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 267
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 268
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 269
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040032

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 272
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$4;

    invoke-direct {v1, p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$4;-><init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 285
    return-void
.end method

.method setPanoramaData(Landroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 3
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPanoramaData inputAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    invoke-direct {v0, p1, p2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;-><init>(Landroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    .line 301
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    .line 302
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget-object v0, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->setPanoramaData(Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;)V

    .line 303
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->setIntroInfo(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 305
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget v0, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 306
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;

    invoke-direct {v0, p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;-><init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V

    invoke-virtual {v0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;->start()V

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setProgressBarInvisible()V

    .line 325
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->showReviewButtons()V

    goto :goto_0
.end method

.method setProgressBarInvisible()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 294
    :cond_0
    return-void
.end method
