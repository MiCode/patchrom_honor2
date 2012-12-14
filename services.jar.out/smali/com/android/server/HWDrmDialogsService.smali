.class public Lcom/android/server/HWDrmDialogsService;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"


# static fields
.field private static final MSG_SHOW_CD_NORIGHTS_DLG:I = 0x0

.field private static final MSG_SHOW_NO_SECURITY_DLG:I = 0x2

.field private static final MSG_SHOW_SD_RENEWAL_DLG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HWDrmDialogsService"


# instance fields
.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mRightsIssuer:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/HWDrmDialogsService;->CreateDrmErrorListener()V

    return-void
.end method

.method private CreateDrmErrorListener()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-array v2, v6, [B

    aput-byte v5, v2, v5

    .local v2, mData:[B
    new-instance v0, Landroid/drm/DrmInfo;

    const-string v3, "application/vnd.oma.drm.content"

    invoke-direct {v0, v6, v2, v3}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .local v0, drmInfo:Landroid/drm/DrmInfo;
    const-string v3, "DialogServiceRegister"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    new-instance v1, Lcom/android/server/HWDrmDialogsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HWDrmDialogsService$1;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    .local v1, errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v1}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    const-string v3, "HWDrmDialogsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HWDrmDialogsService  errorListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HWDrmDialogsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HWDrmDialogsService;->showDlg(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/HWDrmDialogsService;->startBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/HWDrmDialogsService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/HWDrmDialogsService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/HWDrmDialogsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDlg(I)V
    .locals 7
    .parameter "dialog"

    .prologue
    const v6, 0x2020068

    const v5, 0x2020067

    const v3, 0x2020065

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v6}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    :pswitch_1
    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    const v4, 0x2060030

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x2020066

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/server/HWDrmDialogsService$3;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$3;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/server/HWDrmDialogsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/HWDrmDialogsService$2;-><init>(Lcom/android/server/HWDrmDialogsService;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/AlertDialog;

    :cond_1
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, window:Landroid/view/Window;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v1           #window:Landroid/view/Window;
    :cond_3
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    :goto_3
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startBrowser(Ljava/lang/String;)V
    .locals 3
    .parameter "rightIssuer"

    .prologue
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, rightsUrl:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
