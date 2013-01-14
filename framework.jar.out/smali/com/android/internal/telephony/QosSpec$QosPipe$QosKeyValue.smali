.class public Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec$QosPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QosKeyValue"
.end annotation


# instance fields
.field qosKey:I

.field qosValue:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/internal/telephony/QosSpec$QosPipe;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->this$1:Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosKey:I

    iput-object p3, p0, Lcom/android/internal/telephony/QosSpec$QosPipe$QosKeyValue;->qosValue:Ljava/lang/String;

    return-void
.end method
