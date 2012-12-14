.class public Lcom/android/hwcamera/hwui/MenuCommon;
.super Ljava/lang/Object;
.source "MenuCommon.java"


# static fields
.field private static mControlBarHeight:I

.field private static mControlBarScaleToItself:F

.field private static mDensity:F

.field private static mFrameHeight:I

.field private static mFrameMarginBottom:I

.field private static mFrameMarginRight:I

.field private static mFrameWidth:I

.field private static mMenuCollapseLength:I

.field private static mPanelContentLenght:I

.field private static mPanelSubContentLengthLandscape:I

.field private static mPanelSubContentLengthPortrait:I

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static mThirdMenuHeight:I

.field private static mThirdMenuMarginEdge:I

.field private static mThirdMenuWidth:I

.field private static mValidTouchFocusArea:Landroid/graphics/Rect;

.field private static mZoomControlLayoutHeight:I

.field private static mZoomControlLayoutRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    .line 8
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    .line 9
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    .line 10
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    .line 11
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    .line 12
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    .line 13
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenHeight:I

    .line 15
    const/high16 v0, -0x4080

    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mDensity:F

    .line 17
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    .line 18
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    .line 20
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginBottom:I

    .line 21
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginRight:I

    .line 23
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mControlBarHeight:I

    .line 24
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mControlBarScaleToItself:F

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutHeight:I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    .line 30
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    .line 31
    sput v1, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getControlBarHeight()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mControlBarHeight:I

    return v0
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mDensity:F

    return v0
.end method

.method public static getFrameHeight()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    return v0
.end method

.method public static getFrameMarginBottom()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginBottom:I

    return v0
.end method

.method public static getFrameMarginRight()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginRight:I

    return v0
.end method

.method public static getFrameWidth()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    return v0
.end method

.method public static getMenuCollapseLength()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    return v0
.end method

.method public static getPanelContentLength()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    return v0
.end method

.method public static getPanelSubContentLengthLandscape()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    return v0
.end method

.method public static getPanelSubContentLengthPortrait()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    return v0
.end method

.method public static getThirdMenuHeight()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    return v0
.end method

.method public static getThirdMenuWidth()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    return v0
.end method

.method public static getThirtMenuMarginEdge()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    return v0
.end method

.method public static getValidTouchFocusArea()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getZoomControlLayoutHeight()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutHeight:I

    return v0
.end method

.method public static getZoomControlLayoutRectLandscape()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static setControlBarHeight(I)V
    .locals 2
    .parameter "mControlBarHeight"

    .prologue
    .line 153
    int-to-float v0, p0

    sget v1, Lcom/android/hwcamera/hwui/MenuCommon;->mControlBarScaleToItself:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mControlBarHeight:I

    .line 154
    return-void
.end method

.method public static setDensity(F)V
    .locals 0
    .parameter "density"

    .prologue
    .line 91
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mDensity:F

    .line 92
    return-void
.end method

.method public static setFrameHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 108
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    .line 109
    return-void
.end method

.method public static setFrameMarginBottom(I)V
    .locals 0
    .parameter "marginBottom"

    .prologue
    .line 133
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginBottom:I

    .line 134
    return-void
.end method

.method public static setFrameMarginRight(I)V
    .locals 0
    .parameter "mFrameMarginRight"

    .prologue
    .line 186
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameMarginRight:I

    .line 187
    return-void
.end method

.method public static setFrameWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 100
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    .line 101
    return-void
.end method

.method public static setMenuCollapseLength(I)V
    .locals 0
    .parameter "lenght"

    .prologue
    .line 116
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    .line 117
    return-void
.end method

.method public static setPanelContentLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 34
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    .line 35
    return-void
.end method

.method public static setPanelSubContentLengthLandscape(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 50
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    .line 51
    return-void
.end method

.method public static setPanelSubContentLengthPortrait(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 42
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    .line 43
    return-void
.end method

.method public static setScreenHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 82
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenHeight:I

    .line 83
    return-void
.end method

.method public static setScreenWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 74
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    .line 75
    return-void
.end method

.method public static setThirdMenuHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 58
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    .line 59
    return-void
.end method

.method public static setThirdMenuMarginEdge(I)V
    .locals 0
    .parameter "margin"

    .prologue
    .line 124
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    .line 125
    return-void
.end method

.method public static setThirdMenuWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 66
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    .line 67
    return-void
.end method

.method public static setValidTouchFocusArea(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 174
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 175
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 176
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 177
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mValidTouchFocusArea:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 178
    return-void
.end method

.method public static setZoomControlLayoutHeight(I)V
    .locals 0
    .parameter "mZoomControlLayoutHeight"

    .prologue
    .line 149
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutHeight:I

    .line 150
    return-void
.end method

.method public static setZoomControlLayoutRectLandscape(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 158
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 159
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 161
    sget-object v0, Lcom/android/hwcamera/hwui/MenuCommon;->mZoomControlLayoutRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 162
    return-void
.end method
