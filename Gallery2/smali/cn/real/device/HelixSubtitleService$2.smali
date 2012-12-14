.class Lcn/real/device/HelixSubtitleService$2;
.super Landroid/os/Handler;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubtitleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/HelixSubtitleService;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubtitleService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    .line 1108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 1110
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1111
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1113
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1114
    .local v0, index:J
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$9()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubTitleType:I
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$0(Lcn/real/device/HelixSubtitleService;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1116
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    invoke-virtual {v2, v5}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    .line 1118
    :cond_1
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    invoke-virtual {v2, v6}, Lcn/real/device/SubTitleView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1119
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1123
    .end local v0           #index:J
    :pswitch_1
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubTitleType:I
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$0(Lcn/real/device/HelixSubtitleService;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1124
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    invoke-virtual {v2, v5}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    .line 1126
    :cond_2
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    invoke-virtual {v2, v6}, Lcn/real/device/SubTitleView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1127
    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$2;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v2}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
