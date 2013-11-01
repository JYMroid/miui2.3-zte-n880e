.class public Lcom/android/internal/telephony/UiccConstants;
.super Ljava/lang/Object;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccConstants$PinState;,
        Lcom/android/internal/telephony/UiccConstants$PersoSubState;,
        Lcom/android/internal/telephony/UiccConstants$CardState;,
        Lcom/android/internal/telephony/UiccConstants$AppType;,
        Lcom/android/internal/telephony/UiccConstants$AppState;
    }
.end annotation


# static fields
.field static final RIL_CARD_MAX_APPS:I = 0x8

.field static final RIL_MAX_CARDS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
