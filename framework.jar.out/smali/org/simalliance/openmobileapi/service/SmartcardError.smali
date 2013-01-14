.class public Lorg/simalliance/openmobileapi/service/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/simalliance/openmobileapi/service/SmartcardError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClazz:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;-><init>()V

    sput-object v0, Lorg/simalliance/openmobileapi/service/SmartcardError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/SmartcardError$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "clazz"
    .parameter "message"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 69
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public createException()Ljava/lang/Exception;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 90
    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 99
    :goto_0
    return-object v2

    .line 93
    :cond_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 97
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 99
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "clazz"
    .parameter "message"

    .prologue
    .line 121
    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 122
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 123
    return-void

    .line 121
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simalliance/openmobileapi/service/CardException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/CardException;

    if-eqz v1, :cond_1

    .line 140
    check-cast v0, Lorg/simalliance/openmobileapi/service/CardException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 142
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 143
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 145
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return-void
.end method
