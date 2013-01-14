.class final Landroid/app/PendingIntent$1;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 721
    .local v3, target:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 722
    .local v0, count:I
    if-lez v0, :cond_2

    .line 723
    new-array v2, v0, [Landroid/content/Intent;

    .line 724
    .local v2, intents:[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 725
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v2, v1

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    if-eqz v3, :cond_1

    new-instance v4, Landroid/app/PendingIntent;

    invoke-direct {v4, v3}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v4, v2}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 729
    .end local v1           #i:I
    .end local v2           #intents:[Landroid/content/Intent;
    :goto_1
    return-object v4

    .restart local v1       #i:I
    .restart local v2       #intents:[Landroid/content/Intent;
    :cond_1
    move-object v4, v5

    .line 727
    goto :goto_1

    .line 729
    .end local v1           #i:I
    .end local v2           #intents:[Landroid/content/Intent;
    :cond_2
    if-eqz v3, :cond_3

    new-instance v5, Landroid/app/PendingIntent;

    invoke-direct {v5, v3}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :cond_3
    move-object v4, v5

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/PendingIntent;
    .locals 1
    .parameter "size"

    .prologue
    .line 734
    new-array v0, p1, [Landroid/app/PendingIntent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->newArray(I)[Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
