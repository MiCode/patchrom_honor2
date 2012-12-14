.class final enum Lcom/android/hwcamera/hwui/Panel$State;
.super Ljava/lang/Enum;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/hwcamera/hwui/Panel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/hwcamera/hwui/Panel$State;

.field public static final enum ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

.field public static final enum ANIMATING:Lcom/android/hwcamera/hwui/Panel$State;

.field public static final enum FLYING:Lcom/android/hwcamera/hwui/Panel$State;

.field public static final enum READY:Lcom/android/hwcamera/hwui/Panel$State;

.field public static final enum TRACKING:Lcom/android/hwcamera/hwui/Panel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/hwcamera/hwui/Panel$State;

    const-string v1, "ABOUT_TO_ANIMATE"

    invoke-direct {v0, v1, v2}, Lcom/android/hwcamera/hwui/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    .line 62
    new-instance v0, Lcom/android/hwcamera/hwui/Panel$State;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v3}, Lcom/android/hwcamera/hwui/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->ANIMATING:Lcom/android/hwcamera/hwui/Panel$State;

    .line 63
    new-instance v0, Lcom/android/hwcamera/hwui/Panel$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/android/hwcamera/hwui/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    .line 64
    new-instance v0, Lcom/android/hwcamera/hwui/Panel$State;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v5}, Lcom/android/hwcamera/hwui/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    .line 65
    new-instance v0, Lcom/android/hwcamera/hwui/Panel$State;

    const-string v1, "FLYING"

    invoke-direct {v0, v1, v6}, Lcom/android/hwcamera/hwui/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/hwcamera/hwui/Panel$State;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->ANIMATING:Lcom/android/hwcamera/hwui/Panel$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/hwcamera/hwui/Panel$State;->$VALUES:[Lcom/android/hwcamera/hwui/Panel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/hwcamera/hwui/Panel$State;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/android/hwcamera/hwui/Panel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/Panel$State;

    return-object v0
.end method

.method public static values()[Lcom/android/hwcamera/hwui/Panel$State;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/hwcamera/hwui/Panel$State;->$VALUES:[Lcom/android/hwcamera/hwui/Panel$State;

    invoke-virtual {v0}, [Lcom/android/hwcamera/hwui/Panel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/hwcamera/hwui/Panel$State;

    return-object v0
.end method
