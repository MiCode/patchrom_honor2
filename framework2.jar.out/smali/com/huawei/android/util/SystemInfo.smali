.class public Lcom/huawei/android/util/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DeviceInfo"

.field private static configEmmcSize:I

.field private static configRamSize:I

.field private static final sEmmcSizePattern:Ljava/util/regex/Pattern;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sKernelPartitions:Ljava/lang/String;

.field private static final sRamSizePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    const-string v0, "/proc/meminfo"

    invoke-static {v0}, Lcom/huawei/android/util/SystemInfo;->getProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/SystemInfo;->sKernelCmdLine:Ljava/lang/String;

    .line 32
    const-string v0, "/proc/partitions"

    invoke-static {v0}, Lcom/huawei/android/util/SystemInfo;->getProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/SystemInfo;->sKernelPartitions:Ljava/lang/String;

    .line 33
    const-string v0, "MemTotal:\\s*(\\d+)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/SystemInfo;->sRamSizePattern:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\s\\d+\\s+\\d+\\s+(\\d+)\\smmcblk0"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/SystemInfo;->sEmmcSizePattern:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "ro.config.hw_ramSize"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/util/SystemInfo;->configRamSize:I

    .line 38
    const-string v0, "ro.config.hw_emmcSize"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/util/SystemInfo;->configEmmcSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceEmmc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    const/4 v2, -0x1

    sget v3, Lcom/huawei/android/util/SystemInfo;->configEmmcSize:I

    if-eq v2, v3, :cond_0

    .line 58
    sget v2, Lcom/huawei/android/util/SystemInfo;->configEmmcSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, emmcSize:Ljava/lang/String;
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    return-object v0

    .line 60
    .end local v0           #emmcSize:Ljava/lang/String;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    const-string v0, ""

    .line 61
    .restart local v0       #emmcSize:Ljava/lang/String;
    sget-object v2, Lcom/huawei/android/util/SystemInfo;->sEmmcSizePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/huawei/android/util/SystemInfo;->sKernelPartitions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 62
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_1
    const-string v2, "DeviceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emmcSize ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "DeviceInfo"

    const-string v3, "Emmc Info not found, display nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDeviceRam()Ljava/lang/String;
    .locals 5

    .prologue
    .line 42
    const/4 v2, -0x1

    sget v3, Lcom/huawei/android/util/SystemInfo;->configRamSize:I

    if-eq v2, v3, :cond_0

    .line 43
    sget v2, Lcom/huawei/android/util/SystemInfo;->configRamSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v0, matcher:Ljava/util/regex/Matcher;
    .local v1, ramSize:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 45
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #ramSize:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 46
    .restart local v1       #ramSize:Ljava/lang/String;
    sget-object v2, Lcom/huawei/android/util/SystemInfo;->sRamSizePattern:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/huawei/android/util/SystemInfo;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    .restart local v0       #matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_1
    const-string v2, "DeviceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ramSize ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_1
    const-string v2, "DeviceInfo"

    const-string v3, "Ram Info not found, display nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getProcInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    .line 73
    const-string v5, ""

    .line 74
    .local v5, procInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v3           #is:Ljava/io/FileInputStream;
    .local v4, is:Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 78
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 79
    .local v1, count:I
    if-lez v1, :cond_0

    .line 80
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v5           #procInfo:Ljava/lang/String;
    .local v6, procInfo:Ljava/lang/String;
    move-object v5, v6

    .line 85
    .end local v6           #procInfo:Ljava/lang/String;
    .restart local v5       #procInfo:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_3

    .line 87
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 92
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v5

    .line 88
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 89
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 82
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :catch_1
    move-exception v2

    .line 83
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "DeviceInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No path exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v3, :cond_1

    .line 87
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v7

    goto :goto_0

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 87
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 89
    :cond_2
    :goto_3
    throw v7

    .line 88
    :catch_3
    move-exception v8

    goto :goto_3

    .line 85
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 82
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v4       #is:Ljava/io/FileInputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_0
.end method
