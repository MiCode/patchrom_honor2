.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mMenuVisible:Z

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 83
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 84
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private computeMenuOptions(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v9, 0x0

    .line 221
    iget-object v10, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 222
    .local v8, unexpandedPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    move v3, v9

    .line 250
    :goto_0
    return v3

    .line 227
    :cond_0
    const/4 v3, -0x1

    .line 228
    .local v3, operation:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 229
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v7, 0x0

    .line 230
    .local v7, type:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 231
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_1

    move v3, v9

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v6

    .line 233
    .local v6, support:I
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v10

    or-int/2addr v7, v10

    .line 234
    and-int/2addr v3, v6

    .line 235
    goto :goto_1

    .line 237
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    .end local v6           #support:I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 245
    and-int/lit16 v3, v3, 0x907

    .line 248
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedOpration()I

    move-result v5

    .line 249
    .local v5, select_support:I
    or-int/2addr v3, v5

    .line 250
    goto :goto_0

    .line 239
    .end local v5           #select_support:I
    :pswitch_0
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, mimeType:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 241
    and-int/lit16 v3, v3, -0x201

    goto :goto_2

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    .line 256
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    .local v0, expandedPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 258
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_0

    .line 259
    iget-object v12, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v12, v13, v11}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 312
    :cond_1
    :goto_0
    return-object v2

    .line 263
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v10, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 265
    .local v4, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v9, 0x0

    .line 266
    .local v9, type:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 268
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 269
    :cond_4
    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v8

    .line 270
    .local v8, support:I
    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v9, v11

    .line 272
    and-int/lit8 v11, v8, 0x4

    if-eqz v11, :cond_3

    .line 273
    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v8           #support:I
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 278
    .local v7, size:I
    if-lez v7, :cond_9

    .line 279
    invoke-static {v9}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, mimeType:Ljava/lang/String;
    const/4 v11, 0x1

    if-le v7, v11, :cond_7

    .line 281
    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 287
    :goto_2
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 290
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    const v12, 0x7f0c0119

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 291
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_6

    .line 292
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/SelectionManager;->isAllSelected()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 293
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 294
    const v11, 0x7f0e005c

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 302
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_1

    .line 303
    iget-object v13, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v13, v11, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v12, "android.intent.extra.STREAM"

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 296
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_8
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 297
    const v11, 0x7f0e005b

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 307
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_1

    .line 308
    iget-object v12, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v12, v13, v11}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 163
    .local v0, count:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100001

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, format:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    const v4, 0x7f0c0119

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 169
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->isAllSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 174
    const v3, 0x7f0e005c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 177
    const v3, 0x7f0e005b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 125
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    .line 126
    .local v4, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 133
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v5, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v3

    .line 135
    .local v3, result:Z
    if-eqz v3, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 157
    .end local v3           #result:Z
    :goto_0
    return v3

    .line 140
    :cond_0
    const/4 v2, 0x0

    .line 141
    .local v2, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 142
    .local v1, confirmMsg:Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 143
    .local v0, action:I
    const v5, 0x7f0c010e

    if-ne v0, v5, :cond_3

    .line 144
    new-instance v2, Lcom/android/gallery3d/ui/ImportCompleteListener;

    .end local v2           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v5}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 149
    .restart local v2       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v5, p2, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 150
    const v5, 0x7f0c0119

    if-ne v0, v5, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_2
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 157
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    :cond_3
    :try_start_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0c010f

    if-ne v5, v6, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100005

    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 155
    .end local v0           #action:I
    .end local v1           #confirmMsg:Ljava/lang/String;
    .end local v2           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v5
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 184
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f110007

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    invoke-static {p2}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 187
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    .line 194
    .local v1, listener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 195
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 196
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisible:Z

    .line 204
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 372
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 376
    :cond_0
    return-void
.end method

.method public setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 121
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 0
    .parameter "menuVisible"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisible:Z

    .line 213
    return-void
.end method

.method public setSeleteAllInvisiable()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 91
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 92
    .local v1, actionMode:Landroid/view/ActionMode;
    new-instance v2, Lcom/android/gallery3d/ui/CustomMenu;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, customMenu:Lcom/android/gallery3d/ui/CustomMenu;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, customView:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 96
    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f11000a

    invoke-virtual {v2, v4, v5}, Lcom/android/gallery3d/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/CustomMenu$DropDownMenu;

    .line 99
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 100
    new-instance v4, Lcom/android/gallery3d/ui/ActionModeHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 106
    return-object v1
.end method

.method public updateSupportedOperation()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 329
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0c010d

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 331
    .local v0, item:Landroid/view/MenuItem;
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 332
    .local v1, supportShare:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/ui/ActionModeHandler$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler$3;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;ZLandroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 364
    return-void

    .line 329
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #supportShare:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_3
    move v1, v2

    .line 331
    goto :goto_1
.end method

.method public updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 318
    return-void
.end method
