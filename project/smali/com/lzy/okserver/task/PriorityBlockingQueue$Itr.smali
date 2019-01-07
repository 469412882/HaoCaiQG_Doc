.class Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;)V
    .locals 1

    .line 486
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 489
    :try_start_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    .line 490
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;)Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation

    .line 502
    :goto_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object p1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    iget-object p1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    .line 515
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {p0, v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->nextNode(Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;)Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    .line 516
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    .line 528
    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    .line 529
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    :cond_1
    iget-object v2, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method
