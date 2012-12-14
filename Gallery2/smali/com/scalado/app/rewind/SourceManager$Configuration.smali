.class public Lcom/scalado/app/rewind/SourceManager$Configuration;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private mConfig:Lcom/scalado/base/Image$Config;

.field private mHeight:I

.field private mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

.field private mRotation:Lcom/scalado/caps/Rotation;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 69
    return-void
.end method

.method public constructor <init>(IIILcom/scalado/caps/Rotation;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pixelformat"
    .parameter "rotation"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 61
    iput p1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    .line 62
    iput p2, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    .line 63
    invoke-static {p3}, Lcom/scalado/app/rewind/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    .line 65
    iput-object p4, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    .line 66
    return-void
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/caps/screen/Screen$RenderMode;)Lcom/scalado/caps/screen/Screen$RenderMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    return p1
.end method


# virtual methods
.method public clone()Lcom/scalado/app/rewind/SourceManager$Configuration;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/scalado/app/rewind/SourceManager$Configuration;

    invoke-direct {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>()V

    .line 73
    .local v0, cfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    iput v1, v0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    .line 74
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    iput v1, v0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    .line 75
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    iput-object v1, v0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    .line 76
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    iput-object v1, v0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;

    .line 77
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
    .line 52
    invoke-virtual {p0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->clone()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public config()Lcom/scalado/base/Image$Config;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I

    return v0
.end method
