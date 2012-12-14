.class Lcn/real/device/assparser/JSsaParser$1;
.super Ljava/lang/Object;
.source "JSsaParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/assparser/JSsaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/assparser/JSsaParser;


# direct methods
.method constructor <init>(Lcn/real/device/assparser/JSsaParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/assparser/JSsaParser$1;->this$0:Lcn/real/device/assparser/JSsaParser;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, num:I
    :goto_0
    iget-object v1, p0, Lcn/real/device/assparser/JSsaParser$1;->this$0:Lcn/real/device/assparser/JSsaParser;

    #getter for: Lcn/real/device/assparser/JSsaParser;->mParserThreads:I
    invoke-static {v1}, Lcn/real/device/assparser/JSsaParser;->access$0(Lcn/real/device/assparser/JSsaParser;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v1, Lcn/real/device/assparser/JSsaParser$SomeParserThread;

    iget-object v2, p0, Lcn/real/device/assparser/JSsaParser$1;->this$0:Lcn/real/device/assparser/JSsaParser;

    invoke-direct {v1, v2, v0}, Lcn/real/device/assparser/JSsaParser$SomeParserThread;-><init>(Lcn/real/device/assparser/JSsaParser;I)V

    invoke-virtual {v1}, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->start()V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
