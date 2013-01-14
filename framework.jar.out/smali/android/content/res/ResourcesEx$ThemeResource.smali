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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    return-void
.end method
