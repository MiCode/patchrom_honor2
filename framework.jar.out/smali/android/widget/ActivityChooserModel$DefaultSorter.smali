.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

.field private hasIShare:Z

.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->hasIShare:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, activities:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v9, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .local v9, packageNameToActivityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->hasIShare:Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, activityCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .local v1, activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v11, 0x0

    iput v11, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget-object v11, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v8, packageName:Ljava/lang/String;
    const-string v11, "com.qq.ishare"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iput-object v1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->hasIShare:Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, lastShareIndex:I
    const/high16 v7, 0x3f80

    .local v7, nextRecordWeight:F
    move v4, v6

    :goto_2
    if-ltz v4, :cond_5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .local v3, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v11, v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #packageName:Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .restart local v1       #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v1, :cond_3

    iget v11, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v12, v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    iput v11, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    const v11, 0x3f733333

    mul-float/2addr v7, v11

    :cond_3
    iget-boolean v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->hasIShare:Z

    if-eqz v11, :cond_4

    const-string v11, "com.qq.ishare"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget v12, v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v13, v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    iput v12, v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    const v11, 0x3f733333

    mul-float/2addr v7, v11

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v1           #activity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_5
    iget-boolean v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->hasIShare:Z

    if-eqz v11, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, pn:Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v10           #pn:Ljava/lang/String;
    :cond_6
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-ltz v6, :cond_8

    iget-object v11, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget v12, v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget v11, v11, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    cmpl-float v11, v12, v11

    if-ltz v11, :cond_7

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v11, 0x1

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v5           #i$:Ljava/util/Iterator;
    :goto_4
    return-void

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v11, 0x1

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->appIShare:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4
.end method
