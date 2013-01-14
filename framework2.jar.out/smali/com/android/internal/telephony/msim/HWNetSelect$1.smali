.class Lcom/android/internal/telephony/msim/HWNetSelect$1;
.super Landroid/os/CountDownTimer;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/msim/HWNetSelect;->setTimerToCloseCardManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/HWNetSelect;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/HWNetSelect;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$1;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$1;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$000(Lcom/android/internal/telephony/msim/HWNetSelect;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setTimerToCloseCardManager---onFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/msim/HWNetSelect;->TIMETOCLOSECARDMANAGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect$1;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect$1;->this$0:Lcom/android/internal/telephony/msim/HWNetSelect;

    #getter for: Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/msim/HWNetSelect;->access$000(Lcom/android/internal/telephony/msim/HWNetSelect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTimerToCloseCardManager---onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
