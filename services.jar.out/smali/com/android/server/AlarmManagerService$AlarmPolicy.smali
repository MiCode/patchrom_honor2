.class Lcom/android/server/AlarmManagerService$AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;,
        Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;,
        Lcom/android/server/AlarmManagerService$AlarmPolicy$AdjustSteps;
    }
.end annotation


# static fields
.field private static final CHCEK_INTETN_CNT:I = 0x64

.field private static final HEARTBEAT_CYCLE_DEFAULT:I = 0x493e0

.field private static final HEARTBEAT_CYCLE_MAX:I = 0x75300

.field private static final HEARTBEAT_CYCLE_MIN:I = 0x3a980

.field private static final MIN_TIMEOUT_PERIOD:I = 0x7530

.field private static final NONEED_ADJUST_LEN:I = 0x1388

.field private static final REPEAT_ALARM_CYCLE_MIN:I = 0xdbba0

.field private static final VALID_INTENT_DURATION:J = 0xf731400L

.field private static final VERSION_NUMBER:I = 0x65

.field private static mAlarmCount:J = 0x0L

.field private static sAlignmentPeriod:I = 0x0

.field private static sCountThreshold:I = 0x0

.field private static sIntervalThreshold:I = 0x0

.field public static sNeedAdjustPolicy:Z = false

.field private static final sOneMinute:I = 0xea60

.field private static final sOneSecond:I = 0x3e8


# instance fields
.field private mIntentHisRW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeHisFile:Lcom/android/internal/os/AtomicFile;

.field private mOwner:Lcom/android/server/AlarmManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1454
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 1455
    const v0, 0xa4cb80

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sIntervalThreshold:I

    .line 1456
    const/16 v0, 0xc

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sCountThreshold:I

    .line 1457
    const v0, 0x493e0

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 1458
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 6
    .parameter "owner"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    .line 1573
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1574
    .local v0, systemdir:Ljava/io/File;
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "IntentHis.bin"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    .line 1575
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    .line 1577
    const-string v1, "persist.alarm.enable.uhb"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1578
    const-string v1, "AlarmManager"

    const-string v2, "uhb disabled in prop"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    sput-boolean v5, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 1581
    :cond_0
    const-string v1, "persist.alarm.uhb.debug"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 1582
    const-string v1, "AlarmManager"

    const-string v2, "uhb debug is enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2702(Z)Z

    .line 1586
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->readHistory()V

    .line 1588
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService$AlarmPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 1440
    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService$AlarmPolicy;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 1440
    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sCountThreshold:I

    return v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 1440
    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sIntervalThreshold:I

    return v0
.end method

.method private readHistory()V
    .locals 11

    .prologue
    .line 1593
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v10}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1596
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v2

    .line 1597
    .local v2, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1598
    .local v1, ReadParcel:Landroid/os/Parcel;
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1599
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1601
    .local v7, ver:I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1602
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1604
    .local v6, pack:Ljava/lang/String;
    new-instance v4, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    invoke-direct {v4, v1}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;-><init>(Landroid/os/Parcel;)V

    .line 1605
    .local v4, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1607
    .end local v0           #N:I
    .end local v1           #ReadParcel:Landroid/os/Parcel;
    .end local v2           #data:[B
    .end local v4           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v5           #i:I
    .end local v6           #pack:Ljava/lang/String;
    .end local v7           #ver:I
    :catch_0
    move-exception v3

    .line 1608
    .local v3, e:Ljava/io/IOException;
    const-string v8, "AlarmManager"

    const-string v9, "Error reading History"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method private writeHistory()V
    .locals 11

    .prologue
    .line 1614
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v10}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_0
    const/4 v2, 0x0

    .line 1617
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1619
    .local v6, out:Landroid/os/Parcel;
    const/16 v8, 0x65

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1621
    .local v0, N:I
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeHistory There are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkg in His"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_1
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1625
    .local v5, ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1626
    .local v7, pkgname:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 1627
    .local v3, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 1628
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    .end local v0           #N:I
    .end local v3           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v6           #out:Landroid/os/Parcel;
    .end local v7           #pkgname:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1638
    .local v1, e1:Ljava/io/IOException;
    const-string v8, "AlarmManager"

    const-string v9, "Error writing History"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    if-eqz v2, :cond_3

    .line 1640
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1643
    .end local v1           #e1:Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    .line 1634
    .restart local v0       #N:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #out:Landroid/os/Parcel;
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1635
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1636
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method adjustCurrentAlarmListbyNewCycle()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x1

    .line 1819
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v5, 0x0

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1820
    .local v2, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1821
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1822
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1823
    .local v1, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    if-ne v4, v8, :cond_0

    .line 1824
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v9

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1821
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1826
    .end local v1           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const-string v4, "update type 0 alarm list:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3100(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1828
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v5, 0x2

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1829
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1830
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1831
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1832
    .restart local v1       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    if-ne v4, v8, :cond_2

    .line 1833
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v9

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    sget v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1830
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1835
    .end local v1           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    const-string v4, "update type 2 alarm list:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$3100(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1837
    return-void
