.class public Lcom/scalado/app/rewind/RectTracker$State;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field public alignmentSuccessful:Z

.field public compositionSuccessful:Z

.field public error:Z

.field public isComplete:Z

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;

.field public trackingSuccessful:Z


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 139
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$State;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 134
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$State;->trackingSuccessful:Z

    .line 135
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    .line 136
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    .line 137
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;)V

    return-void
.end method
