.class Lcom/lzy/okserver/task/XExecutor$1;
.super Ljava/lang/Object;
.source "XExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/task/XExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/task/XExecutor;

.field final synthetic val$listener:Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor$1;->this$0:Lcom/lzy/okserver/task/XExecutor;

    iput-object p2, p0, Lcom/lzy/okserver/task/XExecutor$1;->val$listener:Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;

    iput-object p3, p0, Lcom/lzy/okserver/task/XExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor$1;->val$listener:Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;

    iget-object v1, p0, Lcom/lzy/okserver/task/XExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;->onTaskEnd(Ljava/lang/Runnable;)V

    return-void
.end method