.end method

.method delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJZ)V
    .locals 8
    .parameter "alarm"
    .parameter "nowRTC"
    .parameter "nowELAPSED"
    .parameter "needRestore"

    .prologue
    const-wide/16 v6, 0x1

    .line 1743
    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_1

    .line 1744
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1745
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    add-int/lit16 v4, v4, -0x1388

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    if-eqz p6, :cond_0

    .line 1746
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1747
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "restore alarm for it\'s closed to the previous HB"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    sub-long v0, p2, p4

    .line 1752
    .local v0, bootRTC:J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v2, v0

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1753
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    add-int/lit16 v4, v4, -0x1388

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    if-eqz p6, :cond_0

    .line 1754
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1755
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "restore alarm for it\'s closed to the previous HB"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method recordOneTimeOut_DeterminPeriodical(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)V
    .locals 16
    .parameter "alarm"
    .parameter "bs"

    .prologue
    .line 1646
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    .local v1, arr$:[Landroid/content/Intent;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v6           #i$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v8, v1, v7

    .line 1647
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "recordOneTimeOut, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v8}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1649
    .local v3, fc:Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1651
    .local v4, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v4, :cond_2

    .line 1652
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "AlarmManager"

    const-string v13, "fs is null"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_1
    new-instance v4, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v4           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    invoke-direct {v4}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>()V

    .line 1654
    .restart local v4       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    :cond_2
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    invoke-virtual {v12, v13, v14}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->addRecord(J)V

    .line 1659
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    invoke-virtual {v12}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->isPeriodical()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1661
    iget-boolean v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->isPeriodic:Z

    if-nez v12, :cond_7

    .line 1662
    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mark a new intent periodical."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v12, 0x1

    iput v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    .line 1664
    const/4 v12, 0x1

    iput-boolean v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->isPeriodic:Z

    .line 1665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    .line 1666
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 1667
    .local v10, pkg:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1668
    .local v11, pkgExist:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7           #i$:I
    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1669
    .local v2, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1670
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 1671
    .local v5, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v12, v5, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    const/4 v11, 0x1

    .line 1676
    .end local v2           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v5           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    :cond_4
    if-nez v11, :cond_5

    .line 1677
    new-instance v5, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    invoke-direct {v5, v3, v4}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;-><init>(Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;)V

    .line 1678
    .restart local v5       #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    .end local v5           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    :cond_5
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-object v13, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    sget v14, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sCountThreshold:I

    iput v14, v13, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    iput v14, v12, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1682
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 1692
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #pkgExist:Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    .line 1646
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .local v6, i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto/16 :goto_0

    .line 1685
    :cond_7
    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update intent active time."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    .line 1689
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-object v13, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    sget v14, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sCountThreshold:I

    iput v14, v13, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    iput v14, v12, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1690
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_1

    .line 1696
    .end local v3           #fc:Landroid/content/Intent$FilterComparison;
    .end local v4           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    sget-wide v12, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    sput-wide v12, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    const-wide/16 v14, 0x64

    rem-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    .line 1697
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->removeInactivePeriodicalIntents()V

    .line 1698
    :cond_9
    return-void
.end method

.method removeInactivePeriodicalIntents()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1764
    .local v2, curRTC:J
    const/4 v0, 0x0

    .line 1765
    .local v0, bRemoved:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "AlarmManager"

    const-string v10, "removeInactivePeriodicalIntents"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1767
    .local v1, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 1768
    .local v6, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1769
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1770
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1771
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1772
    .local v5, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-wide v9, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    sub-long v9, v2, v9

    const-wide/32 v11, 0xf731400

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 1773
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v10, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove inactive "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v9}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_3
    iput-boolean v13, v5, Lcom/android/server/AlarmManagerService$FilterStats;->isPeriodic:Z

    .line 1775
    iput v13, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    .line 1776
    iget-object v9, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-object v10, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    sget v11, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sCountThreshold:I

    iput v11, v10, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    iput v11, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1777
    iget-object v9, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iput v13, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 1778
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 1779
    const/4 v0, 0x1

    goto :goto_0

    .line 1784
    .end local v1           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v6           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/Intent$FilterComparison;Lcom/android/server/AlarmManagerService$FilterStats;>;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    .line 1785
    :cond_5
    return-void
.end method

.method updateAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 19
    .parameter "alarm"

    .prologue
    .line 1701
    const-wide/16 v11, 0x0

    .line 1702
    .local v11, delta:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1703
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1705
    .local v6, nowELAPSED:J
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1708
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v17, 0xdbba0

    cmp-long v2, v2, v17

    if-ltz v2, :cond_2

    .line 1709
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update repeated alarm info. "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntents()[Landroid/content/Intent;

    move-result-object v8

    const/16 v17, 0x0

    aget-object v8, v8, v17

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    .line 1711
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJZ)V

    .line 1739
    :cond_1
    :goto_0
    return-void

    .line 1715
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_4

    .line 1716
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v11, v2, v4

    .line 1722
    :cond_3
    :goto_1
    const-wide/16 v2, 0x7530

    cmp-long v2, v11, v2

    if-gtz v2, :cond_5

    .line 1723
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "too short to ignore "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntents()[Landroid/content/Intent;

    move-result-object v8

    const/16 v17, 0x0

    aget-object v8, v8, v17

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1718
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1719
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v11, v2, v6

    goto :goto_1

    .line 1727
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v10

    .line 1728
    .local v10, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntents()[Landroid/content/Intent;

    move-result-object v9

    .local v9, arr$:[Landroid/content/Intent;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    aget-object v15, v9, v14

    .line 1729
    .local v15, intent:Landroid/content/Intent;
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v15}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1731
    .local v13, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-eqz v13, :cond_6

    const/4 v2, 0x1

    iget-boolean v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->isPeriodic:Z

    if-ne v2, v3, :cond_6

    .line 1734
    iget v2, v13, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    .line 1735
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJZ)V

    .line 1736
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlarmInfo "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ". "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    #calls: Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->access$2900(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method updateHeartBeatCycleFromHuaweiPush(Lcom/android/server/AlarmManagerService$Alarm;Landroid/content/Intent;)V
    .locals 7
    .parameter "alarm"
    .parameter "intent"

    .prologue
    const v6, 0x75300

    .line 1788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    const-string v2, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1791
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    const-string v3, "Detected Push Intent Alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_2
    sget v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 1796
    .local v1, origCycle:I
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v4, 0x75300

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 1797
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 1798
    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    if-lt v2, v6, :cond_3

    sput v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 1807
    :cond_3
    :goto_1
    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    if-eq v1, v2, :cond_0

    .line 1808
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateHBCycle from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustCurrentAlarmListbyNewCycle()V

    goto :goto_0

    .line 1800
    :cond_5
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v4, 0x3a980

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 1801
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    long-to-int v2, v2

    sput v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    goto :goto_1

    .line 1804
    :cond_6
    const v2, 0x493e0

    sput v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    goto :goto_1
.end method
