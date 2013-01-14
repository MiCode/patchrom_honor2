.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;
.super Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;
.source "MSimSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .locals 13
    .parameter "result"

    .prologue
    const v12, 0x104052a

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 155
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_0

    .line 156
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->hide()V

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 160
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 161
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x10900bf

    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    const v9, 0x102002e

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 164
    .local v4, layout:Landroid/view/View;
    const v7, 0x102000b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 165
    .local v5, text:Landroid/widget/TextView;
    const v7, 0x104052d

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 167
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 168
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 169
    const/16 v7, 0x10

    invoke-virtual {v6, v7, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 170
    invoke-virtual {v6, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 175
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 177
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 204
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #toast:Landroid/widget/Toast;
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 205
    return-void

    .line 179
    :cond_1
    if-ne p1, v11, :cond_3

    .line 183
    :try_start_0
    const-string v7, "phone_msim"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I

    move-result v0

    .line 186
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_2

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10402f3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040525

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0           #attemptsRemaining:I
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iput v10, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 193
    .restart local v0       #attemptsRemaining:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x10402f3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    .end local v0           #attemptsRemaining:I
    :catch_0
    move-exception v2

    .line 196
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 199
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
