.class Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
.super Ljava/lang/Object;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BotButton"
.end annotation


# instance fields
.field private angle:I

.field private button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field private height:I

.field private lastUpdateTime:J

.field private progressAlpha:F

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private title:Landroid/text/StaticLayout;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "x1"    # Lorg/telegram/ui/Cells/ChatMessageCell$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->y:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->y:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->x:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->x:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->width:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->width:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->height:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->height:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return p1
.end method

.method static synthetic access$616(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return v0
.end method

.method static synthetic access$624(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->progressAlpha:F

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return p1
.end method

.method static synthetic access$716(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;F)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return v0
.end method

.method static synthetic access$720(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->angle:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;)Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->title:Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;
    .param p1, "x1"    # Landroid/text/StaticLayout;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$BotButton;->title:Landroid/text/StaticLayout;

    return-object p1
.end method
