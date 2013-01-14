.class Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$2;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 261
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0
.end method
