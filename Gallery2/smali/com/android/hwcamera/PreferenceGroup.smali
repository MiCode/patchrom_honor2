.class public Lcom/android/hwcamera/PreferenceGroup;
.super Lcom/android/hwcamera/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/hwcamera/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public deleteAllPreferences()V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PreferenceGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/CameraPreference;

    .line 76
    .local v2, pref:Lcom/android/hwcamera/CameraPreference;
    instance-of v3, v2, Lcom/android/hwcamera/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 77
    check-cast v1, Lcom/android/hwcamera/ListPreference;

    .line 78
    .local v1, listPref:Lcom/android/hwcamera/ListPreference;
    invoke-virtual {v1}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    .end local v1           #listPref:Lcom/android/hwcamera/ListPreference;
    .end local v2           #pref:Lcom/android/hwcamera/CameraPreference;
    :goto_0
    return-object v1

    .line 79
    .restart local v2       #pref:Lcom/android/hwcamera/CameraPreference;
    :cond_1
    instance-of v3, v2, Lcom/android/hwcamera/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 80
    check-cast v2, Lcom/android/hwcamera/PreferenceGroup;

    .end local v2           #pref:Lcom/android/hwcamera/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    .line 82
    .restart local v1       #listPref:Lcom/android/hwcamera/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    .end local v1           #listPref:Lcom/android/hwcamera/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/hwcamera/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraPreference;

    return-object v0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraPreference;

    .line 63
    .local v1, pref:Lcom/android/hwcamera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 65
    .end local v1           #pref:Lcom/android/hwcamera/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
