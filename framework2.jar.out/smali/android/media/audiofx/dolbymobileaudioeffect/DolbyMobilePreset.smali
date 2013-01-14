.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
.super Ljava/lang/Object;
.source "DolbyMobilePreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    }
.end annotation


# instance fields
.field private _allSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private _category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field private _custom:Z

.field private _description:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V
    .locals 5
    .parameter "displayName"
    .parameter "description"
    .parameter
    .parameter "custom"
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;Z",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, allSettings:Ljava/util/Map;,"Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_custom:Z

    iput-object p5, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .local v0, endpoint:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #endpoint:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    :cond_0
    return-void
.end method

.method public static getGraphicEQBandNLevelRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    return-object v0
.end method

.method public static getHighFrequencyEnhancerDepthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    return-object v0
.end method

.method public static getMobileSurroundBrightnessRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_BRIGHTNESS_RANGE:[I

    return-object v0
.end method

.method public static getMobileSurroundRoomSizeRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_MSR_ROOMSIZE_RANGE:[I

    return-object v0
.end method

.method public static getNaturalBassBoostRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    return-object v0
.end method

.method public static getSoundLevelControllerDepthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    return-object v0
.end method

.method public static getSoundLevelControllerLevelRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    return-object v0
.end method

.method public static getSoundSpaceEnhancerWidthRange(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)[I
    .locals 1
    .parameter "endpoint"

    .prologue
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SSE_WIDTH_RANGE:[I

    return-object v0
.end method


# virtual methods
.method public copySettingsFrom(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;)V
    .locals 6
    .parameter "preset"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->getAllSettings()Ljava/util/Map;

    move-result-object v1

    .local v1, allSettings:Ljava/util/Map;,"Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    .local v0, ad:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    new-instance v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-direct {v5, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #ad:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    .end local v1           #allSettings:Ljava/util/Map;,"Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method getAllSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCategory()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphicEQBandNLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)I
    .locals 4
    .parameter "endpoint"
    .parameter "band"

    .prologue
    const/4 v3, 0x7

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    if-le p2, v1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Band. Check TDAS_GEQ_NBANDS"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGraphicEQEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getHighFrequencyEnhancerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getHighFrequencyEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getMobileSurroundBrightness(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getMobileSurroundEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getMobileSurroundRoomSize(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getMono2StereoEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getNaturalBassBoost(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getNaturalBassEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getSoundLevelControllerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getSoundLevelControllerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getSoundLevelControllerLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public getSoundSpaceEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)Z
    .locals 5
    .parameter "endpoint"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getSoundSpaceEnhancerWidth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;)I
    .locals 3
    .parameter "endpoint"

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    return v1
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_custom:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_description:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter "displayName"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setGraphicEQBandNLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;II)V
    .locals 5
    .parameter "endpoint"
    .parameter "band"
    .parameter "level"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p3, v1, :cond_3

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_GEQ_LEVEL_RANGE:[I

    aget v1, v1, v3

    if-gt p3, v1, :cond_3

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    invoke-virtual {v0, v4, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->get(II)I

    move-result v1

    if-le p2, v1, :cond_0

    if-lez p2, :cond_2

    :cond_0
    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1, p3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Band. Check TDAS_GEQ_BANDN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_GEQ_BAND"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setGraphicEQEnableEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x7

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setHighFrequencyEnhancerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 4
    .parameter "endpoint"
    .parameter "depth"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_1

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_HFE_DEPTH_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_HFE_DEPTH_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setHighFrequencyEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0xa

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setMobileSurroundBrightness(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 3
    .parameter "endpoint"
    .parameter "bright"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_MSR_BRIGHT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMobileSurroundEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/16 v3, 0x9

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setMobileSurroundRoomSize(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 3
    .parameter "endpoint"
    .parameter "roomsize"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_MSR_ROOM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMono2StereoEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 5
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public setNaturalBassBoost(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 3
    .parameter "endpoint"
    .parameter "boost"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_1

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_NB_BOOST_RANGE:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_NB_BOOST_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNaturalBassEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x6

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setSoundLevelControllerDepth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 4
    .parameter "endpoint"
    .parameter "depth"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_1

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_DEPTH_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SLC_DEPTH_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSoundLevelControllerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x4

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setSoundLevelControllerLevel(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 4
    .parameter "endpoint"
    .parameter "level"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p2, v1, :cond_1

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->TDAS_SLC_LEVEL_RANGE:[I

    aget v1, v1, v3

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SLC_LEVEL_RANGE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSoundSpaceEnhancerEnable(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Z)V
    .locals 4
    .parameter "endpoint"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    const/4 v3, 0x2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    .restart local v0       #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setSoundSpaceEnhancerWidth(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;I)V
    .locals 3
    .parameter "endpoint"
    .parameter "width"

    .prologue
    invoke-virtual {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_allSettings:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v0, settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter outside of range bounds. Check TDAS_SSE_WIDTH"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->set(III)V

    .end local v0           #settings:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;->_displayName:Ljava/lang/String;

    return-object v0
.end method
