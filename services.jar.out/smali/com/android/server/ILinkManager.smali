.class interface abstract Lcom/android/server/ILinkManager;
.super Ljava/lang/Object;
.source "ILinkManager.java"


# static fields
.field public static final UseCne:Ljava/lang/String; = "persist.cne.UseCne"


# virtual methods
.method public abstract getAvailableForwardBandwidth(I)I
.end method

.method public abstract getAvailableReverseBandwidth(I)I
.end method

.method public abstract getCurrentLatency(I)I
.end method

.method public abstract getFmcStatus(Landroid/os/IBinder;)Z
.end method

.method public abstract getLink_LP(ILjava/util/Map;ILandroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract rejectSwitch_LP(IILandroid/net/LinkInfo;Z)Z
.end method

.method public abstract releaseLink(I)V
.end method

.method public abstract releaseLink_LP(II)Z
.end method

.method public abstract reportLinkSatisfaction_LP(IILandroid/net/LinkInfo;ZZ)Z
.end method

.method public abstract requestLink(Landroid/net/LinkCapabilities;Landroid/os/IBinder;)I
.end method

.method public abstract sendDefaultNwPref2Cne(I)V
.end method

.method public abstract setDefaultConnectionNwPref(I)V
.end method

.method public abstract startFmc(Landroid/os/IBinder;)Z
.end method

.method public abstract stopFmc(Landroid/os/IBinder;)Z
.end method

.method public abstract switchLink_LP(IILandroid/net/LinkInfo;Z)Z
.end method
