.class Landroid/content/res/ResourcesEx$ThemeResource;
.super Ljava/lang/Object;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeResource"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public resName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "resName"

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    .line 736
    return-void
.end method
