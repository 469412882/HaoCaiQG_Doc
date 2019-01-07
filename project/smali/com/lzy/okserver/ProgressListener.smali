.class public interface abstract Lcom/lzy/okserver/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/lzy/okgo/model/Progress;)V
.end method

.method public abstract onFinish(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/lzy/okgo/model/Progress;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/lzy/okgo/model/Progress;)V
.end method

.method public abstract onRemove(Lcom/lzy/okgo/model/Progress;)V
.end method

.method public abstract onStart(Lcom/lzy/okgo/model/Progress;)V
.end method
