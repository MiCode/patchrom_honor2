.class Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "actionId"
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 296
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 297
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    goto :goto_0
.end method
