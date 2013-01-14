.class final Lorg/simalliance/openmobileapi/service/SmartcardError$1;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/SmartcardError;
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
        "Lorg/simalliance/openmobileapi/service/SmartcardError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;->createFromParcel(Landroid/os/Parcel;)Lorg/simalliance/openmobileapi/service/SmartcardError;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/simalliance/openmobileapi/service/SmartcardError;
    .locals 2
    .parameter "in"

    .prologue
    .line 39
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/SmartcardError$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;->newArray(I)[Lorg/simalliance/openmobileapi/service/SmartcardError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/simalliance/openmobileapi/service/SmartcardError;
    .locals 1
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Lorg/simalliance/openmobileapi/service/SmartcardError;

    return-object v0
.end method
