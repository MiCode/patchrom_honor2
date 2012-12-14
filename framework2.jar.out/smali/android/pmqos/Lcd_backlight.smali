.class public Landroid/pmqos/Lcd_backlight;
.super Landroid/pmqos/Pmqos;
.source "Lcd_backlight.java"


# instance fields
.field private fd:I

.field private org_value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 8
    const-string v0, "/sys/class/leds/lcd_backlight0/brightness"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open_path(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    .line 9
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    iget v1, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 19
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 20
    return-void
.end method

.method public pm_qos_read()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    move-result v0

    return v0
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 14
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Lcd_backlight;->org_value:I

    .line 15
    iget v0, p0, Landroid/pmqos/Lcd_backlight;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write_dec(II)I

    .line 16
    return-void
.end method
