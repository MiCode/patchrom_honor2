.class public Lcom/android/hwcamera/PictureRemaining;
.super Ljava/lang/Object;
.source "PictureRemaining.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PictureRemaining$Key;
    }
.end annotation


# static fields
.field private static final PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPicSizePref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x18499a

    const v6, 0x17a38e

    const v5, 0x927c0

    const v4, 0x164174

    const v3, 0xf8492

    .line 10
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 12
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "4000x3000"

    const v2, 0x230b05

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3264x2448"

    const v2, 0x1e78e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2592x1944"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2560x1920"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2048x1536"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1600x1200"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x768"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x960"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1024x768"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "800x600"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "720x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "800x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3264x1836"

    const v2, 0x19b555

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2592x1456"

    const v2, 0xff800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2048x1152"

    const v2, 0xbeaaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x61800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x360"

    const v2, 0x34000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const v1, 0x1e78e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_picturesize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PictureRemaining;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 41
    return-void
.end method

.method private calculateAverageSize(Ljava/lang/String;I)V
    .locals 5
    .parameter "key"
    .parameter "storageSize"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, times:I
    iget-object v3, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, averageStorage:I
    iget-object v2, p0, Lcom/android/hwcamera/PictureRemaining;->mEditor:Landroid/content/SharedPreferences$Editor;

    sub-int v3, p2, v0

    add-int/lit8 v4, v1, 0x1

    div-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v2, p0, Lcom/android/hwcamera/PictureRemaining;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v2, p0, Lcom/android/hwcamera/PictureRemaining;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method


# virtual methods
.method public getPictureSize(Lcom/android/hwcamera/PictureRemaining$Key;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    #calls: Lcom/android/hwcamera/PictureRemaining$Key;->getKey()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/hwcamera/PictureRemaining$Key;->access$000(Lcom/android/hwcamera/PictureRemaining$Key;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    #calls: Lcom/android/hwcamera/PictureRemaining$Key;->getMainKey()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/hwcamera/PictureRemaining$Key;->access$100(Lcom/android/hwcamera/PictureRemaining$Key;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSizeOfOnePic(Lcom/android/hwcamera/PictureRemaining$Key;I)V
    .locals 1
    .parameter "key"
    .parameter "storageSize"

    .prologue
    .line 48
    #calls: Lcom/android/hwcamera/PictureRemaining$Key;->getKey()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/hwcamera/PictureRemaining$Key;->access$000(Lcom/android/hwcamera/PictureRemaining$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/hwcamera/PictureRemaining;->calculateAverageSize(Ljava/lang/String;I)V

    .line 49
    return-void
.end method
