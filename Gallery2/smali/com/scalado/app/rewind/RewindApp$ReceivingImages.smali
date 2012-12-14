.class abstract Lcom/scalado/app/rewind/RewindApp$ReceivingImages;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReceivingImages"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$ReceivingImages;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$ReceivingImages;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected acceptsImages()Z
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x1

    return v0
.end method
