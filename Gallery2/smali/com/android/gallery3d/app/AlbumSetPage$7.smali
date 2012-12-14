.class Lcom/android/gallery3d/app/AlbumSetPage$7;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$choice:[Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$7;->val$choice:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7;->val$choice:[Z

    aput-boolean p3, v0, p2

    .line 691
    return-void
.end method
