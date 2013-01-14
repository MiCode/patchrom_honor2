.class public Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;
.super Ljava/lang/Object;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hardware/fmradio/FmTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FmPSFeatures"
.end annotation


# instance fields
.field public maxPSCharacters:I

.field public maxPSStringRepeatCount:I

.field final synthetic this$0:Lcom/huawei/android/hardware/fmradio/FmTransmitter;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hardware/fmradio/FmTransmitter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;->this$0:Lcom/huawei/android/hardware/fmradio/FmTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
