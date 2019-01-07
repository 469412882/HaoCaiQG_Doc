.class Lcom/jzb/qipaisdk/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/WebViewActivity;->refreshProgress(Lcom/lzy/okgo/model/Progress;)V
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

    .line 319
    iput-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity$5;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity$5;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    const-string v1, "\u4e0b\u8f7d\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity$5;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jzb/qipaisdk/WebViewActivity$5;->this$0:Lcom/jzb/qipaisdk/WebViewActivity;

    const-class v3, Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jzb/qipaisdk/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
