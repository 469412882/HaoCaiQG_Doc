.class public interface abstract Lcom/jzb/qipaisdk/permission/PermissionListener;
.super Ljava/lang/Object;
.source "PermissionListener.java"


# virtual methods
.method public abstract permissionDenied([Ljava/lang/String;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract permissionGranted([Ljava/lang/String;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
