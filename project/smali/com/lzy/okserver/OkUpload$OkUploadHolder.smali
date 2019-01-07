.class Lcom/lzy/okserver/OkUpload$OkUploadHolder;
.super Ljava/lang/Object;
.source "OkUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/OkUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkUploadHolder"
.end annotation


# static fields
.field private static final instance:Lcom/lzy/okserver/OkUpload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/lzy/okserver/OkUpload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okserver/OkUpload;-><init>(Lcom/lzy/okserver/OkUpload$1;)V

    sput-object v0, Lcom/lzy/okserver/OkUpload$OkUploadHolder;->instance:Lcom/lzy/okserver/OkUpload;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lzy/okserver/OkUpload;
    .locals 1

    .line 50
    sget-object v0, Lcom/lzy/okserver/OkUpload$OkUploadHolder;->instance:Lcom/lzy/okserver/OkUpload;

    return-object v0
.end method
