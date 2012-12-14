.class Lcom/android/hwcamera/hwui/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/Panel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 336
    const/4 v2, 0x0

    .local v2, fromXDelta:I
    const/4 v5, 0x0

    .local v5, toXDelta:I
    const/4 v3, 0x0

    .local v3, fromYDelta:I
    const/4 v6, 0x0

    .line 337
    .local v6, toYDelta:I
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_1

    .line 338
    iget-object v10, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mVelocity:F
    invoke-static {v9}, Lcom/android/hwcamera/hwui/Panel;->access$1100(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    xor-int/2addr v8, v9

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v10, v8}, Lcom/android/hwcamera/hwui/Panel;->access$902(Lcom/android/hwcamera/hwui/Panel;Z)Z

    .line 341
    :cond_1
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mOrientation:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$200(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 342
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v4

    .line 343
    .local v4, height:I
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 344
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    if-nez v8, :cond_7

    neg-int v3, v4

    .line 348
    :goto_2
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_b

    .line 349
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1200(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v9}, Lcom/android/hwcamera/hwui/Panel;->access$1200(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 350
    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    #setter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/android/hwcamera/hwui/Panel;->access$902(Lcom/android/hwcamera/hwui/Panel;Z)Z

    .line 351
    move v6, v3

    .line 353
    :cond_2
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1200(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    float-to-int v3, v8

    .line 360
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1300(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 361
    const/high16 v8, 0x447a

    sub-int v9, v6, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/android/hwcamera/hwui/Panel;->access$1100(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 362
    .local v1, calculatedDuration:I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 364
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 403
    .end local v4           #height:I
    :goto_5
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    const/4 v10, 0x0

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v9, v10}, Lcom/android/hwcamera/hwui/Panel;->access$1202(Lcom/android/hwcamera/hwui/Panel;F)F

    move-result v9

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v8, v9}, Lcom/android/hwcamera/hwui/Panel;->access$1502(Lcom/android/hwcamera/hwui/Panel;F)F

    .line 404
    if-nez v1, :cond_17

    .line 405
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8, v9}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 406
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 407
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_4
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #calls: Lcom/android/hwcamera/hwui/Panel;->postProcess()V
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1600(Lcom/android/hwcamera/hwui/Panel;)V

    .line 424
    :goto_6
    return-void

    .line 338
    .end local v1           #calculatedDuration:I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v4       #height:I
    :cond_7
    move v3, v4

    .line 344
    goto/16 :goto_2

    .line 346
    :cond_8
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    if-nez v8, :cond_9

    neg-int v6, v4

    :goto_7
    goto/16 :goto_2

    :cond_9
    move v6, v4

    goto :goto_7

    .line 350
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 355
    :cond_b
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_3

    .line 356
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1200(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    float-to-int v3, v8

    goto/16 :goto_4

    .line 367
    :cond_c
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    if-lez v8, :cond_d

    .line 368
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    sub-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v9}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1       #calculatedDuration:I
    goto :goto_5

    .line 370
    .end local v1           #calculatedDuration:I
    :cond_d
    const/16 v1, 0x14

    .restart local v1       #calculatedDuration:I
    goto :goto_5

    .line 374
    .end local v1           #calculatedDuration:I
    .end local v4           #height:I
    :cond_e
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v7

    .line 375
    .local v7, width:I
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 376
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    neg-int v2, v7

    .line 380
    :goto_8
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_15

    .line 381
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1500(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    int-to-float v9, v2

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v9}, Lcom/android/hwcamera/hwui/Panel;->access$1500(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_f

    .line 382
    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_9
    #setter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/android/hwcamera/hwui/Panel;->access$902(Lcom/android/hwcamera/hwui/Panel;Z)Z

    .line 383
    move v5, v2

    .line 385
    :cond_f
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1500(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    float-to-int v2, v8

    .line 392
    :cond_10
    :goto_a
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_16

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1300(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 393
    const/high16 v8, 0x447a

    sub-int v9, v5, v2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/android/hwcamera/hwui/Panel;->access$1100(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 394
    .restart local v1       #calculatedDuration:I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 396
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_5

    .end local v1           #calculatedDuration:I
    :cond_11
    move v2, v7

    .line 376
    goto :goto_8

    .line 378
    :cond_12
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    neg-int v5, v7

    :goto_b
    goto :goto_8

    :cond_13
    move v5, v7

    goto :goto_b

    .line 382
    :cond_14
    const/4 v8, 0x0

    goto :goto_9

    .line 387
    :cond_15
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_10

    .line 388
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1500(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v8

    float-to-int v2, v8

    goto :goto_a

    .line 399
    :cond_16
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v8

    sub-int v9, v5, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I
    invoke-static {v9}, Lcom/android/hwcamera/hwui/Panel;->access$400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1       #calculatedDuration:I
    goto/16 :goto_5

    .line 413
    .end local v7           #width:I
    :cond_17
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v2

    int-to-float v9, v5

    int-to-float v10, v3

    int-to-float v11, v6

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 414
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 415
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1700(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 416
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 417
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v8, v9, :cond_19

    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1300(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 418
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 423
    :cond_18
    :goto_c
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-virtual {v8, v0}, Lcom/android/hwcamera/hwui/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 420
    :cond_19
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1800(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 421
    iget-object v8, p0, Lcom/android/hwcamera/hwui/Panel$2;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/android/hwcamera/hwui/Panel;->access$1800(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_c
.end method
