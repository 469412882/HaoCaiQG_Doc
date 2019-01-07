.class Lcom/jzb/qipaisdk/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
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

    .line 137
    iput-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$1;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "blank"

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$1;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {p1}, Lcom/jzb/qipaisdk/WebViewActivity;->showErrorPage()V

    return-void

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$1;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-static {p1}, Lcom/jzb/qipaisdk/WebViewActivity;->access$000(Lcom/jzb/qipaisdk/WebViewActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceivedError: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$1;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {p1}, Lcom/jzb/qipaisdk/WebViewActivity;->showErrorPage()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
