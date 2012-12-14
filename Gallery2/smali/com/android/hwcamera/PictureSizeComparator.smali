.class Lcom/android/hwcamera/PictureSizeComparator;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 969
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/PictureSizeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "str0"
    .parameter "str1"

    .prologue
    const/16 v9, 0x78

    const/4 v8, 0x0

    .line 972
    move-object v6, p1

    .line 973
    .local v6, string0:Ljava/lang/String;
    move-object v7, p2

    .line 974
    .local v7, string1:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 975
    .local v0, index0:I
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 977
    .local v1, index1:I
    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 978
    .local v4, pictureWidth0:I
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 980
    .local v2, pictureHeight0:I
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 981
    .local v5, pictureWidth1:I
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 983
    .local v3, pictureHeight1:I
    mul-int v9, v4, v2

    mul-int v10, v5, v3

    if-ne v9, v10, :cond_0

    .line 988
    :goto_0
    return v8

    .line 985
    :cond_0
    mul-int v8, v4, v2

    mul-int v9, v5, v3

    if-ge v8, v9, :cond_1

    .line 986
    const/4 v8, 0x1

    goto :goto_0

    .line 988
    :cond_1
    const/4 v8, -0x1

    goto :goto_0
.end method
