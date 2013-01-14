.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 53
    return-void
.end method

.method private static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 261
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 263
    :goto_1
    return v1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static checkCustLanguages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "white_languages"
    .parameter "black_languages"
    .parameter "s"

    .prologue
    .line 280
    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const v0, 0x1090064

    const v1, 0x1020177

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 24
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 94
    .local v17, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v14

    .line 95
    .local v14, locales:[Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lmiui/util/ExtraLocalePicker;->filterLocale(Landroid/content/res/Resources;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const v22, 0x1070007

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 96
    .local v19, specialLocaleCodes:[Ljava/lang/String;
    const v22, 0x1070008

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, specialLocaleNames:[Ljava/lang/String;
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 98
    array-length v15, v14

    .line 99
    .local v15, origSize:I
    new-array v0, v15, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v16, v0

    .line 100
    .local v16, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v7, 0x0

    .line 102
    .local v7, finalSize:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v21

    .line 103
    .local v21, white_languages:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, black_languages:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    move v8, v7

    .end local v7           #finalSize:I
    .local v8, finalSize:I
    :goto_0
    if-ge v9, v15, :cond_4

    .line 105
    aget-object v18, v14, v9

    .line 106
    .local v18, s:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 107
    .local v12, len:I
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v12, v0, :cond_6

    .line 108
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/android/internal/app/LocalePicker;->checkCustLanguages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    move v7, v8

    .line 104
    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    goto :goto_0

    .line 112
    :cond_0
    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, language:Ljava/lang/String;
    const/16 v22, 0x3

    const/16 v23, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, country:Ljava/lang/String;
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v11, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v10, l:Ljava/util/Locale;
    if-nez v8, :cond_1

    .line 120
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v10, v10}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v16, v8

    goto :goto_1

    .line 127
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_1
    add-int/lit8 v22, v8, -0x1

    aget-object v22, v16, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 135
    add-int/lit8 v22, v8, -0x1

    aget-object v22, v16, v22

    add-int/lit8 v23, v8, -0x1

    aget-object v23, v16, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 142
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v10, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v16, v8

    goto/16 :goto_1

    .line 148
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_2
    const-string/jumbo v22, "zz_ZZ"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 149
    const-string v6, "Pseudo..."

    .line 156
    .local v6, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v10}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v16, v8

    goto/16 :goto_1

    .line 151
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_3
    invoke-virtual {v10, v10}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 162
    .end local v5           #country:Ljava/lang/String;
    .end local v6           #displayName:Ljava/lang/String;
    .end local v10           #l:Ljava/util/Locale;
    .end local v11           #language:Ljava/lang/String;
    .end local v12           #len:I
    .end local v18           #s:Ljava/lang/String;
    :cond_4
    new-array v13, v8, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v13, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v22, v16, v9

    aput-object v22, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v13}, Lmiui/util/ExtraLocalePicker;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    new-instance v22, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v22

    .end local v13           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v12       #len:I
    .restart local v18       #s:Ljava/lang/String;
    :cond_6
    move v7, v8

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    goto/16 :goto_1
.end method

.method private static getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, black_languages:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 270
    .local v1, black_strings:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "black_languages"

    invoke-static {v3, v4}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    if-eqz v1, :cond_0

    .line 275
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    return-object v0

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 183
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    aget-object v2, p2, v1

    .line 188
    :goto_1
    return-object v2

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, white_languages:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 249
    .local v2, white_strings:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "white_languages"

    invoke-static {v3, v4}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 254
    :goto_0
    if-eqz v2, :cond_0

    .line 255
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 229
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 231
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 236
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 238
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 195
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 218
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 220
    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 206
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 200
    return-void
.end method
