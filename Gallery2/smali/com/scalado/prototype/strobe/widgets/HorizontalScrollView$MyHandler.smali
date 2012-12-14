.class Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;
.super Landroid/os/Handler;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;-><init>(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView$MyHandler;->this$0:Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;

    #calls: Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->fadeOut()V
    invoke-static {v0}, Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;->access$100(Lcom/scalado/prototype/strobe/widgets/HorizontalScrollView;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
