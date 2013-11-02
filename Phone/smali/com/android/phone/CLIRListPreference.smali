.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CLIRListPreference"


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 23
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 31
    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 7
    .parameter "tmpClirArray"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 65
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 66
    aget v3, p1, v5

    if-eq v3, v5, :cond_0

    aget v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    aget v3, p1, v5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v5

    .line 67
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, value:I
    aget v3, p1, v5

    packed-switch v3, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v2, 0x0

    .line 94
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    .line 97
    const v1, 0x7f0c00a9

    .line 98
    .local v1, summary:I
    packed-switch v2, :pswitch_data_1

    .line 109
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    .line 110
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_1
    move v0, v6

    .line 66
    goto :goto_0

    .line 75
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_1
    aget v3, p1, v6

    packed-switch v3, :pswitch_data_2

    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_1

    .line 77
    :pswitch_2
    const/4 v2, 0x1

    .line 78
    goto :goto_1

    .line 80
    :pswitch_3
    const/4 v2, 0x2

    .line 81
    goto :goto_1

    .line 100
    .restart local v1       #summary:I
    :pswitch_4
    const v1, 0x7f0c00a8

    .line 101
    goto :goto_2

    .line 103
    :pswitch_5
    const v1, 0x7f0c00a7

    .line 104
    goto :goto_2

    .line 106
    :pswitch_6
    const v1, 0x7f0c00a9

    goto :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 75
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 4
    .parameter "listener"
    .parameter "skipReading"
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v0, "CLIRListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLIRListPreference init, subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 43
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 46
    :cond_0
    return-void
.end method
