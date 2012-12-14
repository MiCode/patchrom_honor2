.class public Lcom/scalado/app/rewind/SourceManager;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/SourceManager$1;,
        Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;,
        Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;,
        Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;,
        Lcom/scalado/app/rewind/SourceManager$Configuration;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

.field private mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

.field private mMagnifierSourceRect:Lcom/scalado/base/Rect;

.field private mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;)V
    .locals 2
    .parameter "magnifiedImageConfig"
    .parameter "backgroundConfig"
    .parameter "thumbnailConfig"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "SourceManager"

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->clone()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    .line 217
    invoke-virtual {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->clone()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    .line 218
    invoke-virtual {p3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->clone()Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mThumbnailImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    .line 222
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    .line 223
    new-instance v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;-><init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    .line 224
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifierSourceRect:Lcom/scalado/base/Rect;

    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;

    .line 229
    invoke-virtual {p0}, Lcom/scalado/app/rewind/SourceManager;->reset()V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/app/rewind/SourceManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    return-object v0
.end method

.method private getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    .locals 3
    .parameter "entry"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 497
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    const-string v2, "Index returned is -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    return v0
.end method


# virtual methods
.method public addJpeg(Lcom/scalado/base/Buffer;)I
    .locals 6
    .parameter "jpeg"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/scalado/app/rewind/SourceManager;->getNumberOfImages()I

    move-result v1

    .line 285
    .local v1, index:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add jpeg index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;-><init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;Lcom/scalado/app/rewind/SourceManager$1;)V

    .line 287
    .local v0, entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 289
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    invoke-virtual {v3, v2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return v1
.end method

.method public getBackgroundConfig()Lcom/scalado/app/rewind/SourceManager$Configuration;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    return-object v0
.end method

.method public getBackgroundImage(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"

    .prologue
    .line 377
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 378
    :cond_0
    const/4 v1, 0x0

    .line 381
    :goto_0
    return-object v1

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 381
    .local v0, bgImage:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    .locals 3
    .parameter "index"

    .prologue
    .line 332
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside valid range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    return-object v0
.end method

.method public getMagnifiedImage(ILcom/scalado/base/Rect;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    invoke-virtual {v0, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getMagnifiedImage(Lcom/scalado/base/Rect;)Lcom/scalado/base/Image;

    move-result-object v0

    return-object v0
.end method

.method public getMagnifierHeight()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    return v0
.end method

.method public getMagnifierWidth()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getSourceBuffer(I)Lcom/scalado/base/Buffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getSourceBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    const-string v1, "New listener registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;

    const-string v1, "Reset source manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mHandler:Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    sget-object v1, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$402(Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/caps/screen/Screen$RenderMode;)Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 242
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 244
    return-void
.end method

.method public setMagnifierSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$602(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 426
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$702(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 427
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
