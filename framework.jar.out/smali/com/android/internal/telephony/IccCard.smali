.class public interface abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$State;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_KEY_SLOTID:Ljava/lang/String; = "card_slot_id"

.field public static final INTENT_KEY_SUBSCRIPTION:Ljava/lang/String; = "phone_subscription"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_UNUSED:Ljava/lang/String; = "UNUSED"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "SIM NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"


# virtual methods
.method public abstract broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccCardState()Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract getIccFdnAvailable()Z
.end method

.method public abstract getIccFdnEnabled()Z
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public abstract getIccLockEnabled()Z
.end method

.method public abstract getIccPersoActivated()Z
.end method

.method public abstract getIccPin1RetryCount()I
.end method

.method public abstract getIccPin2Blocked()Z
.end method

.method public abstract getIccPin2RetryCount()I
.end method

.method public abstract getIccPuk1Blocked()Z
.end method

.method public abstract getIccPuk2Blocked()Z
.end method

.method public abstract getPinPukRetries()V
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/android/internal/telephony/IccCard$State;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkLocked(Landroid/os/Handler;)V
.end method
