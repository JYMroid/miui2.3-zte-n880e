.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "InCallControlState"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canSwap:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public recordEnabled:Z

.field public recordIndicatorOn:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "InCallControlState constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 93
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 94
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 228
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public update()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 101
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 102
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 103
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_4

    move v4, v13

    .line 104
    .local v4, hasActiveForegroundCall:Z
    :goto_0
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 107
    .local v5, hasHoldingCall:Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 111
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 112
    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v10

    if-nez v10, :cond_5

    move v10, v13

    :goto_1
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 121
    :goto_2
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 124
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 125
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 128
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 129
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 130
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 136
    :goto_3
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->recordEnabled:Z

    .line 137
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getRecordstate()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->recordIndicatorOn:Z

    .line 143
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v11, :cond_8

    move v10, v13

    :goto_4
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 145
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 151
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 152
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 153
    .local v7, isEmergencyCall:Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    .line 154
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 155
    .local v6, isECM:Z
    if-nez v7, :cond_1

    if-eqz v6, :cond_9

    .line 156
    :cond_1
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 157
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 165
    :goto_5
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 169
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 172
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 174
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 178
    if-eqz v5, :cond_a

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_a

    move v10, v13

    :goto_6
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 181
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    move v8, v13

    .line 182
    .local v8, okToHold:Z
    :goto_7
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 183
    .local v9, okToUnhold:Z
    if-nez v8, :cond_2

    if-eqz v9, :cond_c

    :cond_2
    move v10, v13

    :goto_8
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 205
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_3
    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 206
    return-void

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #hasActiveForegroundCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_4
    move v4, v12

    .line 103
    goto/16 :goto_0

    .restart local v4       #hasActiveForegroundCall:Z
    .restart local v5       #hasHoldingCall:Z
    :cond_5
    move v10, v12

    .line 112
    goto/16 :goto_1

    .line 116
    :cond_6
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 117
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_2

    .line 132
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 133
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_3

    :cond_8
    move v10, v12

    .line 143
    goto :goto_4

    .line 159
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_9
    iput-boolean v4, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_5

    :cond_a
    move v10, v12

    .line 178
    goto :goto_6

    :cond_b
    move v8, v12

    .line 181
    goto :goto_7

    .restart local v8       #okToHold:Z
    .restart local v9       #okToUnhold:Z
    :cond_c
    move v10, v12

    .line 183
    goto :goto_8

    .line 184
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 191
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 192
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v10, :cond_e

    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_e

    .line 194
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 195
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_9

    .line 198
    :cond_e
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 199
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 200
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_9
.end method
