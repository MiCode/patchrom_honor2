.class Lcn/real/device/smiparser/JSmiParser$1;
.super Ljava/lang/Object;
.source "JSmiParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/smiparser/JSmiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/smiparser/JSmiParser;


# direct methods
.method constructor <init>(Lcn/real/device/smiparser/JSmiParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/smiparser/JSmiParser$1;->this$0:Lcn/real/device/smiparser/JSmiParser;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, num:I
    :goto_0
    iget-object v1, p0, Lcn/real/device/smiparser/JSmiParser$1;->this$0:Lcn/real/device/smiparser/JSmiParser;

    #getter for: Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I
    invoke-static {v1}, Lcn/real/device/smiparser/JSmiParser;->access$0(Lcn/real/device/smiparser/JSmiParser;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 354
    return-void

    .line 352
    :cond_0
    new-instance v1, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;

    iget-object v2, p0, Lcn/real/device/smiparser/JSmiParser$1;->this$0:Lcn/real/device/smiparser/JSmiParser;

    invoke-direct {v1, v2, v0}, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;-><init>(Lcn/real/device/smiparser/JSmiParser;I)V

    invoke-virtual {v1}, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->start()V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
