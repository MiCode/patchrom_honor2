.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimTouchInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    const v0, 0x1020357

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    const v0, 0x102034e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    const v0, 0x102034f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    const v0, 0x1020350

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    const v0, 0x1020351

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    const v0, 0x1020352

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    const v0, 0x1020353

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    const v0, 0x1020354

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    const v0, 0x1020355

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    const v0, 0x1020356

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    const v0, 0x1020269

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->updatePinUnlockCancel(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .local v0, digit:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->reportDigit(I)V

    goto :goto_0
.end method
