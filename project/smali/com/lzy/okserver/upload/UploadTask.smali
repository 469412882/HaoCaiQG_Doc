.class public Lcom/lzy/okserver/upload/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/lzy/okserver/upload/UploadListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field public progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "progress == null"

    .line 67
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 69
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/OkUpload;->getThreadPool()Lcom/lzy/okserver/upload/UploadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tag == null"

    .line 54
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 56
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 59
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 60
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 62
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/OkUpload;->getThreadPool()Lcom/lzy/okserver/upload/UploadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 240
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 241
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$5;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 252
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x4

    .line 253
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 254
    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    .line 255
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 256
    new-instance p2, Lcom/lzy/okserver/upload/UploadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$6;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Progress;",
            "TT;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 268
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 269
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    .line 270
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 271
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 272
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lzy/okserver/upload/UploadTask$7;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 284
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 285
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$8;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$8;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    .line 199
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 200
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 201
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$2;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 226
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x3

    .line 227
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 228
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 229
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$4;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 212
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    .line 213
    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    .line 214
    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    .line 215
    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$3;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 297
    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v1

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/lzy/okgo/db/UploadManager;->update(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra2(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra3(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    return-object p0
.end method

.method public pause()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 147
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x3

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only the task with status WAITING(1) or LOADING(2) can pause, current status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public priority(I)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    return-object p0
.end method

.method public register(Lcom/lzy/okserver/upload/UploadListener;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/upload/UploadListener<",
            "TT;>;)",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    iget-object v1, p1, Lcom/lzy/okserver/upload/UploadListener;->tag:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public remove()Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    .line 156
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/UploadManager;->delete(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/OkUpload;->removeTask(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1}, Lcom/lzy/okserver/upload/UploadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;)V

    return-object v0
.end method

.method public restart()V
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    .line 132
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    .line 133
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 134
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v3, 0x0

    iput v3, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 135
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 136
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/UploadManager;->replace(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->start()Lcom/lzy/okserver/upload/UploadTask;

    return-void
.end method

.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    .line 166
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 171
    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v1

    .line 172
    new-instance v2, Lcom/lzy/okserver/upload/UploadTask$1;

    invoke-direct {v2, p0, v1}, Lcom/lzy/okserver/upload/UploadTask$1;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lokhttp3/Call;)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)Lcom/lzy/okgo/request/base/Request;

    .line 184
    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->execute()Lcom/lzy/okgo/model/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public save()Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/UploadManager;->replace(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start()Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okserver/OkUpload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/UploadManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    .line 121
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    .line 122
    new-instance v0, Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-direct {v0, v1, p0}, Lcom/lzy/okserver/task/PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    .line 123
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the upload queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 117
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call UploadTask#save() before UploadTask#start()\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unRegister(Lcom/lzy/okserver/upload/UploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/upload/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener == null"

    .line 106
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    iget-object p1, p1, Lcom/lzy/okserver/upload/UploadListener;->tag:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag == null"

    .line 111
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
