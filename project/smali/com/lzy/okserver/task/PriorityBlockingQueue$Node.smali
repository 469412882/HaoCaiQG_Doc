.class Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

.field private value:Lcom/lzy/okserver/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityObject<",
            "*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->this$0:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 581
    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    .line 586
    invoke-virtual {p0, p2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    iget v0, v0, Lcom/lzy/okserver/task/PriorityObject;->priority:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 597
    :cond_0
    iget-boolean v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    return-object v0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 606
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    goto :goto_0

    .line 607
    :cond_0
    instance-of v0, p1, Lcom/lzy/okserver/task/PriorityObject;

    if-eqz v0, :cond_1

    .line 608
    check-cast p1, Lcom/lzy/okserver/task/PriorityObject;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    const/4 p1, 0x1

    .line 609
    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    goto :goto_0

    .line 611
    :cond_1
    new-instance v0, Lcom/lzy/okserver/task/PriorityObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/lzy/okserver/task/PriorityObject;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okserver/task/PriorityObject;

    :goto_0
    return-void
.end method
