.class public Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentTimeOutHistory"
.end annotation


# instance fields
.field count:I

.field first_index:I

.field last_index:I

.field timeout_list:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1476
    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v0

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    .line 1477
    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    .line 1478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 1479
    return-void
.end method


# virtual methods
.method public addRecord(J)V
    .locals 5
    .parameter "time"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1482
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1484
    iput v4, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    .line 1485
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aput-wide p1, v0, v4

    .line 1486
    iput v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 1504
    :goto_0
    return-void

    .line 1488
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    if-nez v0, :cond_2

    .line 1489
    iput v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1490
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aput-wide p1, v0, v3

    .line 1491
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0

    .line 1493
    :cond_2
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    if-nez v0, :cond_3

    .line 1494
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1495
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aput-wide p1, v0, v1

    .line 1496
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0

    .line 1499
    :cond_3
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    .line 1500
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 1501
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aput-wide p1, v0, v1

    .line 1502
    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v0

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0
.end method

.method public isPeriodical()Z
    .locals 4

    .prologue
    .line 1507
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2600()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$2800()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1508
    const/4 v0, 0x1

    .line 1510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
