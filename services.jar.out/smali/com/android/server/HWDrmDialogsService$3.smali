.class Lcom/android/server/HWDrmDialogsService$3;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>(Lcom/android/server/HWDrmDialogsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v3, 0x2020069

    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/HWDrmDialogsService;->startBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/HWDrmDialogsService;->access$200(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$300(Lcom/android/server/HWDrmDialogsService;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/HWDrmDialogsService;->access$400(Lcom/android/server/HWDrmDialogsService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/server/HWDrmDialogsService;->access$302(Lcom/android/server/HWDrmDialogsService;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_1
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$300(Lcom/android/server/HWDrmDialogsService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$300(Lcom/android/server/HWDrmDialogsService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method
