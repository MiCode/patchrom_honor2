.class Lcom/scalado/app/rewind/RewindSession$LTWRequest;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LTWRequest"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasUser:Z

.field private mJpegQuality:I

.field private mMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

.field private mOutputFilename:Ljava/lang/String;

.field private mParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

.field private mScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

.field private mScreenSize:Lcom/scalado/base/Size;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mUser:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "user"

    .prologue
    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z

    .line 981
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mUser:I

    .line 982
    return-void
.end method

.method synthetic constructor <init>(ILcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "params"
    .parameter "screenParams"
    .parameter "magnifierParams"
    .parameter "bitmap"

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z

    .line 951
    if-eqz p1, :cond_0

    .line 952
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;-><init>(Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    .line 953
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    #calls: Lcom/scalado/app/rewind/RewindSession$LTWParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->access$2300(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 955
    :cond_0
    if-eqz p2, :cond_1

    .line 956
    invoke-virtual {p2}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->clone()Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    .line 958
    :cond_1
    if-eqz p3, :cond_2

    .line 959
    invoke-virtual {p3}, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->clone()Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    .line 961
    :cond_2
    iput-object p4, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 936
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    .locals 1
    .parameter "params"
    .parameter "screenParams"
    .parameter "screenSize"
    .parameter "user"

    .prologue
    const/4 v0, 0x0

    .line 973
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    .line 974
    iput-object p3, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;

    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z

    .line 976
    iput p4, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mUser:I

    .line 977
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;ILcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 936
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;)V
    .locals 1
    .parameter "params"
    .parameter "filename"

    .prologue
    const/4 v0, 0x0

    .line 985
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    .line 986
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;

    .line 987
    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;III)V
    .locals 1
    .parameter "params"
    .parameter "filename"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    const/4 v0, 0x0

    .line 991
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    .line 992
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;

    .line 993
    iput p3, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mJpegQuality:I

    .line 994
    iput p4, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailWidth:I

    .line 995
    iput p5, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailHeight:I

    .line 996
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;IIILcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 936
    invoke-direct/range {p0 .. p5}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 936
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;-><init>(Lcom/scalado/app/rewind/RewindSession$LTWParams;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mUser:I

    return v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$LTWParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mJpegQuality:I

    return v0
.end method

.method static synthetic access$5100(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailWidth:I

    return v0
.end method

.method static synthetic access$5200(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 936
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailHeight:I

    return v0
.end method
