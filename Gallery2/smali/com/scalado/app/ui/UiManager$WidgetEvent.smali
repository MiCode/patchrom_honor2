.class Lcom/scalado/app/ui/UiManager$WidgetEvent;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetEvent"
.end annotation


# instance fields
.field private mEvent:I

.field final synthetic this$0:Lcom/scalado/app/ui/UiManager;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/UiManager;I)V
    .locals 0
    .parameter
    .parameter "event"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager$WidgetEvent;->this$0:Lcom/scalado/app/ui/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput p2, p0, Lcom/scalado/app/ui/UiManager$WidgetEvent;->mEvent:I

    .line 729
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/ui/UiManager;ILcom/scalado/app/ui/UiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/ui/UiManager$WidgetEvent;-><init>(Lcom/scalado/app/ui/UiManager;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/app/ui/UiManager$WidgetEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 722
    iget v0, p0, Lcom/scalado/app/ui/UiManager$WidgetEvent;->mEvent:I

    return v0
.end method
