.class public Lcom/huawei/android/widget/ListViewEx;
.super Landroid/widget/ListView;
.source "ListViewEx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getScroller()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ListView;->getScrollerInner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setScroller(Lcom/huawei/android/widget/FastScrollerEx;)V
    .locals 0
    .parameter "scroller"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->setScrollerInner(Landroid/widget/FastScroller;)V

    return-void
.end method
