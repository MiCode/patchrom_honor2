.class Lcom/scalado/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;
.super Ljava/lang/Object;
.source "SessionStore.java"

# interfaces
.implements Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/SessionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyStrobeAnalyzerLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/SessionStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/scalado/hwcamera/strobe/SessionStore$MyStrobeAnalyzerLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 607
    const-string v0, "SessionStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method
