.class public final Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
.super Ljava/io/IOException;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/upstream/AssetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
