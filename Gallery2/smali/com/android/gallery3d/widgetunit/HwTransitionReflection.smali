.class public Lcom/android/gallery3d/widgetunit/HwTransitionReflection;
.super Ljava/lang/Object;
.source "HwTransitionReflection.java"


# instance fields
.field private HwTransitionInstance:Ljava/lang/Object;

.field private bErr:Z

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mAnimateDispatchDrawMethod:Ljava/lang/reflect/Method;

.field private mAnimateDrawMethod:Ljava/lang/reflect/Method;

.field private mIs3DAnimationMethod:Ljava/lang/reflect/Method;

.field private mSetBackgroundMethod:Ljava/lang/reflect/Method;

.field private mSetCameraDistanceMethod:Ljava/lang/reflect/Method;

.field private mSetLayerTransparentMethod:Ljava/lang/reflect/Method;

.field private mSetTransitionTypeMethod:Ljava/lang/reflect/Method;

.field private mStartAnimationMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "targetView"
    .parameter "type"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;-><init>(Landroid/view/View;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1
    .parameter "targetView"
    .parameter "type"
    .parameter "pageSpacing"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    .line 37
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->HwTransitionInstance:Ljava/lang/Object;

    .line 42
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetTransitionTypeMethod:Ljava/lang/reflect/Method;

    .line 43
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDrawMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mStartAnimationMethod:Ljava/lang/reflect/Method;

    .line 45
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetCameraDistanceMethod:Ljava/lang/reflect/Method;

    .line 46
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mIs3DAnimationMethod:Ljava/lang/reflect/Method;

    .line 47
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDispatchDrawMethod:Ljava/lang/reflect/Method;

    .line 48
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetLayerTransparentMethod:Ljava/lang/reflect/Method;

    .line 49
    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetBackgroundMethod:Ljava/lang/reflect/Method;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->bErr:Z

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->getHwTransitionClass(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->getHwTransitionInstance(Landroid/view/View;Ljava/lang/String;I)V

    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->initDeclaredMethods()V

    .line 80
    return-void
.end method

.method private getHwTransitionClass(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 269
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/hwtransition.jar"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 272
    .local v1, loader:Ldalvik/system/PathClassLoader;
    :try_start_0
    const-string v2, "com.huawei.hwtransition.HwTransition"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getHwTransitionInstance(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    .line 292
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 295
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->HwTransitionInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v1, "HwTransitionReflection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class HwTransition Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDeclaredMethods()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 307
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v8

    .line 308
    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Canvas;

    aput-object v2, v1, v8

    .line 309
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v8

    .line 310
    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    .line 311
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Canvas;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 312
    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    .line 313
    new-array v6, v7, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Bitmap;

    aput-object v7, v6, v8

    .line 314
    iget-object v7, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    if-eqz v7, :cond_0

    .line 316
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v8, "setTransitionType"

    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetTransitionTypeMethod:Ljava/lang/reflect/Method;

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v7, "animateDraw"

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDrawMethod:Ljava/lang/reflect/Method;

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "startAnimation"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mStartAnimationMethod:Ljava/lang/reflect/Method;

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "setCameraDistance"

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetCameraDistanceMethod:Ljava/lang/reflect/Method;

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "is3DAnimation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mIs3DAnimationMethod:Ljava/lang/reflect/Method;

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "animateDispatchDraw"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDispatchDrawMethod:Ljava/lang/reflect/Method;

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "setLayerTransparent"

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetLayerTransparentMethod:Ljava/lang/reflect/Method;

    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->clazz:Ljava/lang/Class;

    const-string v1, "setBackground"

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mSetBackgroundMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public animateDraw(Landroid/graphics/Canvas;)Z
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, rtn:Z
    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDrawMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mAnimateDrawMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->HwTransitionInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->bErr:Z

    if-eqz v2, :cond_0

    .line 166
    iput-boolean v6, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->bErr:Z

    .line 167
    const-string v2, "HwTransitionReflection"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, rtn:Z
    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mStartAnimationMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->mStartAnimationMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->HwTransitionInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->bErr:Z

    if-eqz v2, :cond_0

    .line 144
    iput-boolean v6, p0, Lcom/android/gallery3d/widgetunit/HwTransitionReflection;->bErr:Z

    .line 145
    const-string v2, "HwTransitionReflection"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
