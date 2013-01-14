.class public Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
.super Ljava/lang/Object;
.source "IHuaweiMsim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHuaweiMsim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubInfo"
.end annotation


# instance fields
.field public appType:Ljava/lang/String;

.field public slotId:I

.field public subId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
