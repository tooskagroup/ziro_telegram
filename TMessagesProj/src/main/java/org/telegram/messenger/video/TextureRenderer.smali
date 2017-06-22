.class public Lorg/telegram/messenger/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final mTriangleVerticesData:[F


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private rotationAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    .line 67
    const/16 v0, -0x3039

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 72
    iput v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    .line 75
    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    .line 76
    sget-object v0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 79
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 180
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 181
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 189
    .local v2, "program":I
    const-string/jumbo v5, "glCreateProgram"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 190
    if-nez v2, :cond_3

    move v2, v4

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 194
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 195
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 196
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 197
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 198
    new-array v0, v6, [I

    .line 199
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 200
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 201
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 202
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 167
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 168
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 169
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 170
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 171
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 172
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 173
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 174
    const/4 v1, 0x0

    .line 176
    :cond_0
    return v1
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 158
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 159
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    .line 160
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "invert"    # Z

    .prologue
    const/16 v5, 0xd

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 86
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v2, v2, v6

    neg-float v2, v2

    aput v2, v0, v6

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v4, v4, v5

    sub-float/2addr v2, v4

    aput v2, v0, v5

    .line 94
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    const-string/jumbo v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 96
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 97
    const v0, 0x8d65

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 100
    const-string/jumbo v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    const-string/jumbo v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 105
    const-string/jumbo v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 107
    const-string/jumbo v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 109
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 110
    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 111
    const-string/jumbo v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 113
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const v4, 0x8d65

    .line 116
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    .line 117
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    .line 121
    const-string/jumbo v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    if-ne v0, v5, :cond_1

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    .line 126
    const-string/jumbo v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    if-ne v0, v5, :cond_2

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    .line 131
    const-string/jumbo v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    if-ne v0, v5, :cond_3

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    .line 136
    const-string/jumbo v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    if-ne v0, v5, :cond_4

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    new-array v6, v7, [I

    .line 141
    .local v6, "textures":[I
    invoke-static {v7, v6, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 142
    aget v0, v6, v1

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    .line 143
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 144
    const-string/jumbo v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 145
    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 146
    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 147
    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 148
    const/16 v0, 0x2803

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const-string/jumbo v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 152
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 155
    :cond_5
    return-void
.end method
