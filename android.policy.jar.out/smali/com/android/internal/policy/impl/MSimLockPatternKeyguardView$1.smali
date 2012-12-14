.class Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "MSimLockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->keyguardScreenCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mForgotPattern:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mForgotPattern:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->isSecure()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_2
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    if-lez v3, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    goto :goto_0

    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "MSimLockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showWipeDialog(I)V

    goto :goto_2

    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .local v4, showTimeout:Z
    :goto_3
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v8, :cond_5

    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    const/4 v4, 0x0

    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showTimeoutDialog()V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    goto :goto_3

    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mHasOverlay:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mFaceLockServiceRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->pokeWakelock(I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updatePinUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePinUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    move v0, v1

    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_3

    :cond_1
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PIN dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0       #otherSub:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method

.method public updatePukUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePukUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move v0, v1

    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_1

    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PUK dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0       #otherSub:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method
