.class Lcom/scalado/app/rewind/AutoSession$LooperThread;
.super Ljava/lang/Thread;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;-><init>(Lcom/scalado/app/rewind/AutoSession;)V

    return-void
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/scalado/app/rewind/AutoSession$LooperThread;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->whatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whatName(I)Ljava/lang/String;
    .locals 1
    .parameter "what"

    .prologue
    .line 235
    sparse-switch p1, :sswitch_data_0

    .line 251
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 237
    :sswitch_0
    const-string v0, "MSG_ADD_JPEG"

    goto :goto_0

    .line 239
    :sswitch_1
    const-string v0, "MSG_OUTPUT_JPEG"

    goto :goto_0

    .line 241
    :sswitch_2
    const-string v0, "MSG_GET_MERGED_IMG"

    goto :goto_0

    .line 243
    :sswitch_3
    const-string v0, "MSG_GET_SOURCE_IMG"

    goto :goto_0

    .line 245
    :sswitch_4
    const-string v0, "MSG_RECYCLE"

    goto :goto_0

    .line 247
    :sswitch_5
    const-string v0, "MSG_QUIT"

    goto :goto_0

    .line 249
    :sswitch_6
    const-string v0, "MSG_OUTPUT_SOURCE_JPEG"

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 230
    new-instance v0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;Lcom/scalado/app/rewind/AutoSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    .line 231
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 232
    return-void
.end method
