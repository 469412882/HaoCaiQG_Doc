.class Lcom/jzb/qipaisdk/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


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

    .line 163
    iput-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$2;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity$2;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity$2;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity$2;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    iget-object v1, v1, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$2;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-static {p1}, Lcom/jzb/qipaisdk/WebViewActivity;->access$000(Lcom/jzb/qipaisdk/WebViewActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
