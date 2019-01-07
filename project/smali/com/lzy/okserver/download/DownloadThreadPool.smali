.class public Lcom/lzy/okserver/download/DownloadThreadPool;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static final UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private corePoolSize:I

.field private executor:Lcom/lzy/okserver/task/XExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lzy/okserver/download/DownloadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->corePoolSize:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getExecutor()Lcom/lzy/okserver/task/XExecutor;
    .locals 11

    .line 42
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->executor:Lcom/lzy/okserver/task/XExecutor;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/lzy/okserver/download/DownloadThreadPool;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->executor:Lcom/lzy/okserver/task/XExecutor;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/lzy/okserver/task/XExecutor;

    iget v3, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->corePoolSize:I

    const/4 v4, 0x5

    const-wide/16 v5, 0x1

    sget-object v7, Lcom/lzy/okserver/download/DownloadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {v8}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/lzy/okserver/task/XExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->executor:Lcom/lzy/okserver/task/XExecutor;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->executor:Lcom/lzy/okserver/task/XExecutor;

    return-object v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    const/4 p1, 0x5

    .line 59
    :cond_1
    iput p1, p0, Lcom/lzy/okserver/download/DownloadThreadPool;->corePoolSize:I

    return-void
.end method
