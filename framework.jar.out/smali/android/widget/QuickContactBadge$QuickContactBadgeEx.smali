.class Landroid/widget/QuickContactBadge$QuickContactBadgeEx;
.super Ljava/lang/Object;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QuickContactBadgeEx"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isfixedIndexValid(Ljava/lang/Object;Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 328
    new-instance v0, Landroid/telephony/CallerInfoHW;

    invoke-direct {v0}, Landroid/telephony/CallerInfoHW;-><init>()V

    .line 329
    .local v0, callerInfoHW:Landroid/telephony/CallerInfoHW;
    check-cast p0, Ljava/lang/String;

    .end local p0
    const-string/jumbo v2, "number"

    invoke-virtual {v0, p1, p0, v2}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, fixedIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
