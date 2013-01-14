.class Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$AudioServicesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwThemeHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$AudioServicesEx;


# direct methods
.method private constructor <init>(Landroid/media/AudioService$AudioServicesEx;)V
    .locals 0
    .parameter

    .prologue
    .line 5517
    iput-object p1, p0, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;->this$1:Landroid/media/AudioService$AudioServicesEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService$AudioServicesEx;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5517
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;-><init>(Landroid/media/AudioService$AudioServicesEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 5520
    const/16 v0, 0x63

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 5522
    const-string v0, "AudioServicesEx"

    const-string v1, "Handle ringtone changed message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;->this$1:Landroid/media/AudioService$AudioServicesEx;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioServicesEx;->reloadSoundEffects()V

    .line 5526
    :cond_0
    return-void
.end method
