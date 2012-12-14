.class Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;
.super Ljava/lang/Object;
.source "HdrLableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/HdrLableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HdrLabel"
.end annotation


# instance fields
.field private mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "iconId"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, "HdrLabel"

    const-string v1, "HdrLabel"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mWidth:I

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHeight:I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->recycle()V

    return-void
.end method

.method private recycle()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->recycle()V

    .line 169
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHdrTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 164
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 165
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->mWidth:I

    return v0
.end method
