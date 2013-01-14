.class public Lcom/android/internal/telephony/QosIndication;
.super Ljava/lang/Object;
.source "QosIndication.java"


# instance fields
.field mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_QOS_STATE_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v0, "persist.telephony.qosUnicast"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.server"

    const-string v2, "com.android.server.LinkManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method getIndication()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method setIndState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "error"

    .prologue
    if-eqz p2, :cond_0

    const/16 p1, 0xc

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosIndicationState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setQosId(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setQosSpec(Lcom/android/internal/telephony/QosSpec;)V
    .locals 2
    .parameter "spec"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosSpec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method setQosState(I)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setUserData(I)V
    .locals 2
    .parameter "userData"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosUserData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
