.class public final Landroid/content/res/ConfigurationEx;
.super Ljava/lang/Object;
.source "ConfigurationEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ConfigurationEx;",
        ">;"
    }
.end annotation


# instance fields
.field public hwtheme:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ConfigurationEx;)V
    .locals 0
    .parameter "o"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->setTo(Landroid/content/res/ConfigurationEx;)V

    return-void
.end method

.method public static needNewResources(I)Z
    .locals 1
    .parameter "configChanges"

    .prologue
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ConfigurationEx;)I
    .locals 3
    .parameter "that"

    .prologue
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    sub-int v0, v1, v2

    .local v0, n:I
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/content/res/ConfigurationEx;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/ConfigurationEx;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/ConfigurationEx;)I
    .locals 3
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:I
    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x4000

    :cond_0
    return v0
.end method

.method public equals(Landroid/content/res/ConfigurationEx;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/ConfigurationEx;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    :try_start_0
    check-cast p1, Landroid/content/res/ConfigurationEx;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->equals(Landroid/content/res/ConfigurationEx;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    return-void
.end method

.method public setTo(Landroid/content/res/ConfigurationEx;)V
    .locals 1
    .parameter "o"

    .prologue
    iget v0, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    const-string v1, " hwt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/ConfigurationEx;)I
    .locals 3
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:I
    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x4000

    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
