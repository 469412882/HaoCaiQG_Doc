.class Lcom/jzb/qipaisdk/IntroActivity$2;
.super Ljava/lang/Thread;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/IntroActivity;->requestData()V
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

    .line 135
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v2, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v2}, Lcom/jzb/qipaisdk/IntroActivity;->access$200(Lcom/jzb/qipaisdk/IntroActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jzb/qipaisdk/IntroActivity;->getPageSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jzb/qipaisdk/IntroActivity;->getResponse:Z

    .line 139
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-boolean v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->leastWaitingOver:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$2;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
