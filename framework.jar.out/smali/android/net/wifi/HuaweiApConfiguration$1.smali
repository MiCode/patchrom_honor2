.class final Landroid/net/wifi/HuaweiApConfiguration$1;
.super Ljava/lang/Object;
.source "HuaweiApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/HuaweiApConfiguration;
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
        "Landroid/net/wifi/HuaweiApConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HuaweiApConfiguration;
    .locals 2
    .parameter "in"

    .prologue
    .line 70
    new-instance v0, Landroid/net/wifi/HuaweiApConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/HuaweiApConfiguration;-><init>()V

    .line 71
    .local v0, config:Landroid/net/wifi/HuaweiApConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    .line 73
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/wifi/HuaweiApConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HuaweiApConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/HuaweiApConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 77
    new-array v0, p1, [Landroid/net/wifi/HuaweiApConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/wifi/HuaweiApConfiguration$1;->newArray(I)[Landroid/net/wifi/HuaweiApConfiguration;

    move-result-object v0

    return-object v0
.end method
