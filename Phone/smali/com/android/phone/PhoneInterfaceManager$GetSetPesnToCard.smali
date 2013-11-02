.class Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetSetPesnToCard"
.end annotation


# static fields
.field private static final GET_PESN_COMPLETE:I = 0x65

.field private static final SET_PESN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIfh:Lcom/android/internal/telephony/IccFileHandler;

.field private mPesn:Ljava/lang/String;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 978
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 967
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z

    .line 968
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mResult:Z

    .line 969
    const-string v0, "no pesn"

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;

    .line 979
    invoke-interface {p1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mIfh:Lcom/android/internal/telephony/IccFileHandler;

    .line 980
    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 963
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 963
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mResult:Z

    return p1
.end method


# virtual methods
.method declared-synchronized getPesnFromRuim()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "PhoneInterfaceManager"

    .line 1082
    monitor-enter p0

    :try_start_0
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "getPesnFromRuim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1085
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1082
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1090
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1091
    .local v0, callback:Landroid/os/Message;
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "loadEFTransparent begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mIfh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f38

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1093
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "loadEFTransparent end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 1096
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1098
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1100
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1103
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 985
    monitor-enter p0

    .line 986
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mHandler:Landroid/os/Handler;

    .line 1050
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1051
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1053
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setPesnToRuim([B)Z
    .locals 4
    .parameter "pesn"

    .prologue
    const-string v2, "PhoneInterfaceManager"

    .line 1056
    monitor-enter p0

    :try_start_0
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "setPesnToRuim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1059
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1056
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1064
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1065
    .local v0, callback:Landroid/os/Message;
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "updateEFTransparent begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mIfh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f38

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1067
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "updateEFTransparent end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 1070
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1072
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1074
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1077
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method
