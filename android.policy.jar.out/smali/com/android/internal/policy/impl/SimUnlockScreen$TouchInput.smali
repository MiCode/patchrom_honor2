.class public Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchInput"
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/TextView;

.field protected mEight:Landroid/widget/TextView;

.field protected mFive:Landroid/widget/TextView;

.field protected mFour:Landroid/widget/TextView;

.field protected mNine:Landroid/widget/TextView;

.field protected mOne:Landroid/widget/TextView;

.field protected mSeven:Landroid/widget/TextView;

.field protected mSix:Landroid/widget/TextView;

.field protected mThree:Landroid/widget/TextView;

.field protected mTwo:Landroid/widget/TextView;

.field protected mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const v0, 0x1020357

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 346
    const v0, 0x102034e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 347
    const v0, 0x102034f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 348
    const v0, 0x1020350

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 349
    const v0, 0x1020351

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 350
    const v0, 0x1020352

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 351
    const v0, 0x1020353

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 352
    const v0, 0x1020354

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 353
    const v0, 0x1020355

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 354
    const v0, 0x1020356

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 355
    const v0, 0x1020269

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method


# virtual methods
.method protected checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    const/4 v0, -0x1

    .line 401
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 402
    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 404
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 406
    const/4 v0, 0x2

    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 408
    const/4 v0, 0x3

    goto :goto_0

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 410
    const/4 v0, 0x4

    goto :goto_0

    .line 411
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 412
    const/4 v0, 0x5

    goto :goto_0

    .line 413
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 414
    const/4 v0, 0x6

    goto :goto_0

    .line 415
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 416
    const/4 v0, 0x7

    goto :goto_0

    .line 417
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 418
    const/16 v0, 0x8

    goto :goto_0

    .line 419
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 420
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 393
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0
.end method
