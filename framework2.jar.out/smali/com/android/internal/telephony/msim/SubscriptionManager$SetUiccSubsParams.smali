.class Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUiccSubsParams"
.end annotation


# instance fields
.field public subId:I

.field public subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

.field final synthetic this$0:Lcom/android/internal/telephony/msim/SubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V
    .locals 0
    .parameter
    .parameter "sub"
    .parameter "status"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->this$0:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    return-void
.end method
