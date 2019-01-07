.class public Lcom/lzy/okserver/OkDownload;
.super Ljava/lang/Object;
.source "OkDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/OkDownload$OkDownloadHolder;
    }
.end annotation


# instance fields
.field private folder:Ljava/lang/String;

.field private taskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/lzy/okserver/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private threadPool:Lcom/lzy/okserver/download/DownloadThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/OkDownload;->folder:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->folder:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/lang/String;)Z

    .line 62
    new-instance v0, Lcom/lzy/okserver/download/DownloadThreadPool;

    invoke-direct {v0}, Lcom/lzy/okserver/download/DownloadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/OkDownload;->threadPool:Lcom/lzy/okserver/download/DownloadThreadPool;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/DownloadManager;->getDownloading()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/model/Progress;

    .line 68
    iget v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_1
    const/4 v3, 0x0

    .line 69
    iput v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/db/DownloadManager;->replace(Ljava/util/List;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okserver/OkDownload$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/lzy/okserver/OkDownload;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lzy/okserver/OkDownload;
    .locals 1

    .line 52
    invoke-static {}, Lcom/lzy/okserver/OkDownload$OkDownloadHolder;->access$000()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "Ljava/io/File;",
            "+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)",
            "Lcom/lzy/okserver/download/DownloadTask;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 77
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/lzy/okserver/download/DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/lzy/okserver/download/DownloadTask;-><init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V

    .line 80
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static restore(Lcom/lzy/okgo/model/Progress;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 2

    .line 87
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/lzy/okserver/download/DownloadTask;

    invoke-direct {v1, p0}, Lcom/lzy/okserver/download/DownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    .line 91
    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static restore(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/Progress;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lzy/okserver/download/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/model/Progress;

    .line 101
    iget-object v3, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v3, :cond_0

    .line 103
    new-instance v3, Lcom/lzy/okserver/download/DownloadTask;

    invoke-direct {v3, v2}, Lcom/lzy/okserver/download/DownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    .line 104
    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->threadPool:Lcom/lzy/okserver/download/DownloadThreadPool;

    invoke-virtual {v0}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    return-void
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okserver/download/DownloadTask;

    return-object p1
.end method

.method public getTaskMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lzy/okserver/download/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->threadPool:Lcom/lzy/okserver/download/DownloadThreadPool;

    return-object v0
.end method

.method public hasTask(Ljava/lang/String;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pauseAll()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v3, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find task with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, v3, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-eq v1, v2, :cond_0

    .line 133
    invoke-virtual {v3}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v3, :cond_4

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find task with tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_4
    iget-object v1, v3, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v2, :cond_3

    .line 144
    invoke-virtual {v3}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public removeAll()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/lzy/okserver/OkDownload;->removeAll(Z)V

    return-void
.end method

.method public removeAll(Z)V
    .locals 5

    .line 160
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 162
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v4, :cond_1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find task with tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, v4, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v2, v2, Lcom/lzy/okgo/model/Progress;->status:I

    if-eq v2, v3, :cond_0

    .line 169
    invoke-virtual {v4, p1}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    goto :goto_0

    .line 173
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v2, :cond_4

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find task with tag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_4
    iget-object v1, v2, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v3, :cond_3

    .line 180
    invoke-virtual {v2, p1}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->threadPool:Lcom/lzy/okserver/download/DownloadThreadPool;

    invoke-virtual {v0}, Lcom/lzy/okserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    return-void
.end method

.method public removeTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okserver/download/DownloadTask;

    return-object p1
.end method

.method public setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/lzy/okserver/OkDownload;->folder:Ljava/lang/String;

    return-object p0
.end method

.method public startAll()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/lzy/okserver/OkDownload;->taskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/download/DownloadTask;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find task with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/OkLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v2}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method
