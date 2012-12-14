.class Lcom/android/gallery3d/app/AlbumSetPage$6;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$render:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/app/Activity;[ZLcom/android/gallery3d/ui/AlbumSetSlotRenderer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$choice:[Z

    iput-object p4, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$render:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$context:Landroid/app/Activity;

    const-string v2, "gallery_settings"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 699
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_hidden_albums"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$choice:[Z

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/app/Gallery;->SETTIGNS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 702
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->reload(Z)V

    .line 703
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->val$render:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 704
    return-void
.end method
