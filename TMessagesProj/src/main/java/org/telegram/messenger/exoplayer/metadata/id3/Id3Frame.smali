.class public abstract Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source "Id3Frame.java"


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 30
    return-void
.end method
