.class Lcom/android/phone/SetSubscription$3;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "SetSubscription"

    .line 256
    move-object v0, p1

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    move-object v2, v0

    .line 257
    .local v2, subPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getSelectedSubscription()Lcom/android/phone/SubscriptionID;

    move-result-object v1

    .line 259
    .local v1, checked:Lcom/android/phone/SubscriptionID;
    const-string v3, "SetSubscription"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick: KEY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v3, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne v1, v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v6

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: clearing previously selected SUB0"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v2, v3, v6

    .line 273
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v5

    if-ne v2, v3, :cond_1

    .line 274
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB1->SUB0 sets subArray[1] = null"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v8, v3, v5

    .line 302
    :cond_1
    :goto_0
    return v5

    .line 277
    :cond_2
    sget-object v3, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne v1, v3, :cond_4

    .line 279
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v5

    if-eqz v3, :cond_3

    .line 280
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: clearing previously selected SUB1"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 283
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v2, v3, v5

    .line 287
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v6

    if-ne v2, v3, :cond_1

    .line 288
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB0->SUB1 sets subArray[0] = null"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v8, v3, v6

    goto :goto_0

    .line 293
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v6

    if-ne v2, v3, :cond_5

    .line 294
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB0->NONE sets subArray[0] = null"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v8, v3, v6

    .line 297
    :cond_5
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v3, v3, v5

    if-ne v2, v3, :cond_1

    .line 298
    const-string v3, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB1->NONE sets subArray[1] = null"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v3, v3, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v8, v3, v5

    goto :goto_0
.end method
