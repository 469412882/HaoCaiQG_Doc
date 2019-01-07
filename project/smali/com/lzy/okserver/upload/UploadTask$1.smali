.class Lcom/lzy/okserver/upload/UploadTask$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/upload/UploadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/upload/UploadTask;

.field final synthetic val$rawCall:Lokhttp3/Call;


# direct methods
.method constructor <init>(Lcom/lzy/okserver/upload/UploadTask;Lokhttp3/Call;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask$1;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iput-object p2, p0, Lcom/lzy/okserver/upload/UploadTask$1;->val$rawCall:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask$1;->val$rawCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask$1;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iget-object v0, v0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask$1;->val$rawCall:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask$1;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iget-object v0, v0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Progress;->from(Lcom/lzy/okgo/model/Progress;)V

    .line 181
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask$1;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask$1;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iget-object v0, v0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {p1, v0}, Lcom/lzy/okserver/upload/UploadTask;->access$000(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
