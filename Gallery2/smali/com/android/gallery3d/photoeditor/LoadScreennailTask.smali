.class public Lcom/android/gallery3d/photoeditor/LoadScreennailTask;
.super Landroid/os/AsyncTask;
.source "LoadScreennailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 57
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    aget-object v1, p1, v2

    const/16 v2, 0x500

    const/16 v3, 0x3c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 69
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/photoeditor/PhotoEditor;

    .line 71
    .local v0, peObject:Lcom/android/gallery3d/photoeditor/PhotoEditor;
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 74
    .end local v0           #peObject:Lcom/android/gallery3d/photoeditor/PhotoEditor;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
