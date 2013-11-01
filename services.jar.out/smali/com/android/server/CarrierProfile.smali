.class public Lcom/android/server/CarrierProfile;
.super Ljava/lang/Object;
.source "CarrierProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CarrierProfile$RatName;,
        Lcom/android/server/CarrierProfile$OpMode;,
        Lcom/android/server/CarrierProfile$RolePolicy;,
        Lcom/android/server/CarrierProfile$PolicyTable;
    }
.end annotation


# static fields
.field static final BATTERY_CONSTRAINT:Ljava/lang/String; = "batteryConstraint"

.field static final BATTERY_LEVEL:Ljava/lang/String; = "BatteryLevel"

.field static final CONDITIONS:Ljava/lang/String; = "conditions"

.field static final CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final DBG:Z = true

.field static final END_DATE:Ljava/lang/String; = "endDate"

.field static final END_TIME:Ljava/lang/String; = "endTime"

.field static final ID:Ljava/lang/String; = "id"

.field static final MAX_ON_RATS:Ljava/lang/String; = "MaxONRATs"

.field static final MONTH_DAY_CONDITION:Ljava/lang/String; = "MonthDayCondition"

.field static final MSS:Ljava/lang/String; = "MSS"

.field static final OPERATOR_POLICY:Ljava/lang/String; = "operatorPolicy"

.field static final OP_MODE:Ljava/lang/String; = "OpMode"

.field static final RAT:Ljava/lang/String; = "RAT"

.field static final RAT_BRING_DOWN_PREF:Ljava/lang/String; = "RATBringDownPref"

.field static final RAT_PREFERENCE:Ljava/lang/String; = "RATPreference"

.field static final RAT_PRI:Ljava/lang/String; = "Pri"

.field static final ROLE:Ljava/lang/String; = "role"

.field static final ROLES_LIST:Ljava/lang/String; = "rolesList"

.field static final ROLE_DESCRIPTION:Ljava/lang/String; = "roleDescription"

.field static final ROLE_ID:Ljava/lang/String; = "roleId"

.field static final ROLE_PRIORITY:Ljava/lang/String; = "rolePriority"

.field static final START_DATE:Ljava/lang/String; = "startDate"

.field static final START_TIME:Ljava/lang/String; = "startTime"

.field private static final TAG:Ljava/lang/String; = "CarrierProfile"

.field static final TIME_OF_DAY_CONDITION:Ljava/lang/String; = "TimeOfDayCondition"

.field static final USER_POLICY:Ljava/lang/String; = "userPolicy"


# instance fields
.field private mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/CarrierProfile$PolicyTable;

    invoke-direct {v0, p0}, Lcom/android/server/CarrierProfile$PolicyTable;-><init>(Lcom/android/server/CarrierProfile;)V

    iput-object v0, p0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    return-void
.end method

