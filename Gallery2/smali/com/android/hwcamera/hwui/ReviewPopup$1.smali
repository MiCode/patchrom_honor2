.class Lcom/android/hwcamera/hwui/ReviewPopup$1;
.super Ljava/lang/Object;
.source "ReviewPopup.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/ReviewPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/ReviewPopup;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/ReviewPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ReviewPopup$1;->this$0:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "data"
    .parameter "text"

    .prologue
    .line 67
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .restart local p1
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
