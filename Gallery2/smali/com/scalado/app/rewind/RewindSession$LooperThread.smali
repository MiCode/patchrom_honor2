.class Lcom/scalado/app/rewind/RewindSession$LooperThread;
.super Ljava/lang/Thread;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

.field final synthetic this$0:Lcom/scalado/app/rewind/RewindSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1188
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/RewindSession$LooperThread;)Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/scalado/app/rewind/RewindSession$LooperThread;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->whatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whatName(I)Ljava/lang/String;
    .locals 1
    .parameter "what"

    .prologue
    .line 1165
    sparse-switch p1, :sswitch_data_0

    .line 1185
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 1167
    :sswitch_0
    const-string v0, "MSG_UPDATE"

    goto :goto_0

    .line 1169
    :sswitch_1
    const-string v0, "MSG_UPDATE_TRACED"

    goto :goto_0

    .line 1171
    :sswitch_2
    const-string v0, "MSG_UPDATE_PREVIEW"

    goto :goto_0

    .line 1173
    :sswitch_3
    const-string v0, "MSG_RENDER"

    goto :goto_0

    .line 1175
    :sswitch_4
    const-string v0, "MSG_COMMIT"

    goto :goto_0

    .line 1177
    :sswitch_5
    const-string v0, "MSG_OUTPUT_TO"

    goto :goto_0

    .line 1179
    :sswitch_6
    const-string v0, "MSG_GET_SCREEN"

    goto :goto_0

    .line 1181
    :sswitch_7
    const-string v0, "MSG_RESET_SCREEN"

    goto :goto_0

    .line 1183
    :sswitch_8
    const-string v0, "MSG_QUIT"

    goto :goto_0

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_4
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x80 -> :sswitch_5
        0x200 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1158
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1160
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/RewindSession$LooperThread;Lcom/scalado/app/rewind/RewindSession$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread;->mHandler:Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;

    .line 1161
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1162
    return-void
.end method