.method private networkStringToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "network"

    .prologue
    const-string v3, "CarrierProfile"

    const/4 v0, -0x1

    .local v0, networkInt:I
    if-nez p1, :cond_0

    const-string v1, "CarrierProfile"

    const-string v1, "networkStringToInt: null string"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "CarrierProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkStringToInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "WLAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "WWAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "CarrierProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a known network name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseConstraints(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "nConstraints"

    .prologue
    const/4 v7, 0x0

    const-string v5, "batteryConstraint"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, battConstraintsList:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .local v0, battConstraint:Lorg/w3c/dom/Element;
    const-string v5, "BatteryLevel"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .local v3, level:Ljava/lang/String;
    const-string v5, "MaxONRATs"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, maxOnRats:I
    iget-object v5, p0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    iget-object v5, v5, Lcom/android/server/CarrierProfile$PolicyTable;->batteryConstraints:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #battConstraint:Lorg/w3c/dom/Element;
    .end local v3           #level:Ljava/lang/String;
    .end local v4           #maxOnRats:I
    :cond_0
    return-void
.end method

.method private parseMss(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "nMss"

    .prologue
    const-string v4, "roleId"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .local v3, roleIdList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, nRoleId:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, roleId:I
    iget-object v4, p0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    iget-object v4, v4, Lcom/android/server/CarrierProfile$PolicyTable;->mss:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #nRoleId:Lorg/w3c/dom/Node;
    .end local v2           #roleId:I
    :cond_0
    return-void
.end method

.method private parseRatBringDownPref(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "nRatBringDownPref"

    .prologue
    const-string v4, "RAT"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .local v3, ratList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, nRat:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "Pri"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, priority:I
    iget-object v4, p0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    iget-object v4, v4, Lcom/android/server/CarrierProfile$PolicyTable;->ratBringDownPref:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #nRat:Lorg/w3c/dom/Node;
    .end local v2           #priority:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferredNetworks(I)Ljava/util/List;
    .locals 7
    .parameter "roleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    iget-object v5, v5, Lcom/android/server/CarrierProfile$PolicyTable;->rolePolicyList:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CarrierProfile$RolePolicy;

    .local v4, rolePolicy:Lcom/android/server/CarrierProfile$RolePolicy;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/android/server/CarrierProfile$RolePolicy;->opModes:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/CarrierProfile$OpMode;

    iget-object v5, v5, Lcom/android/server/CarrierProfile$OpMode;->ratPrefOrder:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, networkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/CarrierProfile;->networkStringToInt(Ljava/lang/String;)I

    move-result v1

    .local v1, networkInt:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #networkInt:I
    :cond_2
    move-object v5, v3

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 25
    .parameter "xmlStream"

    .prologue
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v21

    .local v21, root:Lorg/w3c/dom/Element;
    const-string v22, "role"

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .local v20, roles:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    new-instance v19, Lcom/android/server/CarrierProfile$RolePolicy;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/CarrierProfile$RolePolicy;-><init>(Lcom/android/server/CarrierProfile;)V

    .local v19, rolePolicy:Lcom/android/server/CarrierProfile$RolePolicy;
    move-object/from16 v0, v20

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .local v14, nRole:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v22

    const-string v23, "id"

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/CarrierProfile$RolePolicy;->id:I

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .local v5, children:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .local v4, child:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .local v15, name:Ljava/lang/String;
    const-string v22, "rolePriority"

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/CarrierProfile$RolePolicy;->priority:I

    .end local v4           #child:Lorg/w3c/dom/Node;
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .restart local v4       #child:Lorg/w3c/dom/Node;
    :cond_1
    const-string v22, "OpMode"

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    check-cast v4, Lorg/w3c/dom/Element;

    .end local v4           #child:Lorg/w3c/dom/Node;
    const-string v22, "RATPreference"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .local v13, nRatPreference:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .local v18, ratList:Lorg/w3c/dom/NodeList;
    new-instance v16, Lcom/android/server/CarrierProfile$OpMode;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/CarrierProfile$OpMode;-><init>(Lcom/android/server/CarrierProfile;)V

    .local v16, opMode:Lcom/android/server/CarrierProfile$OpMode;
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move v0, v11

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v18

    move v1, v11

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "RAT"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v18

    move v1, v11

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .local v12, nRat:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v22

    const-string v23, "Pri"

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, priority:I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/CarrierProfile$OpMode;->ratPrefOrder:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v12           #nRat:Lorg/w3c/dom/Node;
    .end local v17           #priority:I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/CarrierProfile$RolePolicy;->opModes:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #children:Lorg/w3c/dom/NodeList;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v13           #nRatPreference:Lorg/w3c/dom/Node;
    .end local v14           #nRole:Lorg/w3c/dom/Node;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #opMode:Lcom/android/server/CarrierProfile$OpMode;
    .end local v18           #ratList:Lorg/w3c/dom/NodeList;
    .end local v19           #rolePolicy:Lcom/android/server/CarrierProfile$RolePolicy;
    .end local v20           #roles:Lorg/w3c/dom/NodeList;
    .end local v21           #root:Lorg/w3c/dom/Element;
    .end local p1
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v22, 0x0

    .end local v7           #e:Ljava/lang/Exception;
    :goto_4
    return v22

    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #children:Lorg/w3c/dom/NodeList;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v14       #nRole:Lorg/w3c/dom/Node;
    .restart local v19       #rolePolicy:Lcom/android/server/CarrierProfile$RolePolicy;
    .restart local v20       #roles:Lorg/w3c/dom/NodeList;
    .restart local v21       #root:Lorg/w3c/dom/Element;
    .restart local p1
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/CarrierProfile$PolicyTable;->rolePolicyList:Ljava/util/Map;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/CarrierProfile$RolePolicy;->id:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .end local v5           #children:Lorg/w3c/dom/NodeList;
    .end local v10           #j:I
    .end local v14           #nRole:Lorg/w3c/dom/Node;
    .end local v19           #rolePolicy:Lcom/android/server/CarrierProfile$RolePolicy;
    :cond_5
    const-string v22, "constraints"

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/CarrierProfile;->parseConstraints(Lorg/w3c/dom/Element;)V

    const-string v22, "MSS"

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/CarrierProfile;->parseMss(Lorg/w3c/dom/Element;)V

    const-string v22, "RATBringDownPref"

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/CarrierProfile;->parseRatBringDownPref(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v22, "CarrierProfile"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CarrierProfile parsed results:\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CarrierProfile;->mPolicyTable:Lcom/android/server/CarrierProfile$PolicyTable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto :goto_4
.end method
