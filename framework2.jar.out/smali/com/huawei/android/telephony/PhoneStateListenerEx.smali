.class public Lcom/huawei/android/telephony/PhoneStateListenerEx;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateListenerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "mSubscription"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method

.method public static getSubscription(Landroid/telephony/PhoneStateListener;)I
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .local v2, value:I
    :try_start_0
    const-string v3, "android.telephony.PhoneStateListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, mPhoneStateListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "mSubscription"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, filed:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0           #filed:Ljava/lang/reflect/Field;
    .end local v1           #mPhoneStateListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setSubscription(Landroid/telephony/PhoneStateListener;I)V
    .locals 3
    .parameter "obj"
    .parameter "subscription"

    .prologue
    :try_start_0
    const-string v2, "android.telephony.PhoneStateListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, mPhoneStateListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "mSubscription"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, filed:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #filed:Ljava/lang/reflect/Field;
    .end local v1           #mPhoneStateListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
