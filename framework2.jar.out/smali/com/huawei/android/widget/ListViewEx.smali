.class public Lcom/huawei/android/widget/ListViewEx;
.super Landroid/widget/ListView;
.source "ListViewEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getScroller()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/ListView;->getScrollerInner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setScroller(Lcom/huawei/android/widget/FastScrollerEx;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/ListView;->setScrollerInner(Landroid/widget/FastScroller;)V

    .line 61
    return-void
.end method
