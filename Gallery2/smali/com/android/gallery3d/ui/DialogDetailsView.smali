.class public Lcom/android/gallery3d/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

.field private final mContext:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDetails:Lcom/android/gallery3d/data/MediaDetails;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I

.field private mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

.field private final mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 0
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    .line 62
    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/data/MediaDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    return-object v0
.end method

.method private setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 9
    .parameter "details"

    .prologue
    const/4 v8, 0x0

    .line 87
    new-instance v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v3, p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Lcom/android/gallery3d/data/MediaDetails;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 89
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f10

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04000e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 94
    .local v0, detailsList:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0062

    new-instance v5, Lcom/android/gallery3d/ui/DialogDetailsView$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$1;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    .line 105
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/android/gallery3d/ui/DialogDetailsView$2;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$2;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 72
    return-void
.end method

.method public reloadDetails(I)V
    .locals 3
    .parameter "indexHint"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->findIndex(I)I

    move-result v1

    .line 76
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 78
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 79
    iget v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 80
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 81
    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    .line 82
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    .line 237
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->reloadDetails(I)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    return-void
.end method
