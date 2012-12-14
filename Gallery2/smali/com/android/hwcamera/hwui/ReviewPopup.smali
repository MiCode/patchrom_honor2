.class public Lcom/android/hwcamera/hwui/ReviewPopup;
.super Ljava/lang/Object;
.source "ReviewPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/ReviewPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIntent:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mParentView:Landroid/view/View;

.field private mPopupItemNum:I

.field private mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mShareList:Landroid/widget/ListView;

.field private mUri:Landroid/net/Uri;

.field private final mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

.field private mpopupLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "view"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupItemNum:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mComponent:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/hwcamera/hwui/ReviewPopup$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ReviewPopup$1;-><init>(Lcom/android/hwcamera/hwui/ReviewPopup;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 76
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    .line 77
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mUri:Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mMimeType:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public createShareMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 123
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v12, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 126
    .local v10, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v9, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v7, component:Landroid/content/ComponentName;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    invoke-virtual {v9, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "title"

    invoke-virtual {v9, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupItemNum:I

    .line 138
    new-instance v0, Lcom/android/hwcamera/hwui/ReviewPopup$MySimpleAdapter;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    const v4, 0x7f040036

    new-array v5, v13, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const-string v6, "icon"

    aput-object v6, v5, v1

    new-array v6, v13, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/hwui/ReviewPopup$MySimpleAdapter;-><init>(Lcom/android/hwcamera/hwui/ReviewPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 142
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mShareList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mShareList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    return-void

    .line 138
    :array_0
    .array-data 0x4
        0xadt 0x0t 0xct 0x7ft
        0xact 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public getPopupWindow()Lcom/android/hwcamera/hwui/PopupWindowEx;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    return-object v0
.end method

.method public initReviewPopup(Ljava/lang/String;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mIntent:Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, titleText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mIntent:Ljava/lang/String;

    const-string v5, "android.intent.action.SEND"

    if-ne v4, v5, :cond_1

    .line 93
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0231

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 100
    .local v0, lay:Landroid/view/LayoutInflater;
    const v4, 0x7f040035

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mpopupLayout:Landroid/view/ViewGroup;

    .line 101
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mpopupLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0c00a6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 103
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mpopupLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0c00aa

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mShareList:Landroid/widget/ListView;

    .line 105
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mpopupLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0c00a8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, titleView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ReviewPopup;->createShareMenu()V

    .line 110
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/lit8 v3, v4, -0x28

    .line 111
    .local v3, width:I
    new-instance v4, Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mpopupLayout:Landroid/view/ViewGroup;

    const/4 v6, -0x2

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/hwcamera/hwui/PopupWindowEx;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 113
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setFocusable(Z)V

    .line 117
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/hwcamera/hwui/PopupWindowEx;->showAtLocation(Landroid/view/View;III)V

    .line 119
    return-void

    .line 95
    .end local v0           #lay:Landroid/view/LayoutInflater;
    .end local v2           #titleView:Landroid/widget/TextView;
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0233

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 149
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mIntent:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mIntent:Ljava/lang/String;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "noreset"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 88
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v3, :cond_0

    .line 201
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v2, v3, -0x28

    .line 174
    .local v2, width:I
    iget v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupItemNum:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v1, v3, 0x52

    .line 175
    .local v1, popupItemHeights:I
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v3, 0x2

    .line 177
    .local v0, landMaxHeight:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 188
    :sswitch_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 189
    div-int/lit8 v2, v2, 0x2

    .line 190
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v3, v5, v5, v2, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v3, v5, v5, v2, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 193
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 179
    :sswitch_1
    if-le v2, v1, :cond_2

    .line 180
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v3, v5, v5, v6, v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v3, v5, v5, v2, v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    goto :goto_1

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ReviewPopup;->mUri:Landroid/net/Uri;

    .line 84
    return-void
.end method
