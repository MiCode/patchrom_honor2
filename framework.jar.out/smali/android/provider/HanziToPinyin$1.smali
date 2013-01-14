.class Landroid/provider/HanziToPinyin$1;
.super Ljava/util/HashMap;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/provider/HanziToPinyin;


# direct methods
.method constructor <init>(Landroid/provider/HanziToPinyin;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Landroid/provider/HanziToPinyin$1;->this$0:Landroid/provider/HanziToPinyin;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string/jumbo v0, "\u6c88"

    const-string v1, "SHEN"

    invoke-virtual {p0, v0, v1}, Landroid/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v0, "\u66fe"

    const-string v1, "ZENG"

    invoke-virtual {p0, v0, v1}, Landroid/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string/jumbo v0, "\u8d3e"

    const-string v1, "JIA"

    invoke-virtual {p0, v0, v1}, Landroid/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v0, "\u4fde"

    const-string v1, "YU"

    invoke-virtual {p0, v0, v1}, Landroid/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void
.end method
