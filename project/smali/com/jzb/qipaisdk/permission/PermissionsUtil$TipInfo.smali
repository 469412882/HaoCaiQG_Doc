.class public Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/permission/PermissionsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field cancel:Ljava/lang/String;

.field content:Ljava/lang/String;

.field ensure:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/jzb/qipaisdk/permission/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    return-void
.end method
