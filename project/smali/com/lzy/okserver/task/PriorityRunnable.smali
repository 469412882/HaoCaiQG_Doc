.class public Lcom/lzy/okserver/task/PriorityRunnable;
.super Lcom/lzy/okserver/task/PriorityObject;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okserver/task/PriorityObject<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lzy/okserver/task/PriorityObject;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityRunnable;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
