.class Lcom/scalado/app/rewind/RewindSession$ScreenParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenParams"
.end annotation


# instance fields
.field private mDirty:Z

.field private mFx:I

.field private mZoomLvl:F

.field private mZoomRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RewindSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 1
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    .line 1055
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z

    .line 1057
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->setZoom(Lcom/scalado/base/Rect;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1053
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    return v0
.end method

.method static synthetic access$2202(Lcom/scalado/app/rewind/RewindSession$ScreenParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    return p1
.end method

.method static synthetic access$2400(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->isDefaultZoom()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1053
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    return v0
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/RewindSession$ScreenParams;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    return p1
.end method

.method private copyFrom(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 1085
    iget-object v0, p1, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    #calls: Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->access$2600(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1086
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    .line 1087
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    .line 1088
    return-void
.end method

.method private isDefaultZoom()Z
    .locals 2

    .prologue
    .line 1102
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setZoom(Lcom/scalado/base/Rect;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mTransform:Lcom/scalado/app/rewind/CoordTransform;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession;->access$2700(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/CoordTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1093
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mDirty:Z

    .line 1095
    const-string v0, "RewindSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    invoke-static {v2}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCurScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindSession;->access$2800(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    move-result-object v0

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    .line 1061
    .local v0, newParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$ScreenParams;)V

    .line 1062
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->clone()Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1066
    instance-of v4, p1, Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    if-nez v4, :cond_1

    move v2, v3

    .line 1081
    :cond_0
    :goto_0
    return v2

    .line 1070
    :cond_1
    if-eq p0, p1, :cond_0

    move-object v0, p1

    .line 1074
    check-cast v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    .line 1076
    .local v0, params:Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 1077
    iget v4, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    iget v5, v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomLvl:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    move v1, v2

    .line 1081
    .local v1, zoomSame:Z
    :goto_1
    if-eqz v1, :cond_2

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    iget v5, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mFx:I

    if-eq v4, v5, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v1           #zoomSame:Z
    :cond_3
    move v1, v3

    .line 1077
    goto :goto_1

    .line 1079
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    iget-object v5, v0, Lcom/scalado/app/rewind/RewindSession$ScreenParams;->mZoomRect:Lcom/scalado/base/Rect;

    invoke-virtual {v4, v5}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1       #zoomSame:Z
    goto :goto_1
.end method
