.class public Lcom/jzb/qipaisdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = ""

.field public static mainClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    .line 15
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 16
    sput-object p1, Lcom/jzb/qipaisdk/Constants;->APP_ID:Ljava/lang/String;

    .line 17
    sput-object p2, Lcom/jzb/qipaisdk/Constants;->mainClass:Ljava/lang/Class;

    return-void
.end method
