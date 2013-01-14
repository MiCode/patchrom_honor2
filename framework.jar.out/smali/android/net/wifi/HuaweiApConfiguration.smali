.class public Landroid/net/wifi/HuaweiApConfiguration;
.super Ljava/lang/Object;
.source "HuaweiApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/HuaweiApConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:I

.field public maxScb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/HuaweiApConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/HuaweiApConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/HuaweiApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->maxScb:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/HuaweiApConfiguration;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget v0, p1, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    iput v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    .line 56
    iget v0, p1, Landroid/net/wifi/HuaweiApConfiguration;->maxScb:I

    iput v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->maxScb:I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->channel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/net/wifi/HuaweiApConfiguration;->maxScb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
