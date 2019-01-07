.class public Lcom/jzb/qipaisdk/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# static fields
.field public static PERMISSIONS_STORAGE:[Ljava/lang/String;


# instance fields
.field dataValue:Ljava/lang/String;

.field getResponse:Z

.field leastWaitingOver:Z

.field mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field updateDataValue:Ljava/lang/String;

.field private urls:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/jzb/qipaisdk/IntroActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/IntroActivity;->getResponse:Z

    .line 36
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/IntroActivity;->leastWaitingOver:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.my0916.com/lottery/back/api.php?type=android&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jzb/qipaisdk/Constants;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity;->urls:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/jzb/qipaisdk/IntroActivity$1;

    invoke-direct {v0, p0}, Lcom/jzb/qipaisdk/IntroActivity$1;-><init>(Lcom/jzb/qipaisdk/IntroActivity;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/IntroActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/jzb/qipaisdk/IntroActivity;->goMainActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jzb/qipaisdk/IntroActivity;->intentToWebViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jzb/qipaisdk/IntroActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jzb/qipaisdk/IntroActivity;->urls:Ljava/lang/String;

    return-object p0
.end method

.method private generateContentView()Landroid/view/View;
    .locals 4

    .line 256
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v2, "launchimg"

    .line 265
    invoke-static {p0, v2}, Lcom/jzb/qipaisdk/AppUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private goMainActivity()V
    .locals 2

    .line 103
    sget-object v0, Lcom/jzb/qipaisdk/Constants;->mainClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jzb/qipaisdk/Constants;->mainClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/IntroActivity;->finish()V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, v0}, Lcom/jzb/qipaisdk/IntroActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private goStart()V
    .locals 4

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jzb/qipaisdk/IntroActivity$4;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/IntroActivity$4;-><init>(Lcom/jzb/qipaisdk/IntroActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private intentToWebViewActivity(Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    const-class v1, Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/IntroActivity;->finish()V

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1, p1}, Lcom/jzb/qipaisdk/IntroActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private requestPhoneSdCardPermission()V
    .locals 3

    .line 274
    sget-object v0, Lcom/jzb/qipaisdk/IntroActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/IntroActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/jzb/qipaisdk/IntroActivity$5;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/IntroActivity$5;-><init>(Lcom/jzb/qipaisdk/IntroActivity;)V

    sget-object v2, Lcom/jzb/qipaisdk/IntroActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->requestPermission(Landroid/content/Context;Lcom/jzb/qipaisdk/permission/PermissionListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 160
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 166
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 167
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 178
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "<html>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/IntroActivity;->getUidFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_3

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_3
    :goto_3
    throw p1

    :catch_2
    move-object v2, v1

    :catch_3
    if-eqz v2, :cond_4

    .line 178
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v1
.end method

.method public getPageSource2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 196
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 203
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 204
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 210
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 216
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    if-eqz v1, :cond_2

    .line 216
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    :cond_2
    :goto_4
    throw p1
.end method

.method public getUidFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method public getUpdateInfo(Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/jzb/qipaisdk/IntroActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/jzb/qipaisdk/IntroActivity$3;-><init>(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/jzb/qipaisdk/IntroActivity$3;->start()V

    return-void
.end method

.method public mGetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    iget-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/IntroActivity;->requestWindowFeature(I)Z

    .line 127
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/IntroActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 129
    invoke-direct {p0}, Lcom/jzb/qipaisdk/IntroActivity;->generateContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/IntroActivity;->setContentView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/IntroActivity;->requestData()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 239
    invoke-direct {p0}, Lcom/jzb/qipaisdk/IntroActivity;->goStart()V

    .line 240
    invoke-direct {p0}, Lcom/jzb/qipaisdk/IntroActivity;->requestPhoneSdCardPermission()V

    return-void
.end method

.method public requestData()V
    .locals 1

    .line 135
    new-instance v0, Lcom/jzb/qipaisdk/IntroActivity$2;

    invoke-direct {v0, p0}, Lcom/jzb/qipaisdk/IntroActivity$2;-><init>(Lcom/jzb/qipaisdk/IntroActivity;)V

    .line 143
    invoke-virtual {v0}, Lcom/jzb/qipaisdk/IntroActivity$2;->start()V

    return-void
.end method
