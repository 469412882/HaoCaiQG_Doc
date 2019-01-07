.class Lcom/lzy/okserver/task/XExecutor$2;
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

.field final synthetic val$listener:Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor$2;->this$0:Lcom/lzy/okserver/task/XExecutor;

    iput-object p2, p0, Lcom/lzy/okserver/task/XExecutor$2;->val$listener:Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor$2;->val$listener:Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;

    invoke-interface {v0}, Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;->onAllTaskEnd()V

    return-void
.end method
