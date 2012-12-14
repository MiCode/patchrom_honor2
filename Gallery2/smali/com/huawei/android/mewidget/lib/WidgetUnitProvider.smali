.class public Lcom/huawei/android/mewidget/lib/WidgetUnitProvider;
.super Landroid/content/BroadcastReceiver;
.source "WidgetUnitProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "meWidgetIds"

    .prologue
    .line 47
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v4, "WidgetUnitProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initMeWidget intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.action.MEWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 26
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 27
    const-string v4, "meWidgetIds"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 28
    .local v3, meWidgetIds:[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 29
    invoke-virtual {p0, p1, v3}, Lcom/huawei/android/mewidget/lib/WidgetUnitProvider;->onUpdate(Landroid/content/Context;[I)V

    .line 40
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #meWidgetIds:[I
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v4, "com.android.action.MEWIDGET_DELETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .restart local v1       #extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "meWidgetIds"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "meWidgetIds"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 37
    .local v2, meWidgetId:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/huawei/android/mewidget/lib/WidgetUnitProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "meWidgetIds"

    .prologue
    .line 44
    return-void
.end method
