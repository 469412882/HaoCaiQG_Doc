.class public Lcn/jpush/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jiguang/api/JAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;JILjava/lang/Object;Ljava/nio/ByteBuffer;)J
    .locals 5

    const-string v0, "JPushDataAction"

    const-string v1, "Action - dispatchMessage"

    .line 41
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "JPushDataAction"

    const-string p2, "Action - onEvent , JPush init failed"

    .line 43
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    const/16 v0, 0xa

    const/4 v3, 0x3

    if-eq p4, v3, :cond_2

    if-eq p4, v0, :cond_1

    packed-switch p4, :pswitch_data_0

    const-string p4, "ContentValues"

    const-string p5, "Unknown command for parsing inbound."

    .line 1084
    invoke-static {p4, p5}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x0

    goto :goto_0

    .line 1081
    :pswitch_0
    new-instance p4, Lcn/jpush/a/a;

    invoke-direct {p4, p5, p6}, Lcn/jpush/a/a;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1074
    :cond_1
    :pswitch_1
    new-instance p4, Lcn/jpush/a/d;

    invoke-direct {p4, p5, p6}, Lcn/jpush/a/d;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1077
    :cond_2
    new-instance p4, Lcn/jpush/a/b;

    invoke-direct {p4, p5, p6}, Lcn/jpush/a/b;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 47
    :goto_0
    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "JPushDataAction"

    const-string p6, "JPush was stoped"

    .line 48
    invoke-static {p5, p6}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 49
    instance-of p5, p4, Lcn/jpush/a/b;

    if-eqz p5, :cond_3

    move-object p5, p4

    check-cast p5, Lcn/jpush/a/b;

    .line 51
    invoke-virtual {p5}, Lcn/jpush/a/b;->a()I

    move-result p5

    const/16 p6, 0x14

    if-eq p5, p6, :cond_3

    return-wide v1

    :cond_3
    if-eqz p4, :cond_8

    const-string p5, "JPushDataAction"

    .line 56
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v4, "response:"

    invoke-direct {p6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result p5

    if-eq p5, v3, :cond_7

    if-eq p5, v0, :cond_6

    packed-switch p5, :pswitch_data_1

    const-string p1, "JPushDataAction"

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unhandled response command - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :pswitch_2
    move-object p2, p4

    check-cast p2, Lcn/jpush/a/d;

    invoke-virtual {p2}, Lcn/jpush/a/d;->a()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result p3

    const/16 p5, 0x1c

    if-ne p3, p5, :cond_4

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x2

    :goto_1
    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 74
    invoke-static {p1, p2, p3, p4, p5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;IJ)J

    move-result-wide p1

    return-wide p1

    .line 66
    :pswitch_3
    iget p2, p4, Lcn/jiguang/api/JResponse;->code:I

    if-nez p2, :cond_5

    .line 67
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object p2

    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {p2, p1, p5, p6}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;J)V

    goto :goto_2

    .line 69
    :cond_5
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object p2

    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    iget p3, p4, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {p2, p1, p5, p6, p3}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;JI)V

    goto :goto_2

    .line 77
    :pswitch_4
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    move-result-object p2

    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    iget p3, p4, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {p2, p1, p5, p6, p3}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;JI)V

    goto :goto_2

    :cond_6
    const-string p1, "JPushDataAction"

    const-string p2, "Should not exist - ignore tag alias response."

    .line 63
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_7
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {p1, p2, p3, p4}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;JLcn/jiguang/api/JResponse;)J

    move-result-wide p1

    return-wide p1

    :cond_8
    :goto_2
    if-eqz p4, :cond_9

    .line 84
    invoke-virtual {p4}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_9
    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTimeOutMessage(Landroid/content/Context;JJI)V
    .locals 0

    const-string p2, "JPushDataAction"

    const-string p3, "dispatchTimeOutMessage"

    .line 169
    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "JPushDataAction"

    const-string p2, "Action - dispatchTimeOutMessage , jpush init failed"

    .line 171
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0xa

    if-eq p6, p2, :cond_1

    packed-switch p6, :pswitch_data_0

    const-string p1, "JPushDataAction"

    const-string p2, "unhandle command"

    .line 187
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :pswitch_0
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object p2

    invoke-virtual {p2, p1, p4, p5}, Lcn/jpush/android/c/f;->b(Landroid/content/Context;J)V

    return-void

    .line 184
    :pswitch_1
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    move-result-object p2

    sget p3, Lcn/jpush/android/api/JPushInterface$a;->c:I

    invoke-virtual {p2, p1, p4, p5, p3}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;JI)V

    return-void

    .line 178
    :cond_1
    :pswitch_2
    invoke-static {p1}, Lcn/jpush/android/a/e;->a(Landroid/content/Context;)Lcn/jpush/android/a/e;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcn/jpush/android/a/e;->a(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getBinderByType(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.1"

    return-object v0
.end method

.method public handleMessage(Landroid/content/Context;JLjava/lang/Object;)V
    .locals 2

    .line 142
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "JPushDataAction"

    const-string p2, "Action - handleMessage , jpush init failed"

    .line 143
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p4, :cond_14

    .line 147
    instance-of p2, p4, Landroid/os/Bundle;

    if-eqz p2, :cond_2

    .line 148
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    check-cast p4, Landroid/os/Bundle;

    if-nez p4, :cond_1

    const-string p1, "PushServiceCore"

    const-string p2, "Action - handleMessage unexcepted, bundle was null"

    .line 1199
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "PushServiceCore"

    .line 1202
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "handleMessage:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "what"

    .line 1203
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string p1, "PushServiceCore"

    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected: unhandled msg - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_2
    instance-of p2, p4, Landroid/content/Intent;

    if-eqz p2, :cond_13

    .line 150
    invoke-static {}, Lcn/jpush/android/service/b;->a()Lcn/jpush/android/service/b;

    check-cast p4, Landroid/content/Intent;

    if-nez p4, :cond_3

    const-string p1, "PushReceiverCore"

    const-string p2, "Received null intent broadcast. Give up processing."

    .line 2039
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2045
    :cond_3
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PushReceiverCore"

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2052
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_14

    if-nez p2, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string p3, "cn.jpush.android.intent.plugin.platform.REFRESSH_REGID"

    .line 2055
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2056
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/jpush/android/c/g;->e(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_5
    const-string p3, "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

    .line 2058
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 2060
    :try_start_1
    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "PushReceiverCore"

    const-string p2, "push has stoped"

    .line 2061
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string p2, "notificaion_type"

    .line 2065
    invoke-virtual {p4, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "PushReceiverCore"

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_NOTIFICATION_RECEIVED_PROXY   notification_type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "message"

    .line 2067
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2068
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p1, "PushReceiverCore"

    const-string p2, "Got an empty notification, don\'t show it!"

    .line 2069
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string p3, "senderId"

    .line 2072
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "appId"

    .line 2073
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_id"

    .line 2074
    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2075
    invoke-static {p1, p2, v0, p3, p4}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p1, "PushReceiverCore"

    const-string p2, "Transform notification content to BasicEntity failed!"

    .line 2079
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/4 p3, 0x1

    .line 2082
    iput-boolean p3, p2, Lcn/jpush/android/data/a;->i:Z

    .line 2083
    invoke-static {p1, p2}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 2085
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    const-string p3, "android.intent.action.PACKAGE_ADDED"

    .line 2088
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2091
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    const-string p1, "networkInfo"

    .line 2092
    invoke-virtual {p4, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-nez p1, :cond_a

    const-string p1, "PushReceiverCore"

    const-string p2, "Not found networkInfo"

    .line 2094
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string p2, "PushReceiverCore"

    .line 2098
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Connection state changed to - "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 2099
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    if-eq p2, p3, :cond_f

    const/4 p2, 0x3

    .line 2100
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    if-ne p2, p3, :cond_b

    goto :goto_0

    :cond_b
    const-string p2, "noConnectivity"

    .line 2104
    invoke-virtual {p4, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p1, "PushReceiverCore"

    const-string p2, "No any network is connected"

    .line 2108
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2110
    :cond_c
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p3

    if-ne p2, p3, :cond_d

    const-string p1, "PushReceiverCore"

    const-string p2, "Network is connected."

    .line 2111
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2112
    :cond_d
    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p3

    if-ne p2, p3, :cond_e

    const-string p1, "PushReceiverCore"

    const-string p2, "Network is disconnected."

    .line 2113
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string p2, "PushReceiverCore"

    .line 2115
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "other network state - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Do nothing."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    :goto_0
    const-string p1, "PushReceiverCore"

    const-string p2, "MMS or SUPL network state change, to do nothing!"

    .line 2101
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string p3, "cn.jpush.android.intent.NOTIFICATION_OPENED_PROXY"

    .line 2118
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 2119
    invoke-static {p1, p4}, Lcn/jpush/android/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_11
    const-string p3, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION_PROXY"

    .line 2120
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    const-string p2, "PushReceiverCore"

    .line 2121
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Click notification action with extra: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2121
    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    :try_start_2
    new-instance p2, Landroid/content/Intent;

    const-string p3, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".permission.JPUSH_MESSAGE"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "PushReceiverCore"

    .line 2131
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Click notification sendBroadcast :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_1
    return-void

    :catch_2
    const-string p1, "PushReceiverCore"

    const-string p2, "Received no action intent broadcast. Give up processing."

    .line 2048
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    const-string p1, "JPushDataAction"

    const-string p2, "handleMessage unknown object "

    .line 152
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_2
    return-void
.end method

.method public isSupportedCMD(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onActionRun(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "JPushDataAction"

    const-string p3, "Action - onActionRun"

    .line 98
    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "JPushDataAction"

    const-string p2, "Action - onActionRun , JPush init failed"

    .line 100
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    move-result-object p1

    check-cast p5, Landroid/os/Handler;

    invoke-virtual {p1, p4, p5}, Lcn/jpush/android/service/c;->a(Landroid/os/Bundle;Landroid/os/Handler;)V

    return-void
.end method

.method public onEvent(Landroid/content/Context;JI)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "JPushDataAction"

    const-string p2, "Action - onEvent , jpush init failed"

    .line 124
    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x13

    if-eq p4, p2, :cond_1

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/jpush/android/c/g;->d(Landroid/content/Context;)V

    return-void

    :pswitch_1
    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jpush/android/service/c;->a()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
