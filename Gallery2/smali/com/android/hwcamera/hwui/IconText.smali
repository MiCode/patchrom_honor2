.class public Lcom/android/hwcamera/hwui/IconText;
.super Ljava/lang/Object;
.source "IconText.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/hwcamera/hwui/IconText;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mSelectable:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/IconText;->mSelectable:Z

    .line 11
    iput-object p2, p0, Lcom/android/hwcamera/hwui/IconText;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object p1, p0, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/hwcamera/hwui/IconText;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, Lcom/android/hwcamera/hwui/IconText;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/IconText;->compareTo(Lcom/android/hwcamera/hwui/IconText;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconText;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconText;->mText:Ljava/lang/String;

    return-object v0
.end method
