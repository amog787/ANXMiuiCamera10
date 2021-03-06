.class public Lcom/ss/android/ttve/monitor/MonitorUtils;
.super Ljava/lang/Object;
.source "MonitorUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final MONITOR_AID:Ljava/lang/String; = "1357"

.field public static final MONITOR_SERVICE_NAME:Ljava/lang/String; = "sdk_video_edit_compose"

.field private static final TAG:Ljava/lang/String; = "MonitorUtils"

.field private static sEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateHeaderInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_0
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string p1, "app_version"

    const-string v1, "medialib_oem:2.9.0.14_20181125235018_2fdc4b2b5"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string p1, "channel"

    const-string v1, "release"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string p1, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string p0, "user_id"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string p0, "version_code"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception p0

    .line 254
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    :goto_0
    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "app_version"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "device_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 112
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    const-string p0, "MonitorUtils"

    const-string v0, "getHeaderInfo: Monitor not enabled just return."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v1

    .line 116
    :cond_0
    const-string v0, "1357"

    invoke-static {v0}, Lbytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lbytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    const-string p0, "MonitorUtils"

    const-string v0, "SDKMonitor is not inited, setDeviceId failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v1

    .line 122
    :cond_1
    invoke-virtual {v0}, Lbytedance/framwork/core/sdkmonitor/SDKMonitor;->reportJsonHeaderInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 125
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v2, "MonitorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHeaderInfo failed! key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_2
    return-object v1
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_0

    .line 53
    const-string p0, "MonitorUtils"

    const-string p1, "init: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 56
    :cond_0
    const-string v0, "1357"

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->generateHeaderInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/ss/android/ttve/monitor/MonitorUtils$1;

    invoke-direct {p2}, Lcom/ss/android/ttve/monitor/MonitorUtils$1;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lbytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->init(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lbytedance/framwork/core/sdkmonitor/SDKMonitor$IGetCommonParams;)V

    .line 63
    return-void
.end method

.method public static monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 6

    .line 168
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_0

    .line 169
    const-string p0, "MonitorUtils"

    const-string p1, "monitorStatusRate: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_0
    if-nez p2, :cond_1

    .line 173
    const-string p0, "MonitorUtils"

    const-string p1, "monitorStatusRate: empty log data!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 176
    :cond_1
    const-string v0, "device_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "device_id"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "MonitorUtils"

    const-string v1, "Device id is empty, please set device id with 1. TEMonitor.setDeviceId(deviceid) before using SDK. \n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "user_id"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "MonitorUtils"

    const-string v1, "User id is empty, please set user id with TEMonitor.setUserId(userid) before using SDK\n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    const-string v0, "app_version"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const-string v0, "app_version"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "MonitorUtils"

    const-string v1, "App version is empty, please set app version with TEMonitor.setAppVersion(version) before using SDK\n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/ss/android/vesdk/runtime/cloudconfig/DeviceInfoDetector;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    sget-object v3, Lcom/ss/android/vesdk/runtime/cloudconfig/DeviceInfoDetector;->sNumberKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_6

    .line 210
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "te_device_info_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    float-to-double v4, v2

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_1
    goto :goto_2

    .line 212
    :catch_0
    move-exception v2

    .line 213
    :try_start_2
    const-string v2, "MonitorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device info value is error key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "te_device_info_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    :cond_6
    :goto_2
    goto :goto_0

    .line 223
    :cond_7
    goto :goto_3

    .line 221
    :catch_1
    move-exception v0

    .line 222
    const-string v1, "MonitorUtils"

    const-string v2, "monitorStatusRate: json exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :goto_3
    const-string v0, "1357"

    invoke-static {v0}, Lbytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lbytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lbytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 225
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 86
    const-string v0, "app_version"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 78
    const-string v0, "device_id"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 264
    sput-boolean p0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    .line 265
    return-void
.end method

.method private static setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 140
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_0

    .line 141
    const-string p0, "MonitorUtils"

    const-string p1, "setHeaderInfo: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_0
    const-string v0, "1357"

    invoke-static {v0}, Lbytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lbytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    const-string p0, "MonitorUtils"

    const-string p1, "SDKMonitor is not inited, setDeviceId failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_1
    invoke-virtual {v0}, Lbytedance/framwork/core/sdkmonitor/SDKMonitor;->reportJsonHeaderInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    .line 152
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception p1

    .line 154
    const-string v0, "MonitorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaderInfo failed! key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :cond_2
    :goto_0
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 70
    const-string v0, "user_id"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
