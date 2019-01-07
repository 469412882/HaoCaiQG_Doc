.class Lcom/lzy/okserver/download/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/lzy/okserver/download/DownloadTask;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask$1;->this$0:Lcom/lzy/okserver/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask$1;->this$0:Lcom/lzy/okserver/download/DownloadTask;

    invoke-static {v0, p1}, Lcom/lzy/okserver/download/DownloadTask;->access$000(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
