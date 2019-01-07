.class Lcom/jzb/qipaisdk/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/WebViewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/WebViewActivity;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$3;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 185
    iget-object p2, p0, Lcom/jzb/qipaisdk/WebViewActivity$3;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-static {p2}, Lcom/jzb/qipaisdk/WebViewActivity;->access$000(Lcom/jzb/qipaisdk/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onDownloadStart: "

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p2, p0, Lcom/jzb/qipaisdk/WebViewActivity$3;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    iget-object p3, p0, Lcom/jzb/qipaisdk/WebViewActivity$3;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {p2, p3}, Lcom/jzb/qipaisdk/WebViewActivity;->showDownloadDialog(Landroid/app/Activity;)V

    .line 187
    iget-object p2, p0, Lcom/jzb/qipaisdk/WebViewActivity$3;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {p2, p1}, Lcom/jzb/qipaisdk/WebViewActivity;->downloadApk(Ljava/lang/String;)V

    return-void
.end method
