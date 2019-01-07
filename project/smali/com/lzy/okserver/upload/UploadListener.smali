.class public abstract Lcom/lzy/okserver/upload/UploadListener;
.super Ljava/lang/Object;
.source "UploadListener.java"

# interfaces
.implements Lcom/lzy/okserver/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okserver/ProgressListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadListener;->tag:Ljava/lang/Object;

    return-void
.end method
