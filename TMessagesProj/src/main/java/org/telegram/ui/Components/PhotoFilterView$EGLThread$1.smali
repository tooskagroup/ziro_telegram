.class Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->initied:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1838
    :goto_0
    return-void

    .line 1810
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v5

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v5

    const/16 v6, 0x3059

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1811
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2600(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v6}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v8}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v8

    invoke-interface {v0, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1812
    const-string/jumbo v0, "tmessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1817
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v5

    invoke-static {v3, v3, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1818
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawEnhancePass()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawSharpenPass()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3000(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V

    .line 1820
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawCustomParamsPass()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3100(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawBlurPass()Z
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z

    move-result v5

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blured:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3202(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Z)Z

    .line 1824
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceWidth:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceHeight:I
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v5

    invoke-static {v3, v3, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1825
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1826
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3600(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1829
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1830
    const/16 v5, 0xde1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)[I

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blured:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    aget v0, v6, v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleSourceImageHandle:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleInputTexCoordHandle:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleInputTexCoordHandle:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4000(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simplePositionHandle:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4100(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1835
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simplePositionHandle:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4100(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1836
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2600(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$2500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto/16 :goto_0

    .line 1830
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
