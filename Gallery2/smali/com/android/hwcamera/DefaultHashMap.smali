.class Lcom/android/hwcamera/DefaultHashMap;
.super Ljava/util/HashMap;
.source "DefaultHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValue;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, value:Ljava/lang/Object;,"TValue;"
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .end local v0           #value:Ljava/lang/Object;,"TValue;"
    :cond_0
    return-object v0
.end method

.method public putDefault(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TValue;"
    iput-object p1, p0, Lcom/android/hwcamera/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 15
    return-void
.end method
