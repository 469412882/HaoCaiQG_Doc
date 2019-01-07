.class Lcom/jzb/qipaisdk/IntroActivity$3;
.super Ljava/lang/Thread;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/IntroActivity;->getUpdateInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/IntroActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iput-object p2, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v2, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jzb/qipaisdk/IntroActivity;->getPageSource2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jzb/qipaisdk/IntroActivity;->updateDataValue:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$3;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
