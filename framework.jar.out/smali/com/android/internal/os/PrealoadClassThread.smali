.class Lcom/android/internal/os/PrealoadClassThread;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# static fields
.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f


# instance fields
.field private mStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 792
    iput-object p1, p0, Lcom/android/internal/os/PrealoadClassThread;->mStr:Ljava/lang/String;

    .line 793
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v9, 0x270f

    const/4 v10, 0x0

    .line 797
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    .line 798
    .local v5, runtime:Ldalvik/system/VMRuntime;
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    .line 799
    .local v1, defaultUtilization:F
    const v7, 0x3f4ccccd

    invoke-virtual {v5, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 801
    const-class v7, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/PrealoadClassThread;->mStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 803
    .local v3, is:Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 804
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/PrealoadClassThread;->mStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 808
    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 811
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 813
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 816
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x100

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 820
    .local v0, br:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 822
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 823
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_1

    .line 828
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 829
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v7

    const v8, 0x7a120

    if-le v7, v8, :cond_1

    .line 830
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 831
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 832
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found for preloading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 848
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 849
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/PrealoadClassThread;->mStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 852
    invoke-virtual {v5, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 853
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 856
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 857
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_0

    .line 836
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 837
    .local v6, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error preloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    instance-of v7, v6, Ljava/lang/Error;

    if-eqz v7, :cond_2

    .line 839
    check-cast v6, Ljava/lang/Error;

    .end local v6           #t:Ljava/lang/Throwable;
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 851
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 852
    invoke-virtual {v5, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 853
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 856
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 857
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    throw v7

    .line 841
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_5
    instance-of v7, v6, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_3

    .line 842
    check-cast v6, Ljava/lang/RuntimeException;

    .end local v6           #t:Ljava/lang/Throwable;
    throw v6

    .line 844
    .restart local v6       #t:Ljava/lang/Throwable;
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 851
    .end local v6           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 852
    invoke-virtual {v5, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 853
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 856
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 857
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_0
.end method
