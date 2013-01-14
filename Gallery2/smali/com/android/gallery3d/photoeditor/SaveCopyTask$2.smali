.class Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;
.super Ljava/lang/Object;
.source "SaveCopyTask.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/SaveCopyTask;->changeToLocalizedName(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/SaveCopyTask;

.field final synthetic val$bucketId:[I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/SaveCopyTask;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;->this$0:Lcom/android/gallery3d/photoeditor/SaveCopyTask;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;->val$bucketId:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;->val$bucketId:[I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v2

    .line 162
    return-void
.end method
