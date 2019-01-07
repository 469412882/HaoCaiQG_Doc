.class public Lcom/haoyun/demo/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "0056700124"

    .line 17
    const-class v1, Lcom/haoyun/demo/MainActivity;

    invoke-static {p0, v0, v1}, Lcom/jzb/qipaisdk/Constants;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
