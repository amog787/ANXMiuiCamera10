.class Lcom/ss/android/vesdk/VEEditor$3;
.super Ljava/lang/Object;
.source "VEEditor.java"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenGLCreate(I)I
    .locals 3

    .line 306
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpenGLCreate: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttve/common/TELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VEEditor;->access$702(Lcom/ss/android/vesdk/VEEditor;Z)Z

    .line 308
    const/4 p1, 0x0

    return p1
.end method

.method public onOpenGLDestroy(I)I
    .locals 3

    .line 333
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpenGLDestroy: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttve/common/TELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VEEditor;->access$702(Lcom/ss/android/vesdk/VEEditor;Z)Z

    .line 335
    return v0
.end method

.method public onOpenGLDrawAfter(ID)I
    .locals 4

    .line 318
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpenGLDrawing: tex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " timeStamp = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttve/common/TELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$804(Lcom/ss/android/vesdk/VEEditor;)I

    .line 321
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x1e

    if-ne p1, p3, :cond_0

    .line 322
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/ss/android/vesdk/VEEditor;->access$902(Lcom/ss/android/vesdk/VEEditor;J)J

    .line 323
    const p1, 0x46ea6000    # 30000.0f

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v0

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$1000(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float p3, v0

    div-float/2addr p1, p3

    .line 324
    const-string p3, "VEEditor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render FPS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/ttve/common/TELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p3}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/ss/android/vesdk/VEEditor;->access$1002(Lcom/ss/android/vesdk/VEEditor;J)J

    .line 326
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$3;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->access$802(Lcom/ss/android/vesdk/VEEditor;I)I

    .line 328
    :cond_0
    return p2
.end method

.method public onOpenGLDrawBefore(ID)I
    .locals 0

    .line 313
    const/4 p1, 0x0

    return p1
.end method

.method public onPreviewSurface(I)I
    .locals 0

    .line 340
    const/4 p1, 0x0

    return p1
.end method
