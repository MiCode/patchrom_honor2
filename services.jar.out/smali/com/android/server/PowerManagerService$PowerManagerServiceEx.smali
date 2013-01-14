.class Lcom/android/server/PowerManagerService$PowerManagerServiceEx;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerServiceEx"
.end annotation


# static fields
.field static final ANIM_STEPS_ACCELERATED:I = 0x2


# instance fields
.field private mProximityScreenOff:Z

.field private final mProximitySensorAccelerated:Z

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ro.config.hw_proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximitySensorAccelerated:Z

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximityScreenOff:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService$PowerManagerServiceEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->proximitySensorAccelerated()I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/PowerManagerService$PowerManagerServiceEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximitySensorAccelerated:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/android/server/PowerManagerService$PowerManagerServiceEx;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximityScreenOff:Z

    return p1
.end method

.method private proximitySensorAccelerated()I
    .locals 2

    .prologue
    const/16 v0, 0x3c

    .local v0, animStepsValue:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximitySensorAccelerated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$PowerManagerServiceEx;->mProximityScreenOff:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method


# virtual methods
.method public PowerManagerServiceEx()V
    .locals 0

    .prologue
    return-void
.end method
