.class Lcom/jzb/qipaisdk/permission/PermissionActivity$2;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/permission/PermissionActivity;->showMissingPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/permission/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/permission/PermissionActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity$2;->this$0:Lcom/jzb/qipaisdk/permission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/jzb/qipaisdk/permission/PermissionActivity$2;->this$0:Lcom/jzb/qipaisdk/permission/PermissionActivity;

    invoke-static {p1}, Lcom/jzb/qipaisdk/permission/PermissionsUtil;->gotoSetting(Landroid/content/Context;)V

    return-void
.end method
