.class Lcn/real/device/srtparser/JSrtParser$1;
.super Ljava/lang/Object;
.source "JSrtParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/srtparser/JSrtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/srtparser/JSrtParser;


# direct methods
.method constructor <init>(Lcn/real/device/srtparser/JSrtParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/srtparser/JSrtParser$1;->this$0:Lcn/real/device/srtparser/JSrtParser;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, num:I
    :goto_0
    iget-object v1, p0, Lcn/real/device/srtparser/JSrtParser$1;->this$0:Lcn/real/device/srtparser/JSrtParser;

    #getter for: Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I
    invoke-static {v1}, Lcn/real/device/srtparser/JSrtParser;->access$0(Lcn/real/device/srtparser/JSrtParser;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 309
    return-void

    .line 307
    :cond_0
    new-instance v1, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;

    iget-object v2, p0, Lcn/real/device/srtparser/JSrtParser$1;->this$0:Lcn/real/device/srtparser/JSrtParser;

    invoke-direct {v1, v2, v0}, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;-><init>(Lcn/real/device/srtparser/JSrtParser;I)V

    invoke-virtual {v1}, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->start()V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
