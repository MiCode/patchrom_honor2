.class Lcom/android/gallery3d/widgetunit/GalleryView$1;
.super Ljava/lang/Object;
.source "GalleryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/widgetunit/GalleryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/widgetunit/GalleryView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/widgetunit/GalleryView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 191
    const-string v0, "widgetunit GalleryView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListener  mBucketId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mBucketId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$000(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mGetBucketId:Z
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$100(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$200(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-virtual {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/widgetunit/PickAlbum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string v1, "meWidgetId"

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I
    invoke-static {v2}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$300(Lcom/android/gallery3d/widgetunit/GalleryView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-virtual {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$400(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$200(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$500(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$600(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "widgetunit GalleryView"

    const-string v2, "onClick fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$1;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$700(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
