.class public Lorg/telegram/ui/SecretPhotoViewer;
.super Ljava/lang/Object;
.source "SecretPhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretPhotoViewer;


# instance fields
.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private isVisible:Z

.field private parentActivity:Landroid/app/Activity;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SecretPhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretPhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretPhotoViewer;
    .locals 4

    .prologue
    .line 149
    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    .line 150
    .local v0, "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    if-nez v0, :cond_1

    .line 151
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 152
    :try_start_0
    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    .line 153
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/SecretPhotoViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 156
    .end local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 158
    :cond_1
    return-object v0

    .line 156
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    goto :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 361
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 364
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 366
    .local v1, "bitmapHeight":I
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float v5, v8, v9

    .line 367
    .local v5, "scaleX":F
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float v6, v8, v9

    .line 368
    .local v6, "scaleY":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_1

    move v4, v6

    .line 369
    .local v4, "scale":F
    :goto_0
    int-to-float v8, v2

    mul-float/2addr v8, v4

    float-to-int v7, v8

    .line 370
    .local v7, "width":I
    int-to-float v8, v1

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 372
    .local v3, "height":I
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x2

    neg-int v10, v3

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v9, v10, v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 373
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 375
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    .end local v3    # "height":I
    .end local v4    # "scale":F
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v7    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 376
    return-void

    .restart local v1    # "bitmapHeight":I
    .restart local v2    # "bitmapWidth":I
    .restart local v5    # "scaleX":F
    .restart local v6    # "scaleY":F
    :cond_1
    move v4, v5

    .line 368
    goto :goto_0
.end method


# virtual methods
.method public closePhoto()V
    .locals 4

    .prologue
    .line 314
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 315
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 322
    new-instance v2, Lorg/telegram/ui/SecretPhotoViewer$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretPhotoViewer$2;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 329
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 331
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroyPhotoViewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 340
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 341
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 342
    iput-object v4, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 343
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 349
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 351
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_1
    sput-object v4, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 164
    sget v8, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, v8, :cond_2

    .line 165
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v8, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v8, 0x1

    aget-object v8, p2, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    .local v1, "channelId":I
    if-nez v1, :cond_0

    .line 172
    aget-object v5, p2, v9

    check-cast v5, Ljava/util/ArrayList;

    .line 173
    .local v5, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V

    goto :goto_0

    .line 176
    .end local v1    # "channelId":I
    .end local v5    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, v8, :cond_0

    .line 177
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    if-eqz v8, :cond_0

    .line 180
    aget-object v7, p2, v9

    check-cast v7, Landroid/util/SparseArray;

    .line 181
    .local v7, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 182
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 183
    .local v4, "key":I
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 184
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 185
    .local v6, "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 186
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 187
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    goto :goto_0

    .line 181
    .end local v6    # "mid":Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;)V
    .locals 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 249
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 254
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 256
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    .line 257
    .local v12, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v4, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 258
    .local v4, "size":I
    if-nez v4, :cond_2

    .line 259
    const/4 v4, -0x1

    .line 261
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 262
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v8, :cond_4

    .line 263
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 264
    .local v10, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 265
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 266
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 267
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 269
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 271
    const/4 v0, 0x1

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 275
    :cond_3
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 279
    :goto_1
    if-eqz v7, :cond_4

    .line 280
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    .restart local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 284
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-eqz v8, :cond_6

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 295
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 297
    .local v13, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v13, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .end local v13    # "wm":Landroid/view/WindowManager;
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 304
    .restart local v13    # "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v13, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    goto/16 :goto_0

    .line 276
    .end local v13    # "wm":Landroid/view/WindowManager;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v9

    .line 277
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 287
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V

    goto :goto_2

    .line 299
    :catch_1
    move-exception v9

    .line 300
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v5, 0x41980000    # 19.0f

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v1, p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 201
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 209
    :cond_1
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/SecretPhotoViewer$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretPhotoViewer$1;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 232
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 233
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 234
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x63

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
