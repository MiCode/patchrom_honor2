.class public Lcom/android/gallery3d/widgetunit/GalleryView;
.super Landroid/widget/RelativeLayout;
.source "GalleryView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    }
.end annotation


# static fields
.field private static final CATALOG_SELECTION:Ljava/lang/String; = "bucket_id = ? "

.field private static final DATABASE_CHANGES:I = 0x32

.field private static final GALLERY_COMPONENTNAME:Ljava/lang/String; = "com.android.gallery3d.app.Gallery"

.field private static final GALLERY_PACKAGENAME:Ljava/lang/String; = "com.android.gallery3d"

.field private static final MAX_SIZE:I = 0x3200000

.field private static final MINITYPE_INDEX:I = 0x2

.field private static final NOTIFY_OBSERVOR_PHOTO:I = 0x3

.field private static final PATH_INDEX:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final REQUEST_QUERY_DATABASE:I = 0x2

.field private static final REQUEST_UPDATE_PHOTO:I = 0x1

.field private static final REQUEST_VIEW_DESTROY:I = 0x4

.field private static final ROOT_URI:Landroid/net/Uri; = null

.field private static final SIZE_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "widgetunit GalleryView"

.field private static final THEME_XML_FILENAME:Ljava/lang/String; = "theme.xml"

.field private static final THEME_XML_PATH:Ljava/lang/String; = "/data/skin/com.android.gallery3d"

.field private static final TIME_SPACE:I = 0x1f4

.field private static final TIME_WAIT:I = 0x1388


# instance fields
.field private mBeforeBitmap:Landroid/graphics/Bitmap;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBucketId:Ljava/lang/String;

.field private mChooseTextView:Landroid/widget/TextView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCount:I

.field private mCursorPosition:I

.field private mCutHeight:I

.field private mCutWidth:I

.field private mDRMTextView:Landroid/widget/TextView;

.field private mDrawable:Z

.field private mEmptyBitmap:Landroid/graphics/Bitmap;

.field private mErrTextView:Landroid/widget/TextView;

.field private mFileSize:I

.field private mGetBucketId:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHwTransitionReflection:Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

.field private mIsDrm:Z

.field private mMeWidgetId:I

.field private mMimetype:Ljava/lang/String;

.field private mNoPhotos:Z

.field private mNoPhotosTextView:Landroid/widget/TextView;

.field private volatile mNotifyFlag:Z

.field private mOnchangeCount:J

.field private mPhotoView:Landroid/widget/ImageView;

.field private mRoundConfig:Z

.field private mUri:Ljava/lang/String;

.field private mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

.field private mViewHeight:I

.field private mViewRadius:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/widgetunit/GalleryView;->ROOT_URI:Landroid/net/Uri;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/widgetunit/GalleryView;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 90
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 92
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    .line 105
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    .line 136
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->initAnim()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 92
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    .line 105
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    .line 141
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->initAnim()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 92
    iput v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    .line 105
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    .line 146
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->initAnim()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/widgetunit/GalleryView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/widgetunit/GalleryView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->queryDatabase()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/widgetunit/GalleryView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/widgetunit/GalleryView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->destroy()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/widgetunit/GalleryView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    return-wide v0
.end method

