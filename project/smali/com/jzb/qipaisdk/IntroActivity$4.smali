.class Lcom/jzb/qipaisdk/IntroActivity$4;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/IntroActivity;->goStart()V
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

    .line 244
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$4;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$4;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jzb/qipaisdk/IntroActivity;->leastWaitingOver:Z

    .line 248
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$4;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-boolean v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->getResponse:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$4;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
