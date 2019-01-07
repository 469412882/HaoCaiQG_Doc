.class public Lcom/lzy/okserver/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/lzy/okserver/download/DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field public progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "progress == null"

    .line 80
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 82
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "Ljava/io/File;",
            "+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tag == null"

    .line 66
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 68
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 72
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 73
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 75
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x2

    .line 333
    iput v10, v9, Lcom/lzy/okgo/model/Progress;->status:I

    const/16 v11, 0x2000

    .line 334
    new-array v12, v11, [B

    .line 335
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v1, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v3, 0x0

    .line 338
    :try_start_0
    invoke-virtual {v13, v12, v3, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v5, v9, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v5, v10, :cond_1

    .line 339
    invoke-virtual {v2, v12, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    .line 341
    iget-wide v6, v9, Lcom/lzy/okgo/model/Progress;->totalSize:J

    new-instance v8, Lcom/lzy/okserver/download/DownloadTask$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, p0

    :try_start_1
    invoke-direct {v8, v14}, Lcom/lzy/okserver/download/DownloadTask$1;-><init>(Lcom/lzy/okserver/download/DownloadTask;)V

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v14, p0

    .line 349
    invoke-static/range {p2 .. p2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 350
    invoke-static {v13}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 351
    invoke-static/range {p1 .. p1}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v14, p0

    :goto_1
    move-object v3, v0

    .line 349
    invoke-static/range {p2 .. p2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 350
    invoke-static {v13}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 351
    invoke-static/range {p1 .. p1}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_2
    :goto_2
    move-object v14, p0

    return-void
.end method

.method private postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 398
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 399
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$5;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 410
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x4

    .line 411
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 412
    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    .line 413
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 414
    new-instance p2, Lcom/lzy/okserver/download/DownloadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$6;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 426
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 427
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    .line 428
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 429
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 430
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lzy/okserver/download/DownloadTask$7;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 442
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 443
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$8;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$8;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 356
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    .line 357
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 358
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 359
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$2;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 384
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x3

    .line 385
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 386
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 387
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$4;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 370
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    .line 371
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 372
    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 373
    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$3;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 455
    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object v0

    .line 456
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v1

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/lzy/okgo/db/DownloadManager;->update(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra2(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra3(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "fileName is null, ignored!"

    .line 99
    invoke-static {p1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public folder(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "folder is null, ignored!"

    .line 90
    invoke-static {p1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public pause()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 192
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x3

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only the task with status WAITING(1) or LOADING(2) can pause, current status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public priority(I)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    return-object p0
.end method

.method public register(Lcom/lzy/okserver/download/DownloadListener;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 2

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    iget-object v1, p1, Lcom/lzy/okserver/download/DownloadListener;->tag:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public remove(Z)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/lang/String;)Z

    .line 207
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/db/DownloadManager;->delete(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lzy/okserver/OkDownload;->removeTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;)V

    return-object p1
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    return-void
.end method

.method public restart()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    .line 176
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/lang/String;)Z

    .line 177
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    .line 178
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 179
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v3, 0x0

    iput v3, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 180
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 181
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/DownloadManager;->replace(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    return-void
.end method

.method public run()V
    .locals 11

    .line 216
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v0, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_NOT_EXIST()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 234
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    const-string v5, "Range"

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 236
    invoke-virtual {v4}, Lcom/lzy/okgo/request/base/Request;->execute()Lokhttp3/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 243
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_10

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_2

    goto/16 :goto_2

    .line 248
    :cond_2
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-nez v5, :cond_3

    .line 250
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/HttpException;

    const-string v2, "response body is null"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 253
    :cond_3
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v6, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    .line 254
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 258
    :cond_4
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    .line 259
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/lzy/okgo/utils/HttpUtils;->getNetFileName(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object v6, v4, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    .line 263
    :cond_5
    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 264
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/StorageException;->NOT_AVAILABLE()Lcom/lzy/okgo/exception/StorageException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 270
    :cond_6
    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 271
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 274
    :cond_7
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_8

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 277
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 280
    :cond_8
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v6, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_9

    .line 281
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    cmp-long v6, v0, v2

    if-nez v6, :cond_a

    .line 284
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 285
    invoke-static {v4}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 287
    :cond_a
    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v6, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v8, v0, v6

    if-nez v8, :cond_c

    cmp-long v6, v0, v2

    if-lez v6, :cond_c

    .line 288
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-nez v5, :cond_b

    .line 289
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v4}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 300
    :cond_c
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v4, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 302
    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v0, v3, Lcom/lzy/okgo/model/Progress;->currentSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :try_start_2
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/DownloadManager;->replace(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v2, v1}, Lcom/lzy/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 317
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_1

    .line 318
    :cond_d
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 319
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v2, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    .line 320
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v4}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_1

    .line 322
    :cond_e
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 325
    :cond_f
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->UNKNOWN()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 311
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 304
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    .line 245
    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR()Lcom/lzy/okgo/exception/HttpException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 238
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public save()Lcom/lzy/okserver/download/DownloadTask;
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/DownloadManager;->replace(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start()V
    .locals 5

    .line 150
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/OkDownload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/DownloadManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/StorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the file of the task with tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may be invalid or damaged, please call the method restart() to download again\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 162
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v2, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 164
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_1

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/StorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " may be invalid or damaged, please call the method restart() to download again\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the download queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    .line 155
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    .line 156
    new-instance v0, Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-direct {v0, v1, p0}, Lcom/lzy/okserver/task/PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    .line 157
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 151
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call DownloadTask#save() before DownloadTask#start()\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unRegister(Lcom/lzy/okserver/download/DownloadListener;)V
    .locals 1

    const-string v0, "listener == null"

    .line 140
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    iget-object p1, p1, Lcom/lzy/okserver/download/DownloadListener;->tag:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag == null"

    .line 145
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
