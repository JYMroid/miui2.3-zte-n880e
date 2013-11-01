.class public interface abstract Lcom/android/internal/widget/CarrierUtils$CarrierFormat;
.super Ljava/lang/Object;
.source "CarrierUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/CarrierUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierFormat"
.end annotation


# virtual methods
.method public abstract formatCarrier(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
.end method

.method public abstract formatDefaultCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
.end method

.method public abstract getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
.end method

.method public abstract preFormatCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
.end method

.method public abstract verifyAirplaneMode(I)Ljava/lang/CharSequence;
.end method
