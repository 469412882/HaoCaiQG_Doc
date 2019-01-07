.class public Lcom/lzy/okserver/OkUpload;
.super Ljava/lang/Object;
.source "OkUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/OkUpload$OkUploadHolder;
    }
.end annotation


# instance fields
.field private taskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private threadPool:Lcom/lzy/okserver/upload/UploadThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/lzy/okserver/upload/UploadThreadPool;

    invoke-direct {v0}, Lcom/lzy/okserver/upload/UploadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/OkUpload;->threadPool:Lcom/lzy/okserver/upload/UploadThreadPool;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/UploadManager;->getUploading()Ljava/util/List;

    move-result-object v0

    .line 60
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

    .line 61
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

    .line 62
    iput v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lcom/lzy/okgo/db/UploadManager;->getInstance()Lcom/lzy/okgo/db/UploadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/db/UploadManager;->replace(Ljava/util/List;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okserver/OkUpload$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/lzy/okserver/OkUpload;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lzy/okserver/OkUpload;
    .locals 1

    .line 47
    invoke-static {}, Lcom/lzy/okserver/OkUpload$OkUploadHolder;->access$000()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    return-object v0
.end method

.method public static request(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkUpload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/lzy/okserver/upload/UploadTask;

    invoke-direct {v1, p0, p1}, Lcom/lzy/okserver/upload/UploadTask;-><init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V

    .line 74
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static restore(Lcom/lzy/okgo/model/Progress;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/model/Progress;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkUpload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/lzy/okserver/upload/UploadTask;

    invoke-direct {v1, p0}, Lcom/lzy/okserver/upload/UploadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    .line 86
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
            "Lcom/lzy/okserver/upload/UploadTask<",
            "*>;>;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/lzy/okserver/OkUpload;->getInstance()Lcom/lzy/okserver/OkUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkUpload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/model/Progress;

    .line 96
    iget-object v3, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Lcom/lzy/okserver/upload/UploadTask;

    invoke-direct {v3, v2}, Lcom/lzy/okserver/upload/UploadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    .line 99
    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->threadPool:Lcom/lzy/okserver/upload/UploadThreadPool;

    invoke-virtual {v0}, Lcom/lzy/okserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    return-void
.end method

.method public getTask(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "*>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okserver/upload/UploadTask;

    return-object p1
.end method

.method public getTaskMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "*>;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    return-object v0
.end method

.method public getThreadPool()Lcom/lzy/okserver/upload/UploadThreadPool;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->threadPool:Lcom/lzy/okserver/upload/UploadThreadPool;

    return-object v0
.end method

.method public hasTask(Ljava/lang/String;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pauseAll()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v3, :cond_1

    .line 124
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

    .line 127
    :cond_1
    iget-object v1, v3, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-eq v1, v2, :cond_0

    .line 128
    invoke-virtual {v3}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

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

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v3, :cond_4

    .line 135
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

    .line 138
    :cond_4
    iget-object v1, v3, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v2, :cond_3

    .line 139
    invoke-virtual {v3}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public removeAll()V
    .locals 5

    .line 146
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 148
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

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v4, :cond_1

    .line 151
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

    .line 154
    :cond_1
    iget-object v2, v4, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v2, v2, Lcom/lzy/okgo/model/Progress;->status:I

    if-eq v2, v3, :cond_0

    .line 155
    invoke-virtual {v4}, Lcom/lzy/okserver/upload/UploadTask;->remove()Lcom/lzy/okserver/upload/UploadTask;

    goto :goto_0

    .line 159
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

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v2, :cond_4

    .line 162
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

    .line 165
    :cond_4
    iget-object v1, v2, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v3, :cond_3

    .line 166
    invoke-virtual {v2}, Lcom/lzy/okserver/upload/UploadTask;->remove()Lcom/lzy/okserver/upload/UploadTask;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->threadPool:Lcom/lzy/okserver/upload/UploadThreadPool;

    invoke-virtual {v0}, Lcom/lzy/okserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/task/XExecutor;->removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    return-void
.end method

.method public removeTask(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "*>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okserver/upload/UploadTask;

    return-object p1
.end method

.method public startAll()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/lzy/okserver/OkUpload;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okserver/upload/UploadTask;

    if-nez v2, :cond_0

    .line 111
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

    .line 114
    :cond_0
    invoke-virtual {v2}, Lcom/lzy/okserver/upload/UploadTask;->start()Lcom/lzy/okserver/upload/UploadTask;

    goto :goto_0

    :cond_1
    return-void
.end method
