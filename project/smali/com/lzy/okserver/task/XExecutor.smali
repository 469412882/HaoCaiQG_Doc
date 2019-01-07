.class public Lcom/lzy/okserver/task/XExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "XExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;,
        Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;
    }
.end annotation


# instance fields
.field private allTaskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private innerHandler:Landroid/os/Handler;

.field private taskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .line 61
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 62
    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;

    .line 64
    iget-object v1, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lzy/okserver/task/XExecutor$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lzy/okserver/task/XExecutor$1;-><init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/XExecutor;->getActiveCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/XExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;

    .line 76
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->innerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lzy/okserver/task/XExecutor$2;

    invoke-direct {v1, p0, p2}, Lcom/lzy/okserver/task/XExecutor$2;-><init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnTaskEndListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
