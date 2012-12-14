.class public Lcom/android/hwcamera/UiElements;
.super Ljava/lang/Object;
.source "UiElements.java"


# instance fields
.field private aminStartTime:J

.field private bottomViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private inAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private isShowOut:Z

.field private leftViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private outAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private rightViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private topViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/UiElements;->aminStartTime:J

    return-void
.end method

.method private animationsAction(Ljava/util/Map;ZZ)V
    .locals 5
    .parameter
    .parameter "isStop"
    .parameter "isIn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, animations:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/View;Landroid/view/animation/Animation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :cond_0
    return-void

    .line 98
    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    .line 99
    .local v3, visible:I
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 100
    .local v2, v:Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 101
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_3

    .line 102
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 98
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #visible:I
    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    .line 105
    .restart local v0       #anim:Landroid/view/animation/Animation;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #visible:I
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private genStartPos(IZZ)F
    .locals 9
    .parameter "startpos"
    .parameter "isPreShowOut"
    .parameter "isCurrentShowOut"

    .prologue
    const/high16 v8, 0x3f80

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/hwcamera/UiElements;->aminStartTime:J

    sub-long v0, v4, v6

    .line 203
    .local v0, durationTime:J
    long-to-float v4, v0

    const/high16 v5, 0x4316

    div-float v3, v4, v5

    .line 204
    .local v3, rate:F
    cmpl-float v4, v3, v8

    if-ltz v4, :cond_0

    .line 205
    int-to-float v2, p1

    .line 222
    :goto_0
    return v2

    .line 208
    :cond_0
    if-eqz p2, :cond_2

    .line 209
    if-eqz p3, :cond_1

    .line 210
    int-to-float v4, p1

    sub-float v5, v8, v3

    mul-float v2, v4, v5

    .local v2, pos:F
    goto :goto_0

    .line 212
    .end local v2           #pos:F
    :cond_1
    int-to-float v4, p1

    mul-float v2, v4, v3

    .restart local v2       #pos:F
    goto :goto_0

    .line 216
    .end local v2           #pos:F
    :cond_2
    if-nez p3, :cond_3

    .line 217
    int-to-float v4, p1

    sub-float v5, v8, v3

    mul-float v2, v4, v5

    .restart local v2       #pos:F
    goto :goto_0

    .line 219
    .end local v2           #pos:F
    :cond_3
    int-to-float v4, p1

    mul-float v2, v4, v3

    .restart local v2       #pos:F
    goto :goto_0
.end method

.method private initAnimations(Ljava/util/Map;II)Ljava/util/Map;
    .locals 10
    .parameter
    .parameter "orientation"
    .parameter "inOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;II)",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, views:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/View;Landroid/view/View;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v2, anims:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/View;Landroid/view/animation/Animation;>;"
    const/4 v0, 0x0

    .line 117
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 118
    .local v5, v:Landroid/view/View;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 119
    .local v4, moveView:Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 122
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 125
    .local v1, animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    neg-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 126
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    .end local v1           #animDt:F
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 131
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float v8, v1

    const/4 v9, 0x0

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 132
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 135
    .end local v1           #animDt:F
    :cond_3
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 136
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 139
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    neg-float v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 140
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 143
    .end local v1           #animDt:F
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 145
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    neg-float v9, v1

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 146
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 156
    .end local v1           #animDt:F
    :pswitch_1
    const/4 v6, 0x1

    if-ne p3, v6, :cond_7

    .line 157
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 160
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v1, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 161
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    .end local v1           #animDt:F
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 166
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v1, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 167
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_2

    .line 170
    .end local v1           #animDt:F
    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_5

    .line 171
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 172
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 174
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v6, v1, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_2

    .line 178
    .end local v1           #animDt:F
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/hwcamera/UiElements;->genStartPos(IZZ)F

    move-result v1

    .line 180
    .restart local v1       #animDt:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v8, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x96

    float-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_2

    .line 197
    .end local v1           #animDt:F
    .end local v4           #moveView:Landroid/view/View;
    .end local v5           #v:Landroid/view/View;
    :cond_9
    return-object v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initInAnimations()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    invoke-direct {p0, v1, v3, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    :cond_3
    return-void
.end method

.method private initOutAnimations()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    invoke-direct {p0, v1, v3, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->rightViews:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/UiElements;->leftViews:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/UiElements;->initAnimations(Ljava/util/Map;II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    :cond_3
    return-void
.end method

.method private startInAnimations()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->inAnimations:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/UiElements;->animationsAction(Ljava/util/Map;ZZ)V

    .line 54
    return-void
.end method

.method private startOutAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->outAnimations:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/hwcamera/UiElements;->animationsAction(Ljava/util/Map;ZZ)V

    .line 58
    return-void
.end method


# virtual methods
.method public addBottomView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->bottomViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public addTopView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public removeTopView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/UiElements;->topViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startShowIn()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/hwcamera/UiElements;->initInAnimations()V

    .line 47
    invoke-direct {p0}, Lcom/android/hwcamera/UiElements;->startInAnimations()V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/UiElements;->aminStartTime:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    .line 50
    return-void
.end method

.method public startShowOut()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/hwcamera/UiElements;->initOutAnimations()V

    .line 40
    invoke-direct {p0}, Lcom/android/hwcamera/UiElements;->startOutAnimations()V

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/UiElements;->aminStartTime:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/UiElements;->isShowOut:Z

    .line 43
    return-void
.end method
