.class public final Lcom/android/settings/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BatteryHistoryChart:[I = null

.field public static final BatteryHistoryChart_android_shadowColor:I = 0x5

.field public static final BatteryHistoryChart_android_shadowDx:I = 0x6

.field public static final BatteryHistoryChart_android_shadowDy:I = 0x7

.field public static final BatteryHistoryChart_android_shadowRadius:I = 0x8

.field public static final BatteryHistoryChart_android_textAppearance:I = 0x0

.field public static final BatteryHistoryChart_android_textColor:I = 0x4

.field public static final BatteryHistoryChart_android_textSize:I = 0x1

.field public static final BatteryHistoryChart_android_textStyle:I = 0x3

.field public static final BatteryHistoryChart_android_typeface:I = 0x2

.field public static final IconPreference:[I = null

.field public static final IconPreferenceScreen:[I = null

.field public static final IconPreferenceScreen_icon:I = 0x0

.field public static final IconPreferenceScreen_indicator:I = 0x2

.field public static final IconPreferenceScreen_preview:I = 0x1

.field public static final IconPreference_image:I

.field public static final WifiEncryptionState:[I

.field public static final WifiEncryptionState_state_encrypted:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6791
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    .line 6878
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->IconPreference:[I

    .line 6905
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    .line 6948
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->WifiEncryptionState:[I

    return-void

    .line 6791
    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
        0x96t 0x0t 0x1t 0x1t
        0x97t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x61t 0x1t 0x1t 0x1t
        0x62t 0x1t 0x1t 0x1t
        0x63t 0x1t 0x1t 0x1t
        0x64t 0x1t 0x1t 0x1t
    .end array-data

    .line 6905
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
