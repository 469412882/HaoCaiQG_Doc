.class Lcom/jzb/qipaisdk/WebViewActivity$4;
.super Lcom/lzy/okserver/download/DownloadListener;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/WebViewActivity;->downloadApk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/WebViewActivity;Ljava/lang/Object;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$4;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p0, p2}, Lcom/lzy/okserver/download/DownloadListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 297
    iget-object p2, p0, Lcom/jzb/qipaisdk/WebViewActivity$4;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-static {p2, p1}, Lcom/jzb/qipaisdk/AppUtils;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    .line 298
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$4;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {p1}, Lcom/jzb/qipaisdk/WebViewActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 279
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/jzb/qipaisdk/WebViewActivity$4;->onFinish(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public onProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity$4;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/WebViewActivity;->refreshProgress(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public onRemove(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method
