.class public Lcom/scalado/app/ui/Widget$Config;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Config"
.end annotation


# instance fields
.field protected mBringToFrontWhenMaximized:Z

.field protected mHideOnOut:Z

.field protected mOnTopDeselectOnDown:Z

.field final synthetic this$0:Lcom/scalado/app/ui/Widget;


# direct methods
.method protected constructor <init>(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object p1, p0, Lcom/scalado/app/ui/Widget$Config;->this$0:Lcom/scalado/app/ui/Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/scalado/app/ui/Widget$Config;->mHideOnOut:Z

    .line 30
    iput-boolean v0, p0, Lcom/scalado/app/ui/Widget$Config;->mBringToFrontWhenMaximized:Z

    .line 31
    iput-boolean v0, p0, Lcom/scalado/app/ui/Widget$Config;->mOnTopDeselectOnDown:Z

    return-void
.end method
