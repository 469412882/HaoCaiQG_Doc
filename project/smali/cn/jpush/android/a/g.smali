.class public final Lcn/jpush/android/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;
    .locals 4

    const-string v0, "ProtocolHelper"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:preParseOriginalMsgMessage - originalJson:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "ProtocolHelper"

    const-string p2, "Empty original json txt"

    .line 28
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "NO MSGID"

    const/16 p2, 0x3e4

    .line 1033
    invoke-static {p1, p2, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-object v1

    :cond_1
    const-string v0, "NO_MSGID"

    .line 33
    invoke-static {p0, v0, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "ProtocolHelper"

    const-string p1, "topJsonObject == null"

    .line 35
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p1, "msg_id"

    const-string v0, ""

    .line 40
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ad_id"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, p4

    :cond_4
    const-string p4, "ProtocolHelper"

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preParseOriginalMsgMessage msgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "n_only"

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    const-string p4, "n_builder_id"

    .line 48
    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    goto :goto_1

    :cond_6
    const/4 p4, 0x0

    .line 51
    :goto_1
    new-instance v2, Lcn/jpush/android/data/a;

    invoke-direct {v2}, Lcn/jpush/android/data/a;-><init>()V

    .line 52
    iput-object p1, v2, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    .line 53
    iput-object p0, v2, Lcn/jpush/android/data/a;->a:Lorg/json/JSONObject;

    const-string p1, "show_type"

    const/4 v3, 0x3

    .line 54
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Lcn/jpush/android/data/a;->b:I

    .line 55
    iput-boolean v1, v2, Lcn/jpush/android/data/a;->f:Z

    .line 56
    iput p4, v2, Lcn/jpush/android/data/a;->g:I

    const-string p1, "notificaion_type"

    .line 57
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Lcn/jpush/android/data/a;->h:I

    const-string p1, "message"

    const-string p4, ""

    .line 59
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/jpush/android/data/a;->j:Ljava/lang/String;

    const-string p1, "content_type"

    const-string p4, ""

    .line 60
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/jpush/android/data/a;->k:Ljava/lang/String;

    const-string p1, "title"

    const-string p4, ""

    .line 61
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/jpush/android/data/a;->m:Ljava/lang/String;

    const-string p1, "extras"

    const-string p4, ""

    .line 62
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    .line 63
    iput-object p2, v2, Lcn/jpush/android/data/a;->o:Ljava/lang/String;

    .line 64
    iput-object p3, v2, Lcn/jpush/android/data/a;->p:Ljava/lang/String;

    const-string p1, "override_msg_id"

    const-string p2, ""

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcn/jpush/android/data/a;->d:Ljava/lang/String;

    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    const-string v0, "ProtocolHelper"

    const-string v1, "parse json error"

    .line 194
    invoke-static {v0, v1, p2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p2, 0x3e4

    const/4 v0, 0x0

    .line 6033
    invoke-static {p1, p2, v0, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x3e4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, "ProtocolHelper"

    const-string p3, "NULL json object"

    .line 202
    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    invoke-static {p1, v0, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-object v1

    .line 207
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "ProtocolHelper"

    const-string p1, "Empty json name to get"

    .line 208
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 213
    :cond_1
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 214
    :cond_2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "ProtocolHelper"

    const-string v2, "get json object error"

    .line 216
    invoke-static {p3, v2, p2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8033
    invoke-static {p1, v0, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/a;)V
    .locals 7

    const-string v0, "ProtocolHelper"

    const-string v1, "action:parseMsgMessage"

    .line 74
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_0
    iget v0, p1, Lcn/jpush/android/data/a;->b:I

    .line 78
    iget-object v1, p1, Lcn/jpush/android/data/a;->a:Lorg/json/JSONObject;

    .line 79
    iget-object v2, p1, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x3e4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "ProtocolHelper"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown MSG protocol version. Give up - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    invoke-static {v2, v5, v4, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    const-string v3, "m_content"

    .line 83
    invoke-static {p0, v2, v1, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "ProtocolHelper"

    const-string p1, "The secondJsonObject is null!"

    .line 92
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v3, "ad_t"

    const/4 v6, -0x1

    .line 97
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 100
    new-instance v4, Lcn/jpush/android/data/g;

    invoke-direct {v4}, Lcn/jpush/android/data/g;-><init>()V

    .line 107
    iput-object v2, v4, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    .line 108
    iput v0, v4, Lcn/jpush/android/data/b;->b:I

    .line 109
    iput v3, v4, Lcn/jpush/android/data/b;->q:I

    .line 110
    iget-boolean v0, p1, Lcn/jpush/android/data/a;->i:Z

    iput-boolean v0, v4, Lcn/jpush/android/data/b;->i:Z

    .line 111
    iget-boolean v0, p1, Lcn/jpush/android/data/a;->f:Z

    iput-boolean v0, v4, Lcn/jpush/android/data/b;->f:Z

    .line 112
    iget v0, p1, Lcn/jpush/android/data/a;->g:I

    iput v0, v4, Lcn/jpush/android/data/b;->g:I

    .line 113
    iget-object v0, p1, Lcn/jpush/android/data/a;->o:Ljava/lang/String;

    iput-object v0, v4, Lcn/jpush/android/data/b;->o:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcn/jpush/android/data/a;->d:Ljava/lang/String;

    iput-object v0, v4, Lcn/jpush/android/data/b;->d:Ljava/lang/String;

    .line 115
    iget p1, p1, Lcn/jpush/android/data/a;->h:I

    iput p1, v4, Lcn/jpush/android/data/b;->h:I

    .line 117
    invoke-virtual {v4, p0, v1}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p1

    const-string v0, "ProtocolHelper"

    const-string v1, "Entity.parse the second json object over."

    .line 118
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {v4, p0}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;)V

    const-string p0, "ProtocolHelper"

    const-string p1, "ShowEntity.process over."

    .line 122
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "ProtocolHelper"

    const-string p1, "Push message parsing failed. Give up processing."

    .line 124
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "ProtocolHelper"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknow msg type ad_t = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-static {v2, v5, v4, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "ProtocolHelper"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:parseOriginalMsgMessage - originalJson:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ProtocolHelper"

    const-string p1, "Empty original json txt"

    .line 132
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "NO MSGID"

    .line 136
    invoke-static {p0, v0, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "msg_id"

    const-string v1, ""

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ad_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "show_type"

    const/4 v2, -0x1

    .line 142
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x3e4

    const/4 v5, 0x0

    if-ne v1, v3, :cond_6

    const-string v1, "m_content"

    const-string v2, ""

    .line 146
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ProtocolHelper"

    .line 3240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:loadMsgJsonFromUrl - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_4

    .line 3241
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NULL context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3242
    :cond_4
    new-instance v1, Lcn/jpush/android/a/g$1;

    invoke-direct {v1, p1, p0, v0}, Lcn/jpush/android/a/g$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v1}, Lcn/jpush/android/a/g$1;->start()V

    return-void

    :cond_5
    const-string v1, "ProtocolHelper"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get json from url becauseof invalid url - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    invoke-static {v0, v4, v5, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    const-string v3, "m_content"

    .line 157
    invoke-static {p0, v0, p1, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_7
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_8

    return-void

    :cond_8
    const-string v3, "ad_t"

    .line 163
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    const-string p1, "ProtocolHelper"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknow msg type - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5033
    invoke-static {v0, v4, v5, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void

    .line 166
    :cond_9
    new-instance v3, Lcn/jpush/android/data/g;

    invoke-direct {v3}, Lcn/jpush/android/data/g;-><init>()V

    .line 174
    invoke-virtual {v3, p0, p1}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p1

    const-string v4, "ProtocolHelper"

    const-string v5, "Parse end"

    .line 175
    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object v0, v3, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    .line 178
    iput v1, v3, Lcn/jpush/android/data/b;->b:I

    .line 179
    iput v2, v3, Lcn/jpush/android/data/b;->q:I

    if-eqz p1, :cond_a

    .line 182
    invoke-virtual {v3, p0}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;)V

    const-string p0, "ProtocolHelper"

    const-string p1, "Process end"

    .line 183
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p0, "ProtocolHelper"

    const-string p1, "Push message parsing failed. Give up processing."

    .line 185
    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^[http|https]+://.*"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "ProtocolHelper"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid url - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method
