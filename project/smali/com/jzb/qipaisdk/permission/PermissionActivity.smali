.class public Lcom/jzb/qipaisdk/permission/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x40


# instance fields
.field private final defaultCancel:Ljava/lang/String;

.field private final defaultContent:Ljava/lang/String;

.field private final defaultEnsure:Ljava/lang/String;

.field private final defaultTitle:Ljava/lang/String;

.field private isRequireCheck:Z

.field private key:Ljava/lang/String;

.field private permission:[Ljava/lang/String;

.field private showTip:Z

.field private tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "\u5e2e\u52a9"

    .line 28
    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->defaultTitle:Ljava/lang/String;

    const-string v0, "\u5f53\u524d\u5e94\u7528\u7f3a\u5c11\u6587\u4ef6\u5b58\u50a8\u6743\u9650\u3002\n \n \u8bf7\u70b9\u51fb \"\u8bbe\u7f6e\"-\"\u6743\u9650\"-\u6253\u5f00\u6240\u9700\u6743\u9650\u3002"

    .line 29
    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->defaultContent:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    .line 30
    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->defaultCancel:Ljava/lang/String;

    const-string v0, "\u8bbe\u7f6e"

    .line 31
    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->defaultEnsure:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/permission/PermissionActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permissionsDenied()V

    return-void
.end method

.method private permissionsDenied()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/jzb/qipaisdk/permission/PermissionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jzb/qipaisdk/permission/PermissionListener;->permissionDenied([Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->finish()V

    return-void
.end method

.method private permissionsGranted()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/jzb/qipaisdk/permission/PermissionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jzb/qipaisdk/permission/PermissionListener;->permissionGranted([Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->finish()V

    return-void
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x40

    .line 73
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private showMissingPermissionDialog()V
    .locals 3

    .line 102
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5e2e\u52a9"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 104
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5f53\u524d\u5e94\u7528\u7f3a\u5c11\u6587\u4ef6\u5b58\u50a8\u6743\u9650\u3002\n \n \u8bf7\u70b9\u51fb \"\u8bbe\u7f6e\"-\"\u6743\u9650\"-\u6253\u5f00\u6240\u9700\u6743\u9650\u3002"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 105
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u53d6\u6d88"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    :goto_2
    new-instance v2, Lcom/jzb/qipaisdk/permission/PermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity$1;-><init>(Lcom/jzb/qipaisdk/permission/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u8bbe\u7f6e"

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    :goto_3
    new-instance v2, Lcom/jzb/qipaisdk/permission/PermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity$2;-><init>(Lcom/jzb/qipaisdk/permission/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->isRequireCheck:Z

    .line 44
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permission:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->key:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showTip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->showTip:Z

    .line 47
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 50
    new-instance p1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    const-string v0, "\u5e2e\u52a9"

    const-string v1, "\u5f53\u524d\u5e94\u7528\u7f3a\u5c11\u6587\u4ef6\u5b58\u50a8\u6743\u9650\u3002\n \n \u8bf7\u70b9\u51fb \"\u8bbe\u7f6e\"-\"\u6743\u9650\"-\u6253\u5f00\u6240\u9700\u6743\u9650\u3002"

    const-string v2, "\u53d6\u6d88"

    const-string v3, "\u8bbe\u7f6e"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    iput-object p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->tipInfo:Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;

    :goto_0
    return-void

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/jzb/qipaisdk/permission/PermissionListener;

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 90
    invoke-static {p3}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->isGranted([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p0, p2}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permissionsGranted()V

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->showTip:Z

    if-eqz p1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->showMissingPermissionDialog()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permissionsDenied()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    iget-boolean v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->isRequireCheck:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permissionsGranted()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jzb/qipaisdk/permission/PermissionActivity;->requestPermissions([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->isRequireCheck:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity;->isRequireCheck:Z

    :goto_0
    return-void
.end method