.method static synthetic access$1608(Lcom/android/gallery3d/widgetunit/GalleryView;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/widgetunit/GalleryView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/widgetunit/GalleryView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/widgetunit/GalleryView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->updatePic()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/widgetunit/GalleryView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    return v0
.end method

.method private beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 739
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    :cond_1
    if-eq v0, v2, :cond_2

    .line 743
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 747
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_3
    return-void
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    const-string v0, "widgetunit GalleryView"

    const-string v1, "destroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    iput-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    :cond_2
    return-void
.end method

.method private getCompressBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 448
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 450
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 451
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 452
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v3, :cond_1

    .line 453
    :cond_0
    const-string v3, "widgetunit GalleryView"

    const-string v4, "compress getCompressBitmap outWidth outHeight err!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v3, 0x0

    .line 471
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 457
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 458
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 459
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewWidth:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 465
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_2
    move-object v3, v0

    .line 471
    goto :goto_0

    .line 462
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHeight:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 467
    .local v2, thow:Ljava/lang/Throwable;
    const-string v3, "widgetunit GalleryView"

    const-string v4, "compress getCompressBitmap  err!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private getCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "compressBitmap"

    .prologue
    const/high16 v12, 0x4000

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 476
    .local v8, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 477
    .local v2, h:I
    iget v9, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewWidth:I

    iget v10, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCutWidth:I

    sub-int v7, v9, v10

    .line 478
    .local v7, viewWidth:I
    iget v9, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHeight:I

    iget v10, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCutHeight:I

    sub-int v6, v9, v10

    .line 479
    .local v6, viewHeight:I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v6

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 480
    .local v4, scale:F
    const/4 v1, 0x0

    .line 483
    .local v1, cutBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 486
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v9, v7

    div-float/2addr v9, v12

    int-to-float v10, v6

    div-float/2addr v10, v12

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 488
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 489
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 490
    new-instance v3, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v3, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 491
    .local v3, paint:Landroid/graphics/Paint;
    neg-int v9, v8

    int-to-float v9, v9

    div-float/2addr v9, v12

    neg-int v10, v2

    int-to-float v10, v10

    div-float/2addr v10, v12

    invoke-virtual {v0, p1, v9, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v3           #paint:Landroid/graphics/Paint;
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v5

    .line 493
    .local v5, thow:Ljava/lang/Throwable;
    const-string v9, "widgetunit GalleryView"

    const-string v10, "compress getCutBitmap cutBitmap err!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getNextCursor()V
    .locals 4

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 427
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 433
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 435
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mFileSize:I

    .line 438
    const-string v1, "widgetunit GalleryView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextCursor mMeWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "widgetunit GalleryView"

    const-string v2, "getNextCursor fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 431
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getRoundConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "path"
    .parameter "file"

    .prologue
    const/4 v5, 0x1

    .line 754
    const/4 v0, 0x1

    .line 756
    .local v0, RoundConfig:Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/widgetunit/GalleryView;->getZipEntryStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 757
    .local v2, in:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 758
    const-string v6, "widgetunit GalleryView"

    const-string v7, "getRoundConfig  getZipEntryStream null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 780
    .end local v0           #RoundConfig:Z
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v0

    .line 761
    .restart local v0       #RoundConfig:Z
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 762
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 763
    const-string v6, "hwthemes"

    invoke-direct {p0, v3, v6}, Lcom/android/gallery3d/widgetunit/GalleryView;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 764
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 766
    .local v4, type:I
    :goto_1
    if-eq v4, v5, :cond_0

    .line 767
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 768
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "widgetunit_view_round_bitmap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 769
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 770
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 771
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 775
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 778
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #type:I
    :catch_0
    move-exception v1

    .line 779
    .local v1, e:Ljava/lang/Throwable;
    const-string v6, "widgetunit GalleryView"

    const-string v7, "getRoundConfig fail"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    .line 780
    goto :goto_0
.end method

.method private getZipEntryStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "zipFile"
    .parameter "entryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 721
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    const-string v3, "widgetunit GalleryView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getZipEntryStream not exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    return-object v2

    .line 726
    :cond_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 728
    .local v0, zEntry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handle_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 347
    new-instance v0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;-><init>(Lcom/android/gallery3d/widgetunit/GalleryView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    .line 349
    new-instance v0, Lcom/android/gallery3d/widgetunit/GalleryView$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/widgetunit/GalleryView$2;-><init>(Lcom/android/gallery3d/widgetunit/GalleryView;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/android/gallery3d/widgetunit/GalleryView$3;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$3;-><init>(Lcom/android/gallery3d/widgetunit/GalleryView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentObserver:Landroid/database/ContentObserver;

    .line 384
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->registerObserver(Landroid/content/Context;)V

    .line 385
    return-void
.end method

.method private initAnim()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHwTransitionReflection:Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

    const-string v1, "Page"

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHwTransitionReflection:Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

    .line 153
    :cond_0
    return-void
.end method

.method private declared-synchronized queryDatabase()V
    .locals 8

    .prologue
    .line 400
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorPosition:I

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    .line 402
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/widgetunit/GalleryView;->ROOT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/widgetunit/GalleryView;->PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBucketId:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    .line 411
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDatabase mCursorCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_0
    monitor-exit p0

    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v6

    .line 416
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 400
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerObserver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentResolver:Landroid/content/ContentResolver;

    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/widgetunit/GalleryView;->ROOT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    return-void
.end method

.method private setChooseAlbum()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 298
    const-string v0, "widgetunit GalleryView"

    const-string v1, "setChooseAlbum.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    return-void
.end method

.method private declared-synchronized updatePic()V
    .locals 6

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    if-nez v3, :cond_0

    .line 502
    const-string v3, "widgetunit GalleryView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePic drawable false return mMeWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    monitor-exit p0

    return-void

    .line 506
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 507
    const-string v3, "widgetunit GalleryView"

    const-string v4, "updatePic mCursor null return "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 512
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCursorCount:I

    if-gtz v3, :cond_3

    .line 513
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 514
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 515
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 516
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 518
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 519
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 520
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 523
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto :goto_0

    .line 528
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->getNextCursor()V

    .line 530
    iget v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mFileSize:I

    const/high16 v4, 0x320

    if-lt v3, v4, :cond_5

    .line 531
    const-string v3, "widgetunit GalleryView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePic mFileSize ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mFileSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 534
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 535
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 536
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 538
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 539
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 540
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 542
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 547
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 548
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 549
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 550
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 551
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 553
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 554
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 557
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 562
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->getCompressBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 563
    .local v0, compressBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_9

    .line 564
    const-string v3, "widgetunit GalleryView"

    const-string v4, "updatePic compressBitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 567
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 568
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 569
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 571
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 572
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 575
    :cond_8
    const-string v3, "widgetunit GalleryView"

    const-string v4, "getCompressBitmap error "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 581
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->getCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    .local v1, cutBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_c

    .line 583
    const-string v3, "widgetunit GalleryView"

    const-string v4, "updatePic cutBitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 586
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 587
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 588
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 590
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 591
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    const/4 v0, 0x0

    .line 594
    :cond_a
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 595
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 598
    :cond_b
    const-string v3, "widgetunit GalleryView"

    const-string v4, "getCutBitmap error "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 603
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 604
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    const/4 v0, 0x0

    .line 610
    :cond_d
    iget-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    if-eqz v3, :cond_13

    .line 611
    iget v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewRadius:I

    invoke-static {v1, v3}, Lcom/android/gallery3d/widgetunit/RoundBitmapUtils;->getRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 612
    .local v2, roundBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_10

    .line 613
    const-string v3, "widgetunit GalleryView"

    const-string v4, "updatePic getRoundBitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 615
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 616
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 617
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 619
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 620
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    const/4 v1, 0x0

    .line 623
    :cond_e
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 624
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 627
    :cond_f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 631
    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 633
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 634
    const/4 v1, 0x0

    .line 637
    :cond_11
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_12

    .line 638
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 641
    :cond_12
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 642
    iput-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;

    .line 656
    .end local v2           #roundBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z

    .line 657
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z

    .line 659
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z

    goto/16 :goto_0

    .line 646
    :cond_13
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_14

    .line 647
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 651
    :cond_14
    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBeforeBitmap:Landroid/graphics/Bitmap;

    .line 652
    iput-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHwTransitionReflection:Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->animateDraw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 667
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 230
    return-void
.end method

.method public declared-synchronized onBitmapChange(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "bitmap"
    .parameter "uri"
    .parameter "mimetype"
    .parameter "noPhotos"
    .parameter "isDrm"

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;

    .line 673
    iput-object p3, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    .line 675
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->invalidate()V

    .line 677
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHwTransitionReflection:Lcom/android/gallery3d/widgetunit/HwTransitionReflection;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->startAnimation(Landroid/view/View;)Z

    .line 679
    if-eqz p4, :cond_0

    .line 680
    const-string v0, "widgetunit GalleryView"

    const-string v1, "onBitmapChange noPhotos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    .line 685
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :goto_0
    monitor-exit p0

    return-void

    .line 691
    :cond_0
    if-eqz p5, :cond_1

    .line 692
    :try_start_1
    const-string v0, "widgetunit GalleryView"

    const-string v1, "onBitmapChange isDrm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 699
    :cond_1
    if-nez p1, :cond_2

    .line 700
    :try_start_2
    const-string v0, "widgetunit GalleryView"

    const-string v1, "onBitmapChange bitmap null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 708
    :cond_2
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBitmapChange bitmap OK mMeWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 235
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDrawable:Z

    .line 397
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 159
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 161
    const-string v0, "widgetunit GalleryView"

    const-string v1, "onFinishInflate ...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020185

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    .line 167
    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mDRMTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mErrTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotosTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mChooseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewWidth:I

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHeight:I

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewRadius:I

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCutWidth:I

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mCutHeight:I

    .line 184
    const-string v0, "/data/skin/com.android.gallery3d"

    const-string v1, "theme.xml"

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->getRoundConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    .line 185
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mRoundConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mRoundConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/android/gallery3d/widgetunit/GalleryView$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/widgetunit/GalleryView$1;-><init>(Lcom/android/gallery3d/widgetunit/GalleryView;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public setViewBucketId(Ljava/lang/String;)V
    .locals 3
    .parameter "bucketId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 257
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetViewBucketId mBucketId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mBucketId:Ljava/lang/String;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->setWillNotDraw(Z)V

    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->init()V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setViewChooseAblum(I)V
    .locals 3
    .parameter "meWidgetId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 239
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewChooseAblum meWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    .line 245
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->setChooseAlbum()V

    goto :goto_0
.end method

.method public setViewDelete(I)V
    .locals 2
    .parameter "bucketId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 293
    const-string v0, "widgetunit GalleryView"

    const-string v1, "setViewDelete "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/GalleryView;->destroy()V

    .line 295
    return-void
.end method

.method public setViewMeWidgetId(I)V
    .locals 3
    .parameter "meWidgetId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 250
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetViewMeWidgetId  meWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I

    .line 252
    return-void
.end method
