.class Lcom/jzb/qipaisdk/IntroActivity$1;
.super Landroid/os/Handler;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/IntroActivity;
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

    .line 46
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6f

    goto/16 :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/IntroActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    :cond_2
    const-string v1, "200"

    const-string v2, "code"

    .line 68
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const-string v1, "is_update"

    invoke-virtual {v0, v1}, Lcom/jzb/qipaisdk/IntroActivity;->mGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const-string v2, "update_url"

    invoke-virtual {v1, v2}, Lcom/jzb/qipaisdk/IntroActivity;->mGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0, v1}, Lcom/jzb/qipaisdk/IntroActivity;->access$100(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const-string v1, "is_wap"

    invoke-virtual {v0, v1}, Lcom/jzb/qipaisdk/IntroActivity;->mGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const-string v2, "wap_url"

    invoke-virtual {v1, v2}, Lcom/jzb/qipaisdk/IntroActivity;->mGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0, v1}, Lcom/jzb/qipaisdk/IntroActivity;->access$100(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    .line 91
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
