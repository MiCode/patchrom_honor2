.class public Lcom/android/server/LocationManagerService$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlacklistObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/android/server/LocationManagerService$BlacklistObserver;->this$0:Lcom/android/server/LocationManagerService;

    .line 2345
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2346
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/server/LocationManagerService$BlacklistObserver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->reloadBlacklist()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)V

    .line 2350
    return-void
.end method
