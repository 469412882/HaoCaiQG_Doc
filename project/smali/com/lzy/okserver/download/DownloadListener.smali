.class public abstract Lcom/lzy/okserver/download/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Lcom/lzy/okserver/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lzy/okserver/ProgressListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadListener;->tag:Ljava/lang/Object;

    return-void
.end method
