.class Lcom/jzb/qipaisdk/IntroActivity$5;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Lcom/jzb/qipaisdk/permission/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/IntroActivity;->requestPhoneSdCardPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/IntroActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/IntroActivity;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$5;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionDenied([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public permissionGranted([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
