.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressObject"
.end annotation


# instance fields
.field private mIndex:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mStrobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable;Landroid/widget/LinearLayout$LayoutParams;Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;I)V
    .locals 0
    .parameter "drawable"
    .parameter "params"
    .parameter "strobeObject"
    .parameter "index"

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 421
    iput-object p2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 422
    iput-object p3, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStrobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 423
    iput p4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mIndex:I

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable;Landroid/widget/LinearLayout$LayoutParams;Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;ILcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;-><init>(Landroid/graphics/drawable/StateListDrawable;Landroid/widget/LinearLayout$LayoutParams;Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mStrobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mIndex:I

    return v0
.end method

.method static synthetic access$2500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$ProgressObject;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method
