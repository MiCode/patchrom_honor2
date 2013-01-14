.class Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuCallback;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuCallback;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuPopupHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuCallback;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;

    .line 399
    .local v6, adapter:Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;
    invoke-virtual {v6, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItemViewType(I)I

    move-result v7

    .line 400
    .local v7, itemViewType:I
    packed-switch v7, :pswitch_data_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 402
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->setShowFooterView(Z)V

    .line 410
    :goto_0
    return-void

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuCallback;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
