.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$3;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$CommitSelectionReceiver;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MONOSPACE:I = 0x3

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static PRIORITY:I = 0x0

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x4000

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field isNotShowInput:Z

.field isShowCursorColor:Z

.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTriggeredByKey:Z

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCursorVisible:Z

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEatTouchRelease:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

.field private mIsInTextSelectionMode:Z

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNoContextMenuOnUp:Z

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPreDrawState:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectAllOnFocus:Z

.field mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 214
    const/16 v1, 0x64

    sput v1, Landroid/widget/TextView;->PRIORITY:I

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 332
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5508
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8754
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 8788
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 8804
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 8806
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 363
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 54
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 370
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isShowCursorColor:Z

    .line 216
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 229
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 230
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 232
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 233
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 240
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 242
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 275
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 277
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 278
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 283
    const/16 v51, 0x3

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 322
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 324
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 8715
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 8717
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 8727
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8733
    const v51, -0x33b8a6db

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 8738
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 8746
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8749
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 8750
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 8751
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 8756
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 8758
    const/16 v51, 0x33

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 8762
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 8764
    const/high16 v51, 0x3f80

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 8765
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 8771
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 8772
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 8773
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 8774
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 8776
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 8777
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 8778
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 8779
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 8782
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 8783
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 8787
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8797
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 8805
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 371
    const-string v51, ""

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 373
    new-instance v51, Landroid/text/TextPaint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 382
    new-instance v51, Landroid/graphics/Paint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 387
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 389
    sget-object v51, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 393
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v46, 0x0

    .line 394
    .local v46, textColorHighlight:I
    const/16 v45, 0x0

    .line 395
    .local v45, textColor:Landroid/content/res/ColorStateList;
    const/16 v47, 0x0

    .line 396
    .local v47, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v48, 0x0

    .line 397
    .local v48, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v49, 0xf

    .line 398
    .local v49, textSize:I
    const/16 v50, -0x1

    .line 399
    .local v50, typefaceIndex:I
    const/16 v43, -0x1

    .line 407
    .local v43, styleIndex:I
    const/4 v7, 0x0

    .line 408
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v51, 0x1

    const/16 v52, -0x1

    move-object v0, v5

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 409
    .local v6, ap:I
    const/16 v51, -0x1

    move v0, v6

    move/from16 v1, v51

    if-eq v0, v1, :cond_0

    .line 410
    sget-object v51, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 414
    :cond_0
    if-eqz v7, :cond_2

    .line 415
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 416
    .local v35, n:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 417
    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 419
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 416
    :goto_1
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 421
    :pswitch_0
    move-object v0, v7

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 422
    goto :goto_1

    .line 425
    :pswitch_1
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 426
    goto :goto_1

    .line 429
    :pswitch_2
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 430
    goto :goto_1

    .line 433
    :pswitch_3
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 434
    goto :goto_1

    .line 437
    :pswitch_4
    move-object v0, v7

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 438
    goto :goto_1

    .line 441
    :pswitch_5
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 442
    goto :goto_1

    .line 445
    :pswitch_6
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    goto :goto_1

    .line 450
    .end local v8           #attr:I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    .end local v30           #i:I
    .end local v35           #n:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    .line 454
    .local v25, editable:Z
    const/16 v31, 0x0

    .line 455
    .local v31, inputMethod:Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 456
    .local v36, numeric:I
    const/16 v16, 0x0

    .line 457
    .local v16, digits:Ljava/lang/CharSequence;
    const/16 v38, 0x0

    .line 458
    .local v38, phone:Z
    const/4 v10, 0x0

    .line 459
    .local v10, autotext:Z
    const/4 v9, -0x1

    .line 460
    .local v9, autocap:I
    const/4 v12, 0x0

    .line 461
    .local v12, buffertype:I
    const/16 v40, 0x0

    .line 462
    .local v40, selectallonfocus:Z
    const/16 v18, 0x0

    .local v18, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .local v21, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 463
    .local v20, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 464
    .local v17, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 465
    .local v19, drawablePadding:I
    const/16 v26, -0x1

    .line 466
    .local v26, ellipsize:I
    const/16 v42, 0x0

    .line 467
    .local v42, singleLine:Z
    const/16 v34, -0x1

    .line 468
    .local v34, maxlength:I
    const-string v44, ""

    .line 469
    .local v44, text:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 470
    .local v29, hint:Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .line 471
    .local v41, shadowcolor:I
    const/16 v22, 0x0

    .local v22, dx:F
    const/16 v23, 0x0

    .local v23, dy:F
    const/16 v39, 0x0

    .line 472
    .local v39, r:F
    const/16 v37, 0x0

    .line 473
    .local v37, password:Z
    const/16 v32, 0x0

    .line 475
    .local v32, inputType:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 476
    .restart local v35       #n:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 477
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 479
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 476
    :cond_3
    :goto_3
    :pswitch_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 481
    :pswitch_8
    move-object v0, v5

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 482
    goto :goto_3

    .line 485
    :pswitch_9
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 486
    goto :goto_3

    .line 489
    :pswitch_a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 490
    goto :goto_3

    .line 493
    :pswitch_b
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 494
    goto :goto_3

    .line 497
    :pswitch_c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 498
    goto :goto_3

    .line 501
    :pswitch_d
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 502
    goto :goto_3

    .line 505
    :pswitch_e
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 506
    goto :goto_3

    .line 509
    :pswitch_f
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 510
    goto :goto_3

    .line 513
    :pswitch_10
    move-object v0, v5

    move v1, v8

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .line 514
    goto :goto_3

    .line 517
    :pswitch_11
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 521
    :pswitch_12
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 525
    :pswitch_13
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 526
    goto :goto_3

    .line 529
    :pswitch_14
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 530
    goto :goto_3

    .line 533
    :pswitch_15
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 534
    goto :goto_3

    .line 537
    :pswitch_16
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 538
    goto :goto_3

    .line 541
    :pswitch_17
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 542
    goto :goto_3

    .line 545
    :pswitch_18
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 549
    :pswitch_19
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 553
    :pswitch_1a
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 557
    :pswitch_1b
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 561
    :pswitch_1c
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 565
    :pswitch_1d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 569
    :pswitch_1e
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 573
    :pswitch_1f
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 577
    :pswitch_20
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 581
    :pswitch_21
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 585
    :pswitch_22
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 589
    :pswitch_23
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 593
    :pswitch_24
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 597
    :pswitch_25
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 598
    goto/16 :goto_3

    .line 601
    :pswitch_26
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .line 602
    goto/16 :goto_3

    .line 605
    :pswitch_27
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_3

    .line 606
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 611
    :pswitch_28
    move-object v0, v5

    move v1, v8

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 612
    goto/16 :goto_3

    .line 615
    :pswitch_29
    move-object v0, v5

    move v1, v8

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 616
    goto/16 :goto_3

    .line 619
    :pswitch_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 623
    :pswitch_2b
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_3

    .line 624
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 629
    :pswitch_2c
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_3

    .line 630
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 635
    :pswitch_2d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 636
    goto/16 :goto_3

    .line 639
    :pswitch_2e
    const/high16 v51, 0x3f80

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 643
    :pswitch_2f
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 647
    :pswitch_30
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    .line 648
    goto/16 :goto_3

    .line 651
    :pswitch_31
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 652
    goto/16 :goto_3

    .line 655
    :pswitch_32
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 656
    goto/16 :goto_3

    .line 659
    :pswitch_33
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 660
    goto/16 :goto_3

    .line 663
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v51

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 667
    :pswitch_35
    move-object v0, v5

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 668
    goto/16 :goto_3

    .line 671
    :pswitch_36
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 672
    goto/16 :goto_3

    .line 675
    :pswitch_37
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 676
    goto/16 :goto_3

    .line 679
    :pswitch_38
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 680
    goto/16 :goto_3

    .line 683
    :pswitch_39
    move-object v0, v5

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 684
    goto/16 :goto_3

    .line 687
    :pswitch_3a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 688
    goto/16 :goto_3

    .line 691
    :pswitch_3b
    move-object v0, v5

    move v1, v8

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 692
    goto/16 :goto_3

    .line 695
    :pswitch_3c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .line 696
    goto/16 :goto_3

    .line 699
    :pswitch_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 703
    :pswitch_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 707
    :pswitch_3f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 708
    goto/16 :goto_3

    .line 711
    :pswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_4

    .line 712
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 714
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 719
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_5

    .line 720
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 722
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 726
    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_6

    .line 727
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 729
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 734
    :pswitch_43
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 739
    :pswitch_44
    const/16 v51, 0x0

    :try_start_0
    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 740
    :catch_0
    move-exception v51

    move-object/from16 v24, v51

    .line 741
    .local v24, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 742
    .end local v24           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v51

    move-object/from16 v24, v51

    .line 743
    .local v24, e:Ljava/io/IOException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 748
    .end local v24           #e:Ljava/io/IOException;
    :pswitch_45
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 752
    :pswitch_46
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 756
    :pswitch_47
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 761
    :pswitch_48
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isNotShowInput:Z

    goto/16 :goto_3

    .line 767
    :pswitch_49
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isShowCursorColor:Z

    .line 768
    const-string v51, "TextView"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "isShowCursorColor = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isShowCursorColor:Z

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 773
    .end local v8           #attr:I
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 775
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 777
    .local v11, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_8

    .line 779
    const/16 v37, 0x1

    .line 783
    :cond_8
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x302

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_9

    .line 787
    const/16 v37, 0x1

    .line 791
    :cond_9
    if-eqz v31, :cond_15

    .line 795
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 801
    .local v13, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #a:Landroid/content/res/TypedArray;
    check-cast v5, Landroid/text/method/KeyListener;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 808
    if-eqz v32, :cond_14

    move/from16 v51, v32

    :goto_4
    :try_start_3
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 894
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    :goto_5
    if-eqz v37, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0xf

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_b

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0xff1

    move/from16 v51, v0

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x80

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 901
    :cond_b
    if-eqz v37, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0xf

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_c

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0xff1

    move/from16 v51, v0

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x300

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 908
    :cond_c
    if-eqz v40, :cond_d

    .line 909
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 911
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v11

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_d

    .line 912
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 915
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 917
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 919
    if-eqz v42, :cond_e

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-nez v51, :cond_e

    if-gez v26, :cond_e

    .line 923
    const/16 v26, 0x3

    .line 927
    :cond_e
    packed-switch v26, :pswitch_data_2

    .line 943
    :goto_6
    if-eqz v45, :cond_24

    move-object/from16 v51, v45

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 946
    if-eqz v46, :cond_f

    .line 947
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 949
    :cond_f
    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 951
    if-eqz v37, :cond_25

    .line 952
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 953
    const/16 v50, 0x3

    .line 970
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 972
    if-eqz v41, :cond_11

    .line 973
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 976
    :cond_11
    if-ltz v34, :cond_27

    .line 977
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    new-instance v53, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v53, v51, v52

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 982
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 983
    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 990
    :cond_12
    sget-object v51, Lcom/android/internal/R$styleable;->View:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 994
    .restart local v5       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v51, v0

    if-nez v51, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-eqz v51, :cond_28

    :cond_13
    const/16 v51, 0x1

    move/from16 v28, v51

    .line 995
    .local v28, focusable:Z
    :goto_a
    move/from16 v15, v28

    .line 996
    .local v15, clickable:Z
    move/from16 v33, v28

    .line 998
    .local v33, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 999
    const/16 v30, 0x0

    :goto_b
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_29

    .line 1000
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 1002
    .restart local v8       #attr:I
    sparse-switch v8, :sswitch_data_0

    .line 999
    :goto_c
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 796
    .end local v8           #attr:I
    .end local v15           #clickable:Z
    .end local v28           #focusable:Z
    .end local v33           #longClickable:Z
    :catch_2
    move-exception v51

    move-object/from16 v27, v51

    .line 797
    .local v27, ex:Ljava/lang/ClassNotFoundException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 802
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v27           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v13       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3
    move-exception v51

    move-object/from16 v27, v51

    .line 803
    .local v27, ex:Ljava/lang/InstantiationException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 804
    .end local v27           #ex:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v51

    move-object/from16 v27, v51

    .line 805
    .local v27, ex:Ljava/lang/IllegalAccessException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 808
    .end local v27           #ex:Ljava/lang/IllegalAccessException;
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v51

    goto/16 :goto_4

    .line 811
    :catch_5
    move-exception v51

    move-object/from16 v24, v51

    .line 812
    .local v24, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 814
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #e:Ljava/lang/IncompatibleClassChangeError;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_15
    if-eqz v16, :cond_17

    .line 815
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 819
    if-eqz v32, :cond_16

    move/from16 v51, v32

    :goto_d
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    :cond_16
    const/16 v51, 0x1

    goto :goto_d

    .line 821
    :cond_17
    if-eqz v32, :cond_19

    .line 822
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 823
    const v51, 0x2000f

    and-int v51, v51, v32

    const v52, 0x20001

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_18

    const/16 v51, 0x1

    move/from16 v42, v51

    :goto_e
    goto/16 :goto_5

    :cond_18
    const/16 v51, 0x0

    move/from16 v42, v51

    goto :goto_e

    .line 827
    :cond_19
    if-eqz v38, :cond_1a

    .line 828
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 829
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 830
    :cond_1a
    if-eqz v36, :cond_1f

    .line 831
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_1d

    const/16 v51, 0x1

    :goto_f
    and-int/lit8 v52, v36, 0x4

    if-eqz v52, :cond_1e

    const/16 v52, 0x1

    :goto_10
    invoke-static/range {v51 .. v52}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 833
    const/16 v32, 0x2

    .line 834
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_1b

    .line 835
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 837
    :cond_1b
    and-int/lit8 v51, v36, 0x4

    if-eqz v51, :cond_1c

    .line 838
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 840
    :cond_1c
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 831
    :cond_1d
    const/16 v51, 0x0

    goto :goto_f

    :cond_1e
    const/16 v52, 0x0

    goto :goto_10

    .line 841
    :cond_1f
    if-nez v10, :cond_20

    const/16 v51, -0x1

    move v0, v9

    move/from16 v1, v51

    if-eq v0, v1, :cond_22

    .line 844
    :cond_20
    const/16 v32, 0x1

    .line 845
    if-nez v42, :cond_21

    .line 846
    const/high16 v51, 0x2

    or-int v32, v32, v51

    .line 849
    :cond_21
    packed-switch v9, :pswitch_data_3

    .line 866
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 870
    .local v14, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_11
    invoke-static {v10, v14}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 871
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 851
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4a
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 852
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x4000

    move/from16 v32, v0

    .line 853
    goto :goto_11

    .line 856
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4b
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 857
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 858
    goto :goto_11

    .line 861
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4c
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 862
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 863
    goto :goto_11

    .line 872
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_22
    if-eqz v25, :cond_23

    .line 873
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 874
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 875
    if-nez v42, :cond_a

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    const/high16 v52, 0x2

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 879
    :cond_23
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 881
    packed-switch v12, :pswitch_data_4

    goto/16 :goto_5

    .line 883
    :pswitch_4d
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 884
    goto/16 :goto_5

    .line 886
    :pswitch_4e
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 887
    goto/16 :goto_5

    .line 889
    :pswitch_4f
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 929
    .end local v5           #a:Landroid/content/res/TypedArray;
    :pswitch_50
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 932
    :pswitch_51
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 935
    :pswitch_52
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 938
    :pswitch_53
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 939
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 943
    :cond_24
    const/high16 v51, -0x100

    invoke-static/range {v51 .. v51}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v51

    goto/16 :goto_7

    .line 954
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_26

    .line 958
    const/16 v50, 0x3

    goto/16 :goto_8

    .line 962
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x302

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_10

    .line 966
    const/16 v50, 0x3

    goto/16 :goto_8

    .line 979
    :cond_27
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_9

    .line 994
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_28
    const/16 v51, 0x0

    move/from16 v28, v51

    goto/16 :goto_a

    .line 1004
    .restart local v8       #attr:I
    .restart local v15       #clickable:Z
    .restart local v28       #focusable:Z
    .restart local v33       #longClickable:Z
    :sswitch_0
    move-object v0, v5

    move v1, v8

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 1005
    goto/16 :goto_c

    .line 1008
    :sswitch_1
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 1009
    goto/16 :goto_c

    .line 1012
    :sswitch_2
    move-object v0, v5

    move v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_c

    .line 1016
    .end local v8           #attr:I
    :cond_29
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1018
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1019
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1022
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1023
    return-void

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_34
        :pswitch_7
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_36
        :pswitch_35
        :pswitch_37
        :pswitch_38
        :pswitch_29
        :pswitch_24
        :pswitch_11
        :pswitch_12
        :pswitch_1f
        :pswitch_19
        :pswitch_23
        :pswitch_1d
        :pswitch_f
        :pswitch_26
        :pswitch_25
        :pswitch_2e
        :pswitch_2c
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_27
        :pswitch_3c
        :pswitch_28
        :pswitch_10
        :pswitch_2b
        :pswitch_2d
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_2f
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_3d
        :pswitch_3e
        :pswitch_2a
        :pswitch_3f
        :pswitch_43
        :pswitch_44
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
    .end packed-switch

    .line 927
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 1002
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 849
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
    .end packed-switch

    .line 881
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private applySingleLine(ZZ)V
    .locals 1
    .parameter "singleLine"
    .parameter "applyTransformation"

    .prologue
    const/4 v0, 0x1

    .line 6252
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6253
    if-eqz p1, :cond_1

    .line 6254
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 6255
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6256
    if-eqz p2, :cond_0

    .line 6257
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6267
    :cond_0
    :goto_0
    return-void

    .line 6261
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6263
    if-eqz p2, :cond_0

    .line 6264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 5245
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 5247
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 5248
    const/4 v1, 0x0

    .line 5251
    :cond_0
    move v2, v1

    .line 5253
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 5254
    const/16 v1, 0x4000

    .line 5257
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5259
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    const/16 v13, 0x50

    const/4 v12, 0x1

    .line 5835
    const/4 v5, 0x0

    .line 5836
    .local v5, line:I
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_0

    .line 5837
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    sub-int v5, v10, v12

    .line 5840
    :cond_0
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 5841
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 5842
    .local v1, dir:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 5843
    .local v2, hspace:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v11

    sub-int v9, v10, v11

    .line 5844
    .local v9, vspace:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5848
    .local v3, ht:I
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_4

    .line 5854
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v4, v10

    .line 5855
    .local v4, left:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5857
    .local v6, right:I
    sub-int v10, v6, v4

    if-ge v10, v2, :cond_2

    .line 5858
    add-int v10, v6, v4

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v2, 0x2

    sub-int v7, v10, v11

    .line 5890
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_0
    if-ge v3, v9, :cond_8

    .line 5891
    const/4 v8, 0x0

    .line 5900
    .local v8, scrolly:I
    :goto_1
    iget v10, p0, Landroid/view/View;->mScrollX:I

    if-ne v7, v10, :cond_1

    iget v10, p0, Landroid/view/View;->mScrollY:I

    if-eq v8, v10, :cond_a

    .line 5901
    :cond_1
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    move v10, v12

    .line 5904
    :goto_2
    return v10

    .line 5860
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_2
    if-gez v1, :cond_3

    .line 5861
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5863
    .end local v7           #scrollx:I
    :cond_3
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5866
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_4
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_6

    .line 5871
    if-gez v1, :cond_5

    .line 5872
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5873
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 5874
    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5875
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_5
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5882
    .end local v7           #scrollx:I
    :cond_6
    if-gez v1, :cond_7

    .line 5883
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5885
    .end local v7           #scrollx:I
    :cond_7
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5886
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5893
    .end local v6           #right:I
    :cond_8
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_9

    .line 5894
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_1

    .line 5896
    .end local v8           #scrolly:I
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_1

    .line 5904
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private canCopy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7479
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 7487
    :goto_0
    return v0

    .line 7483
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7484
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7487
    goto :goto_0
.end method

.method private canCut()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7465
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 7475
    :goto_0
    return v0

    .line 7469
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7470
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 7471
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7475
    goto :goto_0
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6343
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 6344
    .local v0, width:I
    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 7491
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 7452
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 5781
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 5787
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 5788
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 5789
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 5796
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5800
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 5802
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 5804
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5829
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_1
    return-void

    .line 5789
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 5810
    .restart local v2       #hintWant:I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 5812
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 5819
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5820
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 5825
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5826
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5827
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 5740
    const/4 v1, 0x0

    .line 5742
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 5744
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 5745
    const/4 v1, 0x1

    .line 5746
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5750
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 5751
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5753
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 5754
    const/4 v1, 0x1

    .line 5767
    .end local v0           #desiredHeight:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 5768
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5771
    :cond_2
    return-void

    .line 5756
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 5757
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 5758
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5760
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 5761
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 3735
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 3736
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 3742
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int v3, v1, v11

    .line 3743
    .local v3, cap:I
    if-gez v3, :cond_0

    .line 3744
    const/16 v3, 0xc8

    .line 3747
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3749
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 3750
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 3751
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3750
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3757
    :cond_1
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3758
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3759
    return-void
.end method

.method private compressText(F)Z
    .locals 7
    .parameter "width"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 5453
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 5455
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 5456
    .local v1, textWidth:F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 5457
    .local v0, overflow:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    const v2, 0x3d8f5c29

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 5458
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5459
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    .line 5468
    .end local v0           #overflow:F
    .end local v1           #textWidth:F
    :goto_0
    return v2

    :cond_0
    move v2, v5

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 6149
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 6150
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 6151
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 6153
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 6154
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 6155
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6156
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 7
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 5472
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5473
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5474
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 5479
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sub-int v4, v2, v6

    if-ge v0, v4, :cond_1

    .line 5480
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 5481
    const/4 v4, -0x1

    .line 5488
    :goto_1
    return v4

    .line 5479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5484
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 5485
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5484
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5488
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 8
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4652
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 4773
    :goto_0
    return v2

    .line 4656
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4706
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 4713
    iput-boolean v5, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4715
    const/4 v0, 0x1

    .line 4716
    .local v0, doDown:Z
    if-eqz p3, :cond_6

    .line 4718
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4719
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4721
    .local v1, handled:Z
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_2

    .line 4722
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4724
    :cond_2
    const/4 v0, 0x0

    .line 4725
    if-eqz v1, :cond_5

    .line 4732
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 4726
    goto :goto_0

    .line 4658
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_0
    iput-boolean v6, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4661
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 4667
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_3

    .line 4671
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4674
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v6, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 4676
    goto :goto_0

    .line 4683
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    move v2, v4

    .line 4685
    goto :goto_0

    .line 4691
    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4692
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 4693
    goto :goto_0

    .line 4699
    :sswitch_2
    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_1

    .line 4700
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    move v2, v4

    .line 4701
    goto :goto_0

    .line 4732
    .restart local v0       #doDown:Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 4728
    :catch_0
    move-exception v2

    .line 4732
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4736
    :cond_6
    if-eqz v0, :cond_9

    .line 4737
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4738
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4739
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4740
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_7

    .line 4741
    invoke-virtual {p0, v7, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    move v2, v6

    .line 4743
    goto/16 :goto_0

    .line 4745
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4752
    .end local v0           #doDown:Z
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_b

    .line 4753
    const/4 v0, 0x1

    .line 4754
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_a

    .line 4756
    :try_start_1
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 4758
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 4759
    if-eqz v1, :cond_a

    move v2, v4

    .line 4760
    goto/16 :goto_0

    .line 4762
    .end local v1           #handled:Z
    :catch_1
    move-exception v2

    .line 4767
    :cond_a
    if-eqz v0, :cond_b

    .line 4768
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4769
    const/4 v2, 0x2

    goto/16 :goto_0

    .end local v0           #doDown:Z
    :cond_b
    move v2, v5

    .line 4773
    goto/16 :goto_0

    .line 4656
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 7598
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 7594
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1234
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1235
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1236
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1237
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1243
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1240
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1241
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 3861
    const/4 v4, 0x0

    .line 3862
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3864
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3865
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 3866
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3869
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 3872
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 3873
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3879
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3881
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 3882
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 3883
    sub-int v4, v0, v3

    .line 3888
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 3876
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 3885
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5676
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v0, v3}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 5682
    if-nez p1, :cond_0

    .line 5683
    const/4 v4, 0x0

    .line 5732
    :goto_0
    return v4

    .line 5686
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5687
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 5688
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5690
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5691
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 5692
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5693
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5696
    :cond_1
    add-int/2addr v0, v3

    .line 5698
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 5703
    if-eqz p2, :cond_3

    .line 5704
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 5705
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v5

    add-int v0, v4, v5

    .line 5708
    if-eqz v1, :cond_2

    .line 5709
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5710
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5713
    :cond_2
    add-int/2addr v0, v3

    .line 5714
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 5721
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 5722
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 5723
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5730
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 5732
    goto :goto_0

    .line 5718
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 5726
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 3691
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3693
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3694
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3708
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 3711
    .local v2, vspace:I
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3712
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 3720
    .local v1, icontop:I
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_1
    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    return v3

    .end local v1           #icontop:I
    :cond_0
    move v4, v5

    .line 3712
    goto :goto_0

    .restart local v1       #icontop:I
    :cond_1
    move v3, v5

    .line 3720
    goto :goto_1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "r"
    .parameter "line"

    .prologue
    .line 6139
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 6144
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6145
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 6146
    :cond_1
    return-void
.end method

.method private getLastTapPosition()I
    .locals 4

    .prologue
    .line 6976
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 6977
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 6979
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 6981
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 6982
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6984
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    move v1, v0

    .line 6990
    .end local v0           #lastTapPosition:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getOffsetForHorizontal(II)I
    .locals 2
    .parameter "line"
    .parameter "x"

    .prologue
    .line 8597
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    .line 8599
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8600
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8601
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p2, v0

    .line 8602
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 7407
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7409
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    move v1, p2

    .line 7412
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 7379
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7382
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_0

    .line 7383
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 7385
    .local v0, ap:I
    if-eq v0, v4, :cond_0

    .line 7387
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7389
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7391
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7395
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_0
    return-object v2
.end method

.method private getVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 3830
    const/4 v4, 0x0

    .line 3831
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3833
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3834
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 3835
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3838
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 3841
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 3842
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3848
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3850
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 3851
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 3852
    sub-int v4, v0, v3

    .line 3857
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 3845
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 3854
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getWordForDictionary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 7641
    iget-boolean v5, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v1, v5

    .line 7642
    .local v1, seedPosition:I
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v3

    .line 7643
    .local v3, wordLimits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 7644
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v2

    .line 7645
    .local v2, start:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 7646
    .local v0, end:I
    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7648
    .end local v0           #end:I
    .end local v2           #start:I
    :goto_1
    return-object v5

    .line 7641
    .end local v1           #seedPosition:I
    .end local v3           #wordLimits:J
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 7648
    .restart local v1       #seedPosition:I
    .restart local v3       #wordLimits:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getWordLimitsAt(I)J
    .locals 11
    .parameter "offset"

    .prologue
    .line 7512
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v9, 0xf

    .line 7513
    .local v4, klass:I
    const/4 v9, 0x2

    if-eq v4, v9, :cond_0

    const/4 v9, 0x3

    if-eq v4, v9, :cond_0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_1

    .line 7516
    :cond_0
    const-wide/16 v9, -0x1

    .line 7586
    :goto_0
    return-wide v9

    .line 7519
    :cond_1
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v8, v9, 0xff0

    .line 7520
    .local v8, variation:I
    const/16 v9, 0x10

    if-eq v8, v9, :cond_2

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    const/16 v9, 0x90

    if-eq v8, v9, :cond_2

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    const/16 v9, 0xb0

    if-ne v8, v9, :cond_3

    .line 7525
    :cond_2
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7528
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7529
    .local v5, len:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7531
    .local v1, end:I
    if-gez v1, :cond_4

    .line 7532
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7535
    :cond_4
    move v6, v1

    .line 7537
    .local v6, start:I
    :goto_1
    if-lez v6, :cond_5

    .line 7538
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7539
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7541
    .local v7, type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_7

    const/4 v9, 0x4

    if-eq v7, v9, :cond_7

    const/16 v9, 0x9

    if-eq v7, v9, :cond_7

    .line 7551
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_5
    :goto_2
    if-ge v1, v5, :cond_6

    .line 7552
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7553
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7555
    .restart local v7       #type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_8

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    const/4 v9, 0x3

    if-eq v7, v9, :cond_8

    const/4 v9, 0x4

    if-eq v7, v9, :cond_8

    const/16 v9, 0x9

    if-eq v7, v9, :cond_8

    .line 7565
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_6
    if-ne v6, v1, :cond_9

    .line 7566
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7537
    .restart local v0       #c:C
    .restart local v7       #type:I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 7551
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7569
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_9
    sub-int v9, v1, v6

    const/16 v10, 0x30

    if-le v9, v10, :cond_a

    .line 7570
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 7573
    :cond_a
    const/4 v2, 0x0

    .line 7574
    .local v2, hasLetter:Z
    move v3, v6

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_b

    .line 7575
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 7576
    const/4 v2, 0x1

    .line 7581
    :cond_b
    if-nez v2, :cond_d

    .line 7582
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 7574
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7586
    :cond_d
    invoke-static {v6, v1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v9

    goto/16 :goto_0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 3236
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .locals 0

    .prologue
    .line 8592
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 8593
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 8594
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 3725
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 3726
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3727
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3731
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3732
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 8580
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    .line 8581
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8583
    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 8586
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    .line 8587
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8589
    :cond_0
    return-void
.end method

.method private invalidateCursor()V
    .locals 1

    .prologue
    .line 3927
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3929
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 3930
    return-void
.end method

.method private invalidateCursor(III)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    .line 3933
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_1

    .line 3934
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3970
    :cond_0
    :goto_0
    return-void

    .line 3936
    :cond_1
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    if-ltz p3, :cond_0

    .line 3937
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3938
    .local v1, first:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3940
    .local v2, last:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3941
    .local v4, line:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 3949
    .local v6, top:I
    if-lez v4, :cond_3

    .line 3950
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int v9, v4, v10

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 3955
    :cond_3
    if-ne v1, v2, :cond_4

    .line 3956
    move v5, v4

    .line 3960
    .local v5, line2:I
    :goto_1
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 3961
    .local v0, bottom:I
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    .line 3963
    .local v7, voffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int v3, v8, v9

    .line 3964
    .local v3, left:I
    add-int v8, v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v0, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v3, v8, v9, v10}, Landroid/widget/TextView;->invalidate(IIII)V

    goto :goto_0

    .line 3958
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v5           #line2:I
    .end local v7           #voffset:I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .restart local v5       #line2:I
    goto :goto_1
.end method

.method private invalidateCursorPath()V
    .locals 9

    .prologue
    .line 3892
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_0

    .line 3893
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 3924
    :goto_0
    return-void

    .line 3895
    :cond_0
    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v3

    .line 3906
    :try_start_0
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 3907
    .local v1, thick:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 3908
    const/high16 v1, 0x3f80

    .line 3911
    :cond_1
    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    .line 3913
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3915
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 3916
    .local v0, left:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v5

    add-int v2, v4, v5

    .line 3918
    .local v2, top:I
    int-to-float v4, v0

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v2

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v0

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v2

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3922
    monitor-exit v3

    goto :goto_0

    .end local v0           #left:I
    .end local v1           #thick:F
    .end local v2           #top:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isPasswordInputType(I)Z
    .locals 3
    .parameter "inputType"

    .prologue
    .line 3240
    and-int/lit16 v1, p1, 0xfff

    .line 3249
    .local v1, variation:I
    const/4 v0, 0x0

    .line 3250
    .local v0, isPasswordFlag:Z
    const/16 v2, 0x81

    if-ne v1, v2, :cond_0

    .line 3252
    const/4 v0, 0x1

    .line 3263
    :goto_0
    return v0

    .line 3254
    :cond_0
    const/16 v2, 0x302

    if-ne v1, v2, :cond_1

    .line 3256
    const/4 v0, 0x1

    goto :goto_0

    .line 3260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextEditable()Z
    .locals 1

    .prologue
    .line 7217
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3268
    and-int/lit16 v0, p1, 0xfff

    .line 3270
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    .prologue
    .line 6831
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6832
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1

    .line 6833
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6844
    :cond_1
    :goto_0
    return-void

    .line 6839
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_3

    .line 6840
    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 6842
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6843
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private nullLayouts()V
    .locals 1

    .prologue
    .line 5230
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 5231
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 5233
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 5234
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5237
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5238
    return-void
.end method

.method private onTapUpEvent(II)V
    .locals 7
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7056
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 7057
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7059
    .local v0, end:I
    if-ne v2, v0, :cond_0

    .line 7060
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p2, v4, :cond_1

    move v3, v6

    .line 7062
    .local v3, tapInsideSelectAllOnFocus:Z
    :goto_0
    if-lt v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    if-nez v3, :cond_2

    .line 7064
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7068
    iget-boolean v4, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->showContextMenu()Z

    .line 7079
    .end local v3           #tapInsideSelectAllOnFocus:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 7060
    goto :goto_0

    .line 7071
    .restart local v3       #tapInsideSelectAllOnFocus:Z
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7073
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_3

    move v1, v6

    .line 7074
    .local v1, selectAllGotFocus:Z
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 7075
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    goto :goto_1

    .end local v1           #selectAllGotFocus:Z
    :cond_3
    move v1, v5

    .line 7073
    goto :goto_2
.end method

.method private static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7590
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7188
    const/4 v3, 0x0

    .line 7190
    .local v3, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7191
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_1

    .line 7192
    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    .line 7193
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-le v4, v5, :cond_4

    :cond_0
    move v3, v7

    .line 7198
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_5

    move v4, v7

    :goto_1
    iput-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 7199
    if-eqz v3, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_6

    move v4, v7

    :goto_2
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 7202
    iget-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    .line 7203
    iput-object v8, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 7206
    :cond_2
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 7208
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7209
    iput-object v8, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 7211
    :cond_3
    return-void

    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v3, v6

    .line 7193
    goto :goto_0

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v4, v6

    .line 7198
    goto :goto_1

    :cond_6
    move v4, v6

    .line 7199
    goto :goto_2
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 8
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/4 v5, 0x1

    const-string v7, " "

    const-string v6, ""

    .line 7941
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7942
    if-lez p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7944
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7945
    .local v1, originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    sub-int v3, p1, v5

    const-string v4, ""

    invoke-interface {v2, v3, p1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7948
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7949
    .local v0, delta:I
    add-int/2addr p1, v0

    .line 7950
    add-int/2addr p2, v0

    .line 7964
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7965
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7967
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v2, p2, 0x1

    const-string v3, ""

    invoke-interface {p0, p2, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7975
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 7953
    .restart local p0
    :cond_2
    if-lez p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7955
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7956
    .restart local v1       #originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    const-string v3, " "

    invoke-interface {v2, p1, p1, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7958
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7959
    .restart local v0       #delta:I
    add-int/2addr p1, v0

    .line 7960
    add-int/2addr p2, v0

    goto :goto_0

    .line 7970
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7972
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    const-string v2, " "

    invoke-interface {p0, p2, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3973
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3974
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_1

    .line 3986
    :cond_0
    :goto_0
    return-void

    .line 3978
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_2

    .line 3979
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3980
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0

    .line 3981
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3982
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5050
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 5051
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 5052
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 5053
    add-int/lit8 v0, v0, -0x1

    .line 5054
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 5056
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 3779
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 3780
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3781
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 3783
    :cond_0
    return-void
.end method

.method private selectCurrentWord()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 7604
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7638
    .end local p0
    :goto_0
    return-void

    .line 7610
    .restart local p0
    :cond_0
    iget-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v7, :cond_1

    .line 7611
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7612
    .local v1, minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7623
    .local v0, maxOffset:I
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7624
    .local v5, wordLimits:J
    cmp-long v7, v5, v9

    if-ltz v7, :cond_2

    .line 7625
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 7630
    .local v4, selectionStart:I
    :goto_2
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7631
    cmp-long v7, v5, v9

    if-ltz v7, :cond_3

    .line 7632
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v2

    .line 7637
    .local v2, selectionEnd:I
    :goto_3
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 7615
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    .end local v2           #selectionEnd:I
    .end local v4           #selectionStart:I
    .end local v5           #wordLimits:J
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 7617
    .local v3, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 7618
    .restart local v1       #minOffset:I
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto :goto_1

    .line 7627
    .end local v3           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    .restart local v5       #wordLimits:J
    :cond_2
    const/4 v7, 0x5

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4       #selectionStart:I
    goto :goto_2

    .line 7634
    :cond_3
    add-int/lit8 v7, v0, 0x5

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #selectionEnd:I
    goto :goto_3
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6581
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6582
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6583
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6584
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6585
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6588
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 3
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 3808
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    .line 3809
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3811
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3812
    array-length v1, p2

    iget-object p0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .end local p0
    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v0, v1

    .line 3814
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3818
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_0
    return-void

    .line 3816
    .restart local p0
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setInputType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3287
    and-int/lit8 v2, p1, 0xf

    .line 3289
    .local v2, cls:I
    if-ne v2, v6, :cond_4

    .line 3290
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    move v0, v6

    .line 3292
    .local v0, autotext:Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 3293
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3301
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3323
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3324
    if-eqz p2, :cond_a

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3328
    :goto_3
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_0
    move v0, v7

    .line 3290
    goto :goto_0

    .line 3294
    .restart local v0       #autotext:Z
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 3295
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3296
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 3297
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3299
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3302
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 3303
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_5

    move v4, v6

    :goto_4
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_6

    move v5, v6

    :goto_5
    invoke-static {v4, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5
    move v4, v7

    goto :goto_4

    :cond_6
    move v5, v7

    goto :goto_5

    .line 3306
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 3307
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 3315
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3316
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3309
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3310
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3312
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3313
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3318
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 3319
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3321
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3326
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 3307
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 1195
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1196
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1200
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1768
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1769
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1770
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1771
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1774
    :cond_0
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 23
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2666
    if-nez p1, :cond_0

    .line 2667
    const-string p1, ""

    .line 2671
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    move v5, v0

    if-eqz v5, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2672
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 2673
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 2677
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2679
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 2681
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2682
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2685
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 2686
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_5

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v13

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2689
    .local v17, out:Ljava/lang/CharSequence;
    if-eqz v17, :cond_4

    .line 2690
    move-object/from16 p1, v17

    .line 2686
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2694
    .end local v17           #out:Ljava/lang/CharSequence;
    :cond_5
    if-eqz p3, :cond_6

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2703
    :cond_6
    :goto_1
    const/16 v16, 0x0

    .line 2705
    .local v16, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 2706
    const/16 v16, 0x1

    .line 2709
    :cond_7
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_8

    if-eqz v16, :cond_d

    .line 2711
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v20

    .line 2712
    .local v20, t:Landroid/text/Editable;
    move-object/from16 p1, v20

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2714
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 2715
    .local v14, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_9

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2722
    .end local v14           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v20           #t:Landroid/text/Editable;
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_b

    .line 2725
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_10

    .line 2726
    :cond_a
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 2731
    .local v18, s2:Landroid/text/Spannable;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2732
    move-object/from16 p1, v18

    .line 2733
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_11

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2740
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2742
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 2743
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2748
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2749
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_12

    .line 2752
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2756
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2758
    .local v21, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_17

    .line 2759
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2763
    .local v19, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView$ChangeWatcher;

    .line 2764
    .local v22, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move v12, v0

    .line 2765
    .local v12, count:I
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_13

    .line 2766
    aget-object v5, v22, v13

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2765
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2699
    .end local v12           #count:I
    .end local v16           #needEditableForNotification:Z
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v21           #textLength:I
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_c
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_1

    .line 2716
    .restart local v16       #needEditableForNotification:Z
    :cond_d
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 2717
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_2

    .line 2718
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_9

    .line 2719
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_2

    .line 2728
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .restart local v18       #s2:Landroid/text/Spannable;
    goto/16 :goto_3

    .line 2733
    :cond_11
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_4

    .line 2754
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 2768
    .restart local v12       #count:I
    .restart local v19       #sp:Landroid/text/Spannable;
    .restart local v21       #textLength:I
    .restart local v22       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_14

    .line 2769
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2771
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    sget v7, Landroid/widget/TextView;->PRIORITY:I

    shl-int/lit8 v7, v7, 0x10

    or-int/lit8 v7, v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_15

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2778
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_16

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2783
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2791
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2795
    .end local v12           #count:I
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_18

    .line 2796
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2799
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2800
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2802
    if-eqz v16, :cond_19

    .line 2803
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 2807
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 2808
    return-void
.end method

.method private setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 23
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2863
    if-nez p1, :cond_0

    .line 2864
    const-string p1, ""

    .line 2867
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2869
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 2871
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2872
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2875
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 2876
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_4

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v13

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2879
    .local v17, out:Ljava/lang/CharSequence;
    if-eqz v17, :cond_3

    .line 2880
    move-object/from16 p1, v17

    .line 2876
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2884
    .end local v17           #out:Ljava/lang/CharSequence;
    :cond_4
    if-eqz p3, :cond_5

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2893
    :cond_5
    :goto_1
    const/16 v16, 0x0

    .line 2895
    .local v16, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 2896
    const/16 v16, 0x1

    .line 2899
    :cond_6
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_7

    if-eqz v16, :cond_c

    .line 2901
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v20

    .line 2902
    .local v20, t:Landroid/text/Editable;
    move-object/from16 p1, v20

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2904
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 2905
    .local v14, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_8

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2912
    .end local v14           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v20           #t:Landroid/text/Editable;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_a

    .line 2915
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_f

    .line 2916
    :cond_9
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 2924
    .local v18, s2:Landroid/text/Spannable;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinksZTE(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2926
    const-string v5, "TextView"

    const-string v6, "Bug test dmz  setTextZTE Linkify.addLinksZTE is called  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    move-object/from16 p1, v18

    .line 2928
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_10

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2935
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2937
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 2938
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2943
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2944
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_11

    .line 2947
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2951
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2953
    .local v21, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_16

    .line 2954
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2958
    .local v19, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView$ChangeWatcher;

    .line 2959
    .local v22, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move v12, v0

    .line 2960
    .local v12, count:I
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_12

    .line 2961
    aget-object v5, v22, v13

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2960
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2889
    .end local v12           #count:I
    .end local v16           #needEditableForNotification:Z
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v21           #textLength:I
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_b
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_1

    .line 2906
    .restart local v16       #needEditableForNotification:Z
    :cond_c
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_e

    .line 2907
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_2

    .line 2908
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_8

    .line 2909
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_2

    .line 2918
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .restart local v18       #s2:Landroid/text/Spannable;
    goto/16 :goto_3

    .line 2928
    :cond_10
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_4

    .line 2949
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 2963
    .restart local v12       #count:I
    .restart local v19       #sp:Landroid/text/Spannable;
    .restart local v21       #textLength:I
    .restart local v22       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_13

    .line 2964
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2966
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    sget v7, Landroid/widget/TextView;->PRIORITY:I

    shl-int/lit8 v7, v7, 0x10

    or-int/lit8 v7, v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2973
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_15

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2978
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_16

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2986
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2990
    .end local v12           #count:I
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 2991
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2994
    :cond_17
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2995
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2997
    if-eqz v16, :cond_18

    .line 2998
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 3000
    :cond_18
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 1041
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1042
    return-void

    .line 1029
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1030
    goto :goto_0

    .line 1033
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1034
    goto :goto_0

    .line 1037
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4631
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v1, :cond_0

    move v1, v3

    .line 4648
    :goto_0
    return v1

    .line 4635
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 4636
    goto :goto_0

    .line 4639
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_3

    .line 4640
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4642
    .local v0, variation:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v2

    .line 4644
    goto :goto_0

    .end local v0           #variation:I
    :cond_3
    move v1, v3

    .line 4648
    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 3625
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3626
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3650
    :goto_0
    return-void

    .line 3630
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_1

    .line 3631
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3632
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090064

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3635
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 3636
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3638
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 3641
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 3644
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3645
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3646
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3648
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 3649
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 2

    .prologue
    .line 6349
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 6361
    :cond_0
    :goto_0
    return-void

    .line 6351
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6355
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6358
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 6359
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 6370
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 6371
    if-eqz p1, :cond_1

    .line 6372
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6377
    :cond_0
    :goto_0
    return-void

    .line 6374
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private startTextSelectionMode()V
    .locals 3

    .prologue
    .line 7989
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v1, :cond_0

    .line 7990
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7991
    const-string v1, "TextView"

    const-string v2, "TextView has no selection controller. Action mode cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8010
    :cond_0
    :goto_0
    return-void

    .line 7995
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7999
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 8000
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->show()V

    .line 8001
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8004
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Landroid/widget/TextView;->isNotShowInput:Z

    if-nez v1, :cond_2

    .line 8005
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 8008
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 1

    .prologue
    .line 6364
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6365
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 6367
    :cond_0
    return-void
.end method

.method private stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 8013
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    .line 8014
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8015
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 8016
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8018
    :cond_0
    return-void
.end method

.method private textCanBeSelected()Z
    .locals 1

    .prologue
    .line 7459
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2344
    const/4 v1, 0x0

    .line 2345
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2346
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 2347
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2348
    const/4 v1, 0x1

    .line 2350
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 2351
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2352
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 2353
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2354
    const/4 v1, 0x1

    .line 2357
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 2358
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2359
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2360
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2361
    const/4 v1, 0x1

    .line 2364
    :cond_2
    if-eqz v1, :cond_3

    .line 2365
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2367
    :cond_3
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 6159
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 6163
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    .line 6164
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 6165
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 6167
    :cond_0
    return v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 6557
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6561
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6562
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2327
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2328
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2336
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 2337
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2340
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2341
    return-void
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5127
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5128
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5129
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 5130
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5131
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 5132
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 5133
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 5134
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 5137
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5138
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5144
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 5147
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 5140
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5141
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 5142
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 29
    .parameter "offset"

    .prologue
    .line 5913
    const/4 v6, 0x0

    .line 5915
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 5918
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5919
    .local v24, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 5920
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 5922
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 5923
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 5924
    .local v19, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 5928
    .local v15, ht:I
    sget-object v25, Landroid/widget/TextView$3;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 5938
    const/4 v11, 0x0

    .line 5941
    .local v11, grav:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    mul-int v11, v11, v25

    .line 5943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 5944
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 5946
    .local v23, vspace:I
    sub-int v25, v5, v20

    div-int/lit8 v13, v25, 0x2

    .line 5947
    .local v13, hslack:I
    move/from16 v22, v13

    .line 5949
    .local v22, vslack:I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 5950
    div-int/lit8 v22, v23, 0x4

    .line 5951
    :cond_0
    div-int/lit8 v25, v14, 0x4

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 5952
    div-int/lit8 v13, v14, 0x4

    .line 5954
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    .line 5955
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 5957
    .local v21, vs:I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 5958
    sub-int v21, v20, v22

    .line 5959
    :cond_2
    sub-int v25, v5, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 5960
    sub-int v25, v23, v22

    sub-int v21, v5, v25

    .line 5961
    :cond_3
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 5962
    sub-int v21, v15, v23

    .line 5963
    :cond_4
    const/16 v25, 0x0

    sub-int v25, v25, v21

    if-lez v25, :cond_5

    .line 5964
    const/16 v21, 0x0

    .line 5966
    :cond_5
    if-eqz v11, :cond_7

    .line 5967
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_6

    .line 5968
    sub-int v12, v24, v13

    .line 5970
    :cond_6
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 5971
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 5975
    :cond_7
    if-gez v11, :cond_d

    .line 5976
    sub-int v25, v16, v12

    if-lez v25, :cond_8

    .line 5977
    move/from16 v12, v16

    .line 5978
    :cond_8
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_9

    .line 5979
    sub-int v12, v19, v14

    .line 6026
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 6027
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_16

    .line 6028
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 6049
    :goto_2
    const/4 v6, 0x1

    .line 6052
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 6057
    new-instance v18, Landroid/graphics/Rect;

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6058
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 6059
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6061
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 6062
    const/4 v6, 0x1

    .line 6066
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_c
    return v6

    .line 5930
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v21           #vs:I
    .end local v22           #vslack:I
    .end local v23           #vspace:I
    :pswitch_0
    const/4 v11, 0x1

    .line 5931
    .restart local v11       #grav:I
    goto/16 :goto_0

    .line 5934
    .end local v11           #grav:I
    :pswitch_1
    const/4 v11, -0x1

    .line 5935
    .restart local v11       #grav:I
    goto/16 :goto_0

    .line 5980
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v21       #vs:I
    .restart local v22       #vslack:I
    .restart local v23       #vspace:I
    :cond_d
    if-lez v11, :cond_f

    .line 5981
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_e

    .line 5982
    sub-int v12, v19, v14

    .line 5983
    :cond_e
    sub-int v25, v16, v12

    if-lez v25, :cond_9

    .line 5984
    move/from16 v12, v16

    goto :goto_1

    .line 5986
    :cond_f
    sub-int v25, v19, v16

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_10

    .line 5990
    sub-int v25, v19, v16

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v16, v25

    goto/16 :goto_1

    .line 5991
    :cond_10
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 5996
    sub-int v12, v19, v14

    goto/16 :goto_1

    .line 5997
    :cond_11
    add-int v25, v16, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 6002
    move/from16 v12, v16

    goto/16 :goto_1

    .line 6003
    :cond_12
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_13

    .line 6007
    move/from16 v12, v16

    goto/16 :goto_1

    .line 6008
    :cond_13
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 6012
    sub-int v12, v19, v14

    goto/16 :goto_1

    .line 6017
    :cond_14
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_15

    .line 6018
    sub-int v12, v24, v13

    .line 6020
    :cond_15
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 6021
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_1

    .line 6030
    :cond_16
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 6031
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 6032
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 6034
    .local v10, dy:I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_17

    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 6036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 6037
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 6046
    :goto_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_2

    .line 6039
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_18

    .line 6040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6043
    :cond_18
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_3

    .line 5928
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 7232
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 7233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7234
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 7035
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 7036
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 7038
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 7348
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7349
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 7351
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 6129
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 6130
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6131
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 6132
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 6133
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 6136
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 7364
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 7356
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7357
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 7359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public debug(I)V
    .locals 4
    .parameter "depth"

    .prologue
    const-string v3, ", "

    .line 6172
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6174
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6175
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6179
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 6181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6182
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 6183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6189
    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    return-void

    .line 6187
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 7227
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 6851
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6852
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 6853
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6854
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 7654
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 7674
    :goto_0
    return v2

    .line 7658
    :cond_0
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 7660
    .local v0, isPassword:Z
    if-nez v0, :cond_4

    .line 7661
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7662
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7663
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7665
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7666
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_2

    .line 7667
    const/16 v2, 0x1f5

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7669
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    move v2, v4

    .line 7674
    goto :goto_0

    .line 7672
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 2371
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2372
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2375
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2378
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2379
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    .line 2380
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2381
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2382
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2384
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2385
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2387
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2388
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2390
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2391
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2394
    .end local v1           #state:[I
    :cond_7
    return-void
.end method

.method public endBatchEdit()V
    .locals 4

    .prologue
    .line 5150
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 5151
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5152
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 5153
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5154
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 5155
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5158
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 5161
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5162
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 5163
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 5164
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 5166
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 4934
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 10
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v9, 0x0

    .line 4944
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4945
    .local v2, content:Ljava/lang/CharSequence;
    if-eqz v2, :cond_c

    .line 4946
    const/4 v7, -0x2

    if-eq p2, v7, :cond_b

    .line 4947
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4948
    .local v1, N:I
    if-gez p2, :cond_3

    .line 4949
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4950
    const/4 p2, 0x0

    .line 4951
    move p3, v1

    .line 4983
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    .line 4984
    invoke-interface {v2, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4995
    .end local v1           #N:I
    :goto_1
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4996
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/high16 v8, 0x1

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 4997
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4999
    :cond_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_2

    .line 5000
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5002
    :cond_2
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5003
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5004
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5005
    const/4 v7, 0x1

    .line 5007
    :goto_2
    return v7

    .line 4954
    .restart local v1       #N:I
    :cond_3
    instance-of v7, v2, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 4955
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 4956
    .local v5, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v5, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 4958
    .local v6, spans:[Ljava/lang/Object;
    array-length v3, v6

    .line 4959
    .local v3, i:I
    :cond_4
    :goto_3
    if-lez v3, :cond_6

    .line 4960
    add-int/lit8 v3, v3, -0x1

    .line 4961
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 4962
    .local v4, j:I
    if-ge v4, p2, :cond_5

    move p2, v4

    .line 4963
    :cond_5
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 4964
    if-le v4, p3, :cond_4

    move p3, v4

    goto :goto_3

    .line 4967
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #spanned:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    :cond_6
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4968
    iput p3, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4971
    add-int/2addr p3, p4

    .line 4972
    if-le p2, v1, :cond_8

    .line 4973
    move p2, v1

    .line 4977
    :cond_7
    :goto_4
    if-le p3, v1, :cond_9

    .line 4978
    move p3, v1

    goto :goto_0

    .line 4974
    :cond_8
    if-gez p2, :cond_7

    .line 4975
    const/4 p2, 0x0

    goto :goto_4

    .line 4979
    :cond_9
    if-gez p3, :cond_0

    .line 4980
    const/4 p3, 0x0

    goto :goto_0

    .line 4987
    :cond_a
    invoke-static {v2, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 4991
    .end local v1           #N:I
    :cond_b
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4992
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4993
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_c
    move v7, v9

    .line 5007
    goto :goto_2
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 5169
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 5171
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 5172
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 5173
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 5178
    :cond_1
    :goto_0
    return-void

    .line 5174
    :cond_2
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 5176
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 1665
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    .line 4558
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 4559
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 4567
    :goto_0
    return v1

    .line 4562
    :cond_0
    const/4 v0, 0x0

    .line 4563
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 4564
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 4567
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 4129
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1640
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1602
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1603
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 1604
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 1608
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1297
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1298
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 1300
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1310
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1311
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 1313
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1323
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1324
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 1326
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1284
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1285
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 1287
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 1874
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6304
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3562
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 1369
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1370
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 1392
    :goto_0
    return v5

    .line 1373
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_1

    .line 1374
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    goto :goto_0

    .line 1377
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1378
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1379
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1380
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1382
    .local v2, layoutht:I
    if-lt v2, v4, :cond_2

    move v5, v0

    .line 1383
    goto :goto_0

    .line 1386
    :cond_2
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1387
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 1388
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    goto :goto_0

    .line 1389
    :cond_3
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    move v5, v0

    .line 1390
    goto :goto_0

    .line 1392
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 1336
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1337
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    .line 1359
    :goto_0
    return v5

    .line 1340
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_1

    .line 1341
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1345
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1346
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1347
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1349
    .local v2, layoutht:I
    if-lt v2, v4, :cond_2

    move v5, v3

    .line 1350
    goto :goto_0

    .line 1353
    :cond_2
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1354
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    move v5, v3

    .line 1355
    goto :goto_0

    .line 1356
    :cond_3
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    .line 1357
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    goto :goto_0

    .line 1359
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 3824
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 4491
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 4492
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4516
    :goto_0
    return-void

    .line 4496
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4497
    .local v3, sel:I
    if-gez v3, :cond_1

    .line 4498
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4502
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4503
    .local v0, line:I
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 4504
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 4506
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 4507
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 4510
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4511
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    .line 4512
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    .line 4513
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 4515
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 2598
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2085
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 3164
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getHysteresisOffset(III)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    const/4 v8, 0x1

    .line 8630
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8631
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_0

    const/4 v6, -0x1

    .line 8653
    :goto_0
    return v6

    .line 8633
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr p2, v6

    .line 8635
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8636
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8637
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr p2, v6

    .line 8639
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 8641
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 8642
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 8643
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 8644
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    div-int/lit8 v0, v6, 0x8

    .line 8648
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_1

    sub-int v6, p2, v4

    if-lt v6, v0, :cond_2

    :cond_1
    sub-int v6, v3, v8

    if-ne v2, v6, :cond_3

    sub-int v6, v5, p2

    if-ge v6, v0, :cond_3

    .line 8650
    :cond_2
    move v2, v3

    .line 8653
    :cond_3
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v6

    goto :goto_0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 3402
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3391
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3362
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .parameter "create"

    .prologue
    const/4 v1, 0x0

    .line 3545
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_1

    .line 3546
    if-nez p1, :cond_0

    move-object v0, v1

    .line 3553
    :goto_0
    return-object v0

    .line 3547
    :cond_0
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3549
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 3550
    if-nez p1, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 3551
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3553
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 3337
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$CursorController;
    .locals 2

    .prologue
    .line 8671
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 8672
    const/4 v1, 0x0

    .line 8684
    :goto_0
    return-object v1

    .line 8675
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1

    .line 8676
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 8678
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8679
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 8680
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8684
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7297
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_2

    .line 7298
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7299
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7300
    .local v0, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7301
    iget v1, v0, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 7318
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :goto_0
    return v1

    .restart local v0       #marquee:Landroid/widget/TextView$Marquee;
    :cond_0
    move v1, v3

    .line 7303
    goto :goto_0

    .line 7305
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 7306
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 7318
    :cond_2
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    goto :goto_0

    :pswitch_1
    move v1, v3

    .line 7308
    goto :goto_0

    .line 7310
    :pswitch_2
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v3

    .line 7314
    goto :goto_0

    .line 7306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 4118
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 4536
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 4537
    if-eqz p2, :cond_0

    .line 4538
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    move v2, v3

    .line 4552
    :goto_0
    return v2

    .line 4543
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 4545
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 4546
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 4547
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 4549
    :cond_2
    if-eqz p2, :cond_3

    .line 4550
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4552
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 1951
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffset(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8616
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 8626
    :goto_0
    return v2

    .line 8618
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 8620
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8621
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8622
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 8624
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 8625
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v1

    .local v1, offset:I
    move v2, v1

    .line 8626
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3511
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7323
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_1

    .line 7324
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7325
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7326
    .local v1, marquee:Landroid/widget/TextView$Marquee;
    iget v3, v1, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v4, v1, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7343
    .end local v1           #marquee:Landroid/widget/TextView$Marquee;
    :goto_0
    return v3

    .line 7327
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7328
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 7343
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v3

    goto :goto_0

    .line 7330
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 7332
    .local v2, textWidth:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 7333
    .local v0, lineWidth:F
    int-to-float v3, v2

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 7335
    .end local v0           #lineWidth:F
    .end local v2           #textWidth:I
    :pswitch_2
    const/4 v3, 0x0

    goto :goto_0

    .line 7337
    :pswitch_3
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 7328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 4134
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$CursorController;
    .locals 2

    .prologue
    .line 8688
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 8689
    const/4 v1, 0x0

    .line 8701
    :goto_0
    return-object v1

    .line 8692
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1

    .line 8693
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 8695
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8696
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 8697
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8701
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6205
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 6197
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 4124
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 1427
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 1401
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1962
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    .line 1965
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6625
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6626
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 6627
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6629
    :cond_1
    if-eqz v0, :cond_3

    .line 6630
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6631
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_5

    .line 6632
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6633
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6638
    :cond_2
    :goto_0
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6641
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 6642
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6645
    if-eq p3, p4, :cond_4

    .line 6646
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6648
    :cond_4
    return-void

    .line 6635
    :cond_5
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v1, p2, :cond_6

    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6636
    :cond_6
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 8660
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 6212
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6213
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6215
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 8667
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "drawable"

    .prologue
    .line 4150
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4151
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4152
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 4153
    .local v7, scrollX:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 4158
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4159
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_0

    .line 4160
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    .line 4161
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4162
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4163
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4165
    .local v9, vspace:I
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 4166
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4191
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 4194
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    return-void

    .line 4167
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    .line 4168
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 4169
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 4170
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 4172
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 4173
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 4174
    goto :goto_0

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    .line 4175
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4176
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4177
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4179
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4180
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 4181
    goto :goto_0

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    .line 4182
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4183
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 4184
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 4186
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 4187
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 2

    .prologue
    .line 8705
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8706
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_1

    .line 8707
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 8709
    :goto_0
    return v1

    .line 8707
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 8709
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 7828
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7829
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 4113
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 22
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 5270
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 5272
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5274
    if-gez p1, :cond_0

    .line 5275
    const/16 p1, 0x0

    .line 5277
    :cond_0
    if-gez p2, :cond_1

    .line 5278
    const/16 p2, 0x0

    .line 5282
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v2, v0

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_0

    .line 5292
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5295
    .local v7, alignment:Landroid/text/Layout$Alignment;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v2, v0

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5297
    .local v21, shouldEllipsize:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_a

    .line 5298
    new-instance v2, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v6, v0

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    move-object v11, v6

    :goto_2
    move/from16 v6, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5363
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5364
    :goto_4
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 5367
    if-eqz v21, :cond_2

    move/from16 p2, p1

    .line 5369
    :cond_2
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    move-object v1, v2

    if-ne v0, v1, :cond_3

    .line 5370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 5372
    if-eqz p4, :cond_3

    .line 5373
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5377
    :cond_3
    if-eqz p4, :cond_1a

    .line 5378
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_16

    if-eqz v21, :cond_4

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_16

    .line 5380
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_15

    .line 5381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5391
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/BoringLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5429
    :cond_5
    :goto_6
    if-eqz p6, :cond_6

    .line 5430
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5433
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_7

    .line 5434
    move/from16 v0, p5

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    .line 5438
    .local v20, height:I
    const/4 v2, -0x2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_1c

    const/4 v2, -0x1

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_1c

    .line 5439
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5448
    .end local v20           #height:I
    :cond_7
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5449
    return-void

    .line 5284
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    .end local v21           #shouldEllipsize:Z
    .restart local p1
    :sswitch_0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 5285
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_0

    .line 5288
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 5289
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_0

    .line 5295
    :cond_8
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_1

    .line 5298
    .restart local v21       #shouldEllipsize:Z
    :cond_9
    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_2

    .line 5303
    :cond_a
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p3

    move-object v1, v2

    if-ne v0, v1, :cond_b

    .line 5304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p3

    .line 5306
    if-eqz p3, :cond_b

    .line 5307
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5311
    :cond_b
    if-eqz p3, :cond_12

    .line 5312
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_e

    .line 5314
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_d

    .line 5315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5325
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v2, v0

    check-cast v2, Landroid/text/BoringLayout;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_3

    .line 5320
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_8

    .line 5326
    :cond_e
    if-eqz v21, :cond_10

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_10

    .line 5327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_f

    .line 5328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5334
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5339
    :cond_10
    if-eqz v21, :cond_11

    .line 5340
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5346
    :cond_11
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5350
    :cond_12
    if-eqz v21, :cond_13

    .line 5351
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5357
    :cond_13
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5363
    :cond_14
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_4

    .line 5386
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_5

    .line 5392
    :cond_16
    if-eqz v21, :cond_18

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_18

    .line 5393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_17

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5400
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5405
    :cond_18
    if-eqz v21, :cond_19

    .line 5406
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5412
    :cond_19
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5416
    :cond_1a
    if-eqz v21, :cond_1b

    .line 5417
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5423
    :cond_1b
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5442
    .end local p1
    .restart local v20       #height:I
    :cond_1c
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_7

    .line 5282
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 19

    .prologue
    .line 6078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 6079
    const/16 v16, 0x0

    .line 6124
    .end local p0
    :goto_0
    return v16

    .line 6081
    .restart local p0
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 6082
    .local v11, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6083
    .local v4, end:I
    if-eq v11, v4, :cond_1

    .line 6084
    const/16 v16, 0x0

    goto :goto_0

    .line 6089
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6091
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 6092
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 6093
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v17

    sub-int v15, v16, v17

    .line 6094
    .local v15, vspace:I
    sub-int v16, v3, v12

    div-int/lit8 v14, v16, 0x2

    .line 6095
    .local v14, vslack:I
    div-int/lit8 v16, v15, 0x4

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 6096
    div-int/lit8 v14, v15, 0x4

    .line 6097
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    .line 6099
    .local v13, vs:I
    add-int v16, v13, v14

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 6100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v13, v14

    sub-int v18, v3, v12

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 6107
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v6, v16, v17

    .line 6108
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    .line 6109
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 6110
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v6, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v10

    .line 6112
    .local v10, rightChar:I
    move v9, v11

    .line 6113
    .local v9, newStart:I
    if-ge v9, v7, :cond_6

    .line 6114
    move v9, v7

    .line 6119
    :cond_4
    :goto_2
    if-eq v9, v11, :cond_7

    .line 6120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6121
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 6101
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #newStart:I
    .end local v10           #rightChar:I
    .restart local p0
    :cond_5
    add-int v16, v15, v13

    sub-int v16, v16, v14

    move v0, v3

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 6102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v15, v13

    sub-int v17, v17, v14

    sub-int v18, v3, v12

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .line 6115
    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v9       #newStart:I
    .restart local v10       #rightChar:I
    :cond_6
    if-le v9, v10, :cond_4

    .line 6116
    move v9, v10

    goto :goto_2

    .line 6124
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4054
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4056
    iput-boolean v2, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 4058
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 4059
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 4060
    iput-boolean v2, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 4063
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4064
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 4065
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 4066
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4068
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_2

    .line 4069
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4072
    :cond_2
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 5206
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 4875
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 5124
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 12
    .parameter "menu"

    .prologue
    .line 7690
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7691
    const/4 v0, 0x0

    .line 7692
    .local v0, added:Z
    iget-boolean v8, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 7699
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v8, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 7702
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_3

    .line 7821
    :cond_1
    :goto_1
    return-void

    .line 7692
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 7709
    :cond_3
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7712
    .local v1, handler:Landroid/widget/TextView$MenuHandler;
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 7714
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 7721
    :goto_2
    iget-boolean v8, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v8, :cond_9

    .line 7726
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7727
    const/4 v8, 0x0

    const v9, 0x1020020

    const/4 v10, 0x0

    const v11, 0x1040003

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x78

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7730
    const/4 v0, 0x1

    .line 7733
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7734
    const/4 v8, 0x0

    const v9, 0x1020021

    const/4 v10, 0x0

    const v11, 0x1040001

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x63

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7737
    const/4 v0, 0x1

    .line 7740
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7741
    const/4 v8, 0x0

    const v9, 0x1020022

    const/4 v10, 0x0

    const v11, 0x104000b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x76

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7744
    const/4 v0, 0x1

    .line 7810
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 7811
    const/4 v8, 0x1

    const v9, 0x1020024

    const/4 v10, 0x0

    const v11, 0x1040325

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7813
    const/4 v0, 0x1

    .line 7817
    :cond_7
    if-eqz v0, :cond_1

    .line 7818
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7819
    const v8, 0x1040327

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 7717
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_2

    .line 7750
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 7751
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v8

    if-nez v8, :cond_a

    .line 7755
    const/4 v8, 0x0

    const v9, 0x1020028

    const/4 v10, 0x0

    const v11, 0x1040324

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7758
    :cond_a
    const/4 v8, 0x0

    const v9, 0x102001f

    const/4 v10, 0x0

    const v11, 0x104000d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x61

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7761
    const/4 v0, 0x1

    .line 7764
    :cond_b
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spanned;

    if-eqz v8, :cond_c

    .line 7765
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 7766
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 7768
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7769
    .local v3, min:I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7771
    .local v2, max:I
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local v4           #selEnd:I
    check-cast v4, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v4, v3, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 7773
    .local v6, urls:[Landroid/text/style/URLSpan;
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 7774
    const/4 v8, 0x0

    const v9, 0x1020023

    const/4 v10, 0x0

    const v11, 0x1040002

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7776
    const/4 v0, 0x1

    .line 7780
    .end local v2           #max:I
    .end local v3           #min:I
    .end local v5           #selStart:I
    .end local v6           #urls:[Landroid/text/style/URLSpan;
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 7781
    const/4 v8, 0x0

    const v9, 0x1020022

    const/4 v10, 0x0

    const v11, 0x104000b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x76

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7784
    const/4 v0, 0x1

    .line 7797
    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->getWordForDictionary()Ljava/lang/String;

    move-result-object v7

    .line 7798
    .local v7, word:Ljava/lang/String;
    if-eqz v7, :cond_6

    goto/16 :goto_3
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    const/high16 v3, 0x4000

    .line 4879
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4880
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_0

    .line 4881
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4883
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4884
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_3

    .line 4885
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4886
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4887
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4888
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4889
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4893
    :goto_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    .line 4895
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4898
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4904
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4905
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4908
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_2

    .line 4913
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4915
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4916
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_5

    .line 4917
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 4918
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 4919
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 4920
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move-object v1, v0

    .line 4924
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v1

    .line 4891
    :cond_3
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 4902
    :cond_4
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 4924
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 4076
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4078
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4079
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 4080
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 4081
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4082
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4084
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 4085
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4087
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_2

    .line 4088
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4092
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 4093
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 4096
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_4

    .line 4097
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1}, Landroid/widget/TextView$Blink;->cancel()V

    .line 4100
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_5

    .line 4101
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 4104
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_6

    .line 4105
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 4108
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4109
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 46
    .parameter "canvas"

    .prologue
    .line 4198
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 4201
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4203
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v24

    .line 4204
    .local v24, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v26

    .line 4205
    .local v26, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    .line 4206
    .local v25, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v23

    .line 4207
    .local v23, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v39, v0

    .line 4208
    .local v39, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    .line 4209
    .local v40, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v38, v0

    .line 4210
    .local v38, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v35, v0

    .line 4211
    .local v35, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    .line 4212
    .local v17, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v42, v0

    .line 4214
    .local v42, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v28, v0

    .line 4215
    .local v28, dr:Landroid/widget/TextView$Drawables;
    if-eqz v28, :cond_3

    .line 4221
    sub-int v6, v17, v42

    sub-int v6, v6, v23

    sub-int v45, v6, v26

    .line 4222
    .local v45, vspace:I
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    sub-int v32, v6, v24

    .line 4226
    .local v32, hspace:I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 4227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4228
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v6, v0

    add-int v6, v6, v39

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4231
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4237
    :cond_0
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 4238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4239
    add-int v6, v39, v38

    sub-int v6, v6, v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4241
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4247
    :cond_1
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_2

    .line 4248
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4249
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v7, v0

    add-int v7, v7, v40

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4251
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4257
    :cond_2
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 4258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4259
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v17

    sub-int v7, v7, v42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4262
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4263
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4267
    .end local v32           #hspace:I
    .end local v45           #vspace:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPreDrawState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 4268
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v36

    .line 4269
    .local v36, observer:Landroid/view/ViewTreeObserver;
    if-eqz v36, :cond_4

    .line 4270
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4271
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 4275
    .end local v36           #observer:Landroid/view/ViewTreeObserver;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v22, v0

    .line 4277
    .local v22, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    if-nez v6, :cond_5

    .line 4278
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4281
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4282
    .local v34, layout:Landroid/text/Layout;
    move/from16 v27, v22

    .line 4284
    .local v27, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object v6, v0

    if-eqz v6, :cond_6

    .line 4286
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v22, v0

    .line 4289
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4292
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    iput-object v7, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4300
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v30

    .line 4301
    .local v30, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v29

    .line 4303
    .local v29, extendedPaddingBottom:I
    add-int v6, v24, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 4304
    .local v19, clipLeft:F
    add-int v6, v30, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    .line 4305
    .local v21, clipTop:F
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    add-int v6, v6, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    .line 4306
    .local v20, clipRight:F
    sub-int v6, v17, v42

    sub-int v6, v6, v29

    add-int v6, v6, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    .line 4308
    .local v18, clipBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    .line 4309
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4310
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4312
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4313
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v18, v18, v6

    .line 4316
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4318
    const/16 v44, 0x0

    .line 4319
    .local v44, voffsetText:I
    const/16 v43, 0x0

    .line 4324
    .local v43, voffsetCursor:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_9

    .line 4325
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v44

    .line 4326
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v43

    .line 4328
    :cond_9
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-int v7, v30, v44

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_b

    .line 4332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSingleLine:Z

    move v6, v0

    if-nez v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4338
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4343
    :cond_b
    const/16 v31, 0x0

    .line 4344
    .local v31, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4351
    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v6, v0

    if-eqz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4352
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4353
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCursorVisible:Z

    move v6, v0

    if-eqz v6, :cond_f

    if-ltz v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    if-nez v6, :cond_d

    .line 4357
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4359
    :cond_d
    if-ne v7, v8, :cond_17

    .line 4360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mShowCursor:J

    move-wide v13, v0

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_f

    .line 4361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_e

    .line 4362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4364
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4369
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isShowCursorColor:Z

    move v6, v0

    if-nez v6, :cond_16

    .line 4371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4378
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 4409
    :cond_f
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v33, v0

    .line 4410
    .local v33, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v33, :cond_14

    move-object/from16 v0, v33

    iget v0, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    move v6, v0

    if-nez v6, :cond_14

    .line 4411
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 4412
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_14

    .line 4413
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 4414
    const/16 v37, 0x0

    .line 4415
    .local v37, reported:Z
    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    move v6, v0

    if-nez v6, :cond_10

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    move v6, v0

    if-eqz v6, :cond_11

    .line 4419
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v37

    .line 4421
    :cond_11
    if-nez v37, :cond_13

    if-eqz v31, :cond_13

    .line 4422
    const/4 v9, -0x1

    .line 4423
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 4424
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_12

    .line 4425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    check-cast v41, Landroid/text/Spannable;

    .line 4426
    .local v41, sp:Landroid/text/Spannable;
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 4427
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v41           #sp:Landroid/text/Spannable;
    :cond_12
    move-object/from16 v6, p0

    .line 4429
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4433
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v37           #reported:Z
    :cond_13
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v31, :cond_14

    .line 4434
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v31

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4435
    .end local v7           #selStart:I
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    .end local v8           #selEnd:I
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v6, v7

    .line 4437
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4438
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4440
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    sub-int v8, v43, v44

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4442
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v11, v8

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v8, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v9, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4447
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4454
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4467
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 4470
    return-void

    .line 4373
    .end local v33           #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v7       #selStart:I
    .restart local v8       #selEnd:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    const v9, -0xeb9006

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    const/high16 v9, 0x4040

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 4383
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_18

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4386
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4390
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v9, v0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    goto/16 :goto_1
.end method

.method public onEditorAction(I)V
    .locals 23
    .parameter "actionCode"

    .prologue
    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v20, v0

    .line 3442
    .local v20, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v20, :cond_3

    .line 3443
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 3444
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3488
    :cond_0
    :goto_0
    return-void

    .line 3455
    :cond_1
    const/4 v4, 0x5

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 3456
    const/16 v4, 0x82

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3457
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_0

    .line 3458
    const/16 v4, 0x82

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3459
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3465
    .end local v22           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x6

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 3466
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 3467
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_0

    .line 3468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 3474
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 3475
    .local v19, h:Landroid/os/Handler;
    if-eqz v19, :cond_0

    .line 3476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3477
    .local v5, eventTime:J
    const/16 v16, 0x3f3

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v5

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3482
    const/16 v4, 0x3f3

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v5

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 5213
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 6866
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 6869
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6870
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6874
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 6876
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6973
    :goto_0
    return-void

    .line 6880
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6882
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 6884
    if-eqz p1, :cond_d

    .line 6885
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 6886
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 6890
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_b

    if-nez v9, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_b

    move v6, v3

    .line 6892
    .local v6, isFocusHighlighted:Z
    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v6, :cond_c

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 6894
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    if-gez v8, :cond_7

    .line 6897
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 6898
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_2

    .line 6899
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6902
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 6903
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 6911
    :cond_3
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ltz v9, :cond_5

    if-ltz v8, :cond_5

    .line 6922
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6925
    :cond_5
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_6

    .line 6926
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6929
    :cond_6
    iput-boolean v3, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6932
    .end local v7           #lastTapPosition:I
    :cond_7
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 6933
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6935
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8

    .line 6936
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 6937
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6940
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6942
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 6943
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 6966
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6968
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_a

    .line 6969
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 6972
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_b
    move v6, v2

    .line 6890
    goto/16 :goto_1

    .restart local v6       #isFocusHighlighted:Z
    :cond_c
    move v0, v2

    .line 6892
    goto :goto_2

    .line 6946
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 6947
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 6950
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6952
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 6953
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_f

    .line 6956
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 6961
    :goto_4
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_9

    .line 6962
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v0, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    .line 6958
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4572
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4573
    .local v0, which:I
    if-nez v0, :cond_0

    .line 4575
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4578
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4583
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4585
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 4586
    .local v2, which:I
    if-nez v2, :cond_0

    .line 4588
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4621
    :goto_0
    return v3

    .line 4590
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    .line 4592
    goto :goto_0

    .line 4595
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 4602
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4603
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    .line 4604
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4605
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 4606
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4607
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 4609
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v3, :cond_3

    .line 4610
    invoke-virtual {p0, v6, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move v3, v5

    .line 4621
    goto :goto_0

    .line 4613
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 4614
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4615
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 4616
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4617
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7418
    sparse-switch p1, :sswitch_data_0

    .line 7448
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 7420
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7421
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7427
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7428
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7434
    :sswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7435
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7441
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7442
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7418
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x82

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4778
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4779
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4871
    :goto_0
    return v2

    .line 4782
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4783
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 4785
    sparse-switch p1, :sswitch_data_0

    .line 4863
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_8

    .line 4864
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 4865
    goto :goto_0

    .line 4787
    :sswitch_0
    iput-boolean v4, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4797
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_2

    .line 4798
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4800
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4802
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4805
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4808
    :sswitch_1
    iput-boolean v4, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4809
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_3

    .line 4812
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v4, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 4813
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 4815
    goto :goto_0

    .line 4819
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4831
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_7

    .line 4832
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 4834
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 4835
    invoke-virtual {v1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4836
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4845
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v5

    .line 4846
    goto/16 :goto_0

    .line 4847
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 4851
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4852
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    .line 4853
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4858
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4867
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    .line 4868
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    .line 4869
    goto/16 :goto_0

    .line 4871
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4785
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5512
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5513
    .local v22, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 5514
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 5515
    .local v23, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 5520
    .local v16, heightSize:I
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5521
    .local v6, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5523
    .local v7, hintBoring:Landroid/text/BoringLayout$Metrics;
    const/4 v10, -0x1

    .line 5524
    .local v10, des:I
    const/4 v13, 0x0

    .line 5526
    .local v13, fromexisting:Z
    const/high16 v3, 0x4000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 5528
    move/from16 v21, v23

    .line 5612
    .local v21, width:I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 5613
    .local v4, want:I
    move/from16 v20, v4

    .line 5614
    .local v20, unpaddedWidth:I
    move v5, v4

    .line 5616
    .local v5, hintWant:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 5617
    const/16 v4, 0x4000

    .line 5619
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_16

    move/from16 v18, v5

    .line 5621
    .local v18, hintWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_17

    .line 5622
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5640
    :cond_2
    :goto_2
    const/high16 v3, 0x4000

    if-ne v15, v3, :cond_1b

    .line 5642
    move/from16 v14, v16

    .line 5643
    .local v14, height:I
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5655
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v3, v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .end local v4           #want:I
    sub-int v19, v3, v4

    .line 5656
    .local v19, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    if-le v3, v4, :cond_4

    .line 5657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5664
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v3, v0

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    .line 5667
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5672
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 5673
    return-void

    .line 5530
    .end local v5           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v19           #unpaddedHeight:I
    .end local v20           #unpaddedWidth:I
    .end local v21           #width:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_7

    .line 5531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v10

    .line 5534
    :cond_7
    if-gez v10, :cond_11

    .line 5535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 5536
    if-eqz v6, :cond_8

    .line 5537
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5543
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v3, :cond_12

    .line 5544
    :cond_9
    if-gez v10, :cond_a

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v10, v3

    .line 5548
    :cond_a
    move/from16 v21, v10

    .line 5553
    .restart local v21       #width:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v12, v0

    .line 5554
    .local v12, dr:Landroid/widget/TextView$Drawables;
    if-eqz v12, :cond_b

    .line 5555
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5556
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5559
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-eqz v3, :cond_10

    .line 5560
    const/16 v17, -0x1

    .line 5563
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_c

    .line 5564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 5567
    :cond_c
    if-gez v17, :cond_d

    .line 5568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 5569
    if-eqz v7, :cond_d

    .line 5570
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5574
    :cond_d
    if-eqz v7, :cond_e

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v3, :cond_13

    .line 5575
    :cond_e
    if-gez v17, :cond_f

    .line 5576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5580
    :cond_f
    move/from16 v18, v17

    .line 5585
    .restart local v18       #hintWidth:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    .line 5586
    move/from16 v21, v18

    .line 5590
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v21, v21, v3

    .line 5592
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 5593
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 5598
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 5599
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5605
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5607
    const/high16 v3, -0x8000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 5608
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_0

    .line 5540
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .end local v21           #width:I
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 5550
    :cond_12
    move-object v0, v6

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v21, v0

    .restart local v21       #width:I
    goto/16 :goto_6

    .line 5582
    .restart local v12       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_13
    move-object v0, v7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_7

    .line 5595
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_8

    .line 5601
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_9

    .line 5619
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .restart local v4       #want:I
    .restart local v5       #hintWant:I
    .restart local v20       #unpaddedWidth:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move/from16 v18, v3

    goto/16 :goto_1

    .line 5624
    .restart local v18       #hintWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_18

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int v8, v21, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_2

    .line 5627
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-le v4, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    instance-of v3, v3, Landroid/text/BoringLayout;

    if-nez v3, :cond_19

    if-eqz v13, :cond_1a

    if-ltz v10, :cond_1a

    if-gt v10, v4, :cond_1a

    .line 5631
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 5633
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 5645
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v11

    .line 5647
    .local v11, desired:I
    move v14, v11

    .line 5648
    .restart local v14       #height:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5650
    const/high16 v3, -0x8000

    if-ne v15, v3, :cond_3

    .line 5651
    move v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_3

    .line 5669
    .end local v4           #want:I
    .end local v11           #desired:I
    .restart local v19       #unpaddedHeight:I
    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3992
    iget v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v3, v5, :cond_0

    move v3, v5

    .line 4049
    :goto_0
    return v3

    .line 3996
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 3997
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4000
    :cond_1
    const/4 v0, 0x0

    .line 4002
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 4003
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v3, :cond_2

    .line 4004
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .end local v2           #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    check-cast v2, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 4009
    .restart local v2       #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_8

    .line 4014
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4015
    .local v1, curs:I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4016
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4024
    :cond_3
    if-gez v1, :cond_4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    .line 4026
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4029
    :cond_4
    if-ltz v1, :cond_5

    .line 4030
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 4042
    .end local v1           #curs:I
    :cond_5
    :goto_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-nez v3, :cond_6

    instance-of v3, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4044
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 4045
    iput-boolean v6, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 4048
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 4049
    if-nez v0, :cond_9

    move v3, v5

    goto :goto_0

    .line 4033
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_1

    :cond_9
    move v3, v6

    .line 4049
    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 5226
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    .line 2522
    instance-of v5, p1, Landroid/widget/TextView$SavedState;

    if-nez v5, :cond_1

    .line 2523
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2569
    :cond_0
    :goto_0
    return-void

    .line 2527
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    move-object v4, v0

    .line 2528
    .local v4, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v4}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2531
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 2532
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2535
    :cond_2
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v5, :cond_5

    .line 2536
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_5

    .line 2537
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2539
    .local v2, len:I
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v5, v2, :cond_3

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v5, v2, :cond_6

    .line 2540
    :cond_3
    const-string v3, ""

    .line 2542
    .local v3, restored:Ljava/lang/String;
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 2543
    const-string v3, "(restored) "

    .line 2546
    :cond_4
    const-string v5, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved cursor position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of range for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    .end local v2           #len:I
    .end local v3           #restored:Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 2561
    iget-object v1, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 2563
    .local v1, error:Ljava/lang/CharSequence;
    new-instance v5, Landroid/widget/TextView$1;

    invoke-direct {v5, p0, v1}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2550
    .end local v1           #error:Ljava/lang/CharSequence;
    .restart local v2       #len:I
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    iget v6, v4, Landroid/widget/TextView$SavedState;->selStart:I

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2553
    iget-boolean v5, v4, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v5, :cond_5

    .line 2554
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 2465
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2468
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2469
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2470
    .local v8, start:I
    const/4 v2, 0x0

    .line 2472
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    .line 2473
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2474
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2475
    if-gez v8, :cond_0

    if-ltz v2, :cond_1

    .line 2477
    :cond_0
    const/4 v5, 0x1

    .line 2481
    :cond_1
    if-eqz v5, :cond_5

    .line 2482
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2484
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2485
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2487
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_4

    .line 2496
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2499
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 2500
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2499
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2503
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_2
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 2508
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ltz v8, :cond_3

    if-ltz v2, :cond_3

    .line 2509
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 2512
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    move-object v10, v7

    .line 2517
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_2
    return-object v10

    .line 2505
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_5
    move-object v10, v9

    .line 2517
    goto :goto_2
.end method

.method protected onSelectionChanged(II)V
    .locals 0
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 6545
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 6858
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 6861
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6862
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6535
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .parameter "id"

    .prologue
    .line 7857
    const/4 v4, 0x0

    .line 7858
    .local v4, min:I
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 7860
    .local v3, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 7861
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 7862
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 7864
    .local v8, selEnd:I
    const/4 v12, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7865
    const/4 v12, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7868
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "clipboard"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7871
    .local v0, clip:Landroid/text/ClipboardManager;
    packed-switch p1, :pswitch_data_0

    .line 7932
    :pswitch_0
    const/4 v12, 0x0

    .end local p0
    .end local p1
    :goto_0
    return v12

    .line 7873
    .restart local p0
    .restart local p1
    :pswitch_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {p1, v12, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7874
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7875
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/TextView$CursorController;->show()V

    .line 7876
    const/4 v12, 0x1

    goto :goto_0

    .line 7879
    .restart local p1
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7880
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/TextView$CursorController;->show()V

    .line 7881
    const/4 v12, 0x1

    goto :goto_0

    .line 7884
    :pswitch_3
    iget-object v12, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v12, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7885
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7886
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7887
    const/4 v12, 0x1

    goto :goto_0

    .line 7890
    .restart local p1
    :pswitch_4
    iget-object v12, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v12, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7891
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7892
    const/4 v12, 0x1

    goto :goto_0

    .line 7895
    :pswitch_5
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 7897
    .local v7, paste:Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 7898
    invoke-direct {p0, v4, v3, v7}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v5

    .line 7899
    .local v5, minMax:J
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 7900
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v3

    .line 7901
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7902
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1, v4, v3, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7903
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7905
    .end local v5           #minMax:J
    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 7908
    .end local v7           #paste:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_6
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spanned;

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 7909
    .local v10, urls:[Landroid/text/style/URLSpan;
    array-length v12, v10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 7910
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7912
    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7915
    .end local v10           #urls:[Landroid/text/style/URLSpan;
    .restart local p0
    :pswitch_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7916
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3

    .line 7917
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 7919
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7922
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->getWordForDictionary()Ljava/lang/String;

    move-result-object v11

    .line 7923
    .local v11, word:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 7924
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7925
    .local v1, i:Landroid/content/Intent;
    const-string/jumbo v12, "word"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7926
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v13, 0x1000

    or-int/2addr v12, v13

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7927
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7929
    .end local v1           #i:Landroid/content/Intent;
    :cond_4
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7871
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 7110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7112
    .local v0, action:I
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7113
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7115
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 7116
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7119
    :cond_1
    if-nez v0, :cond_2

    .line 7122
    iput-boolean v11, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 7123
    iput-boolean v11, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7126
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 7133
    .local v8, result:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    if-eqz v9, :cond_6

    if-ne v0, v12, :cond_6

    .line 7134
    iput-boolean v11, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 7180
    :cond_3
    :goto_0
    if-eq v0, v12, :cond_4

    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    .line 7181
    :cond_4
    iput-boolean v11, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 7184
    :cond_5
    return v8

    .line 7135
    :cond_6
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v9, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_7
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_3

    .line 7137
    const/4 v2, 0x0

    .line 7140
    .local v2, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 7141
    .local v7, oldSelStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 7143
    .local v6, oldSelEnd:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 7144
    .local v4, oldScrollX:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 7146
    .local v5, oldScrollY:I
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_8

    .line 7147
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-interface {v10, p0, v9, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 7150
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 7151
    iget v9, p0, Landroid/view/View;->mScrollX:I

    if-ne v9, v4, :cond_9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v5, :cond_a

    .line 7153
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 7154
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 7156
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 7159
    :cond_a
    if-ne v0, v12, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Landroid/widget/TextView;->mScrolled:Z

    if-nez v9, :cond_d

    .line 7160
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 7163
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 7164
    .local v1, csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    if-ne v9, v7, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-ne v9, v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 7166
    :cond_b
    new-instance v1, Landroid/widget/TextView$CommitSelectionReceiver;

    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-direct {v1, p0, v7, v6}, Landroid/widget/TextView$CommitSelectionReceiver;-><init>(Landroid/widget/TextView;II)V

    .line 7169
    .restart local v1       #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    :cond_c
    invoke-virtual {v3, p0, v11, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v1, :cond_e

    move v9, v12

    :goto_1
    or-int/2addr v2, v9

    .line 7173
    invoke-direct {p0, v7, v6}, Landroid/widget/TextView;->onTapUpEvent(II)V

    .line 7177
    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_d
    if-eqz v2, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_0

    .restart local v1       #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    move v9, v11

    .line 7169
    goto :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7238
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7240
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7241
    const/4 v0, 0x1

    .line 7245
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7023
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7024
    if-eqz p2, :cond_0

    .line 7025
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7027
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 6995
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 6997
    if-eqz p1, :cond_1

    .line 6998
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 6999
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 7001
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7002
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 7003
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 7018
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 7019
    return-void

    .line 7007
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2

    .line 7008
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 7011
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 7012
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_3

    .line 7013
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 7015
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7980
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7981
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v1

    .line 7985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 6570
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6571
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6573
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 6574
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6577
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method reportExtractedText()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 5011
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 5012
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_2

    .line 5013
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5014
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 5015
    :cond_0
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 5016
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 5017
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5018
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 5019
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 5020
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 5024
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 5025
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 5027
    :cond_1
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5033
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 5035
    const/4 v0, 0x1

    .line 5041
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 7679
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7681
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7682
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 7683
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 7684
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 7685
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7686
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 6610
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6611
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6612
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6613
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6614
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6617
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6596
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6597
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6598
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6599
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6600
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6603
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1926
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1927
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1
    .parameter "pad"

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1620
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 1621
    if-eqz v0, :cond_0

    .line 1622
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 1631
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1632
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1633
    return-void

    .line 1625
    :cond_1
    if-nez v0, :cond_2

    .line 1626
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1628
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1443
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1445
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move v2, v4

    .line 1448
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1450
    if-eqz v1, :cond_1

    .line 1451
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_3

    .line 1452
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1541
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1542
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1543
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v6

    .line 1445
    goto :goto_0

    .line 1456
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1457
    :cond_4
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1458
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1459
    :cond_5
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1460
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1461
    :cond_6
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1462
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1463
    :cond_7
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1464
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1465
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1466
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1467
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1471
    :cond_8
    if-nez v1, :cond_9

    .line 1472
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1475
    :cond_9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    .line 1476
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1478
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1480
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 1481
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1483
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1485
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_c

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    .line 1486
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1488
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1490
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v4, p4, :cond_d

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_d

    .line 1491
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1493
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1495
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1498
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1500
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 1501
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1502
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1503
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1504
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1505
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1510
    :goto_2
    if-eqz p3, :cond_f

    .line 1511
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1512
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1513
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1514
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1515
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1520
    :goto_3
    if-eqz p2, :cond_10

    .line 1521
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1522
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1523
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1524
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1525
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1530
    :goto_4
    if-eqz p4, :cond_11

    .line 1531
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1532
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1533
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1534
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1535
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 1507
    :cond_e
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    .line 1517
    :cond_f
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    .line 1527
    :cond_10
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 1537
    :cond_11
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1562
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1563
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1567
    return-void

    :cond_1
    move-object v1, v4

    .line 1563
    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1583
    if-eqz p1, :cond_0

    .line 1584
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1586
    :cond_0
    if-eqz p3, :cond_1

    .line 1587
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1589
    :cond_1
    if-eqz p2, :cond_2

    .line 1590
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1592
    :cond_2
    if-eqz p4, :cond_3

    .line 1593
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1595
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1596
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 2
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6329
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 6330
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6332
    if-eqz p1, :cond_1

    .line 6333
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6339
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6340
    return-void

    .line 6334
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 6335
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 2607
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2608
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2609
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 6279
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6281
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 6282
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6283
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6284
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6286
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2279
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2280
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2282
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2283
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2284
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3575
    if-nez p1, :cond_0

    .line 3576
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3585
    :goto_0
    return-void

    .line 3578
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3582
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3583
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3597
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3599
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3600
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3601
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3602
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 3603
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3609
    :goto_0
    if-nez p1, :cond_3

    .line 3610
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_1

    .line 3611
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3612
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3615
    :cond_0
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3622
    :cond_1
    :goto_1
    return-void

    .line 3606
    :cond_2
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3618
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3619
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_1
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 5063
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 5064
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 5065
    if-nez v1, :cond_3

    .line 5066
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5085
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 5086
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 5087
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5088
    .local v4, start:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 5090
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5091
    .local v2, end:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 5093
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5096
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 5097
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 5101
    :goto_3
    return-void

    .line 5067
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    .line 5068
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5069
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5071
    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 5072
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5073
    .restart local v4       #start:I
    if-le v4, v0, :cond_5

    move v4, v0

    .line 5074
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 5075
    .restart local v2       #end:I
    if-le v2, v0, :cond_6

    move v2, v0

    .line 5076
    :cond_6
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 5077
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5089
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 5092
    .restart local v2       #end:I
    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 5099
    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 5107
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 5108
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 5110
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 5111
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 3792
    if-nez p1, :cond_0

    .line 3793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3796
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 3798
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 3799
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3801
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3764
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 3766
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 3767
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3768
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3769
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 3773
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3775
    return v6
.end method

.method public setFreezesText(Z)V
    .locals 0
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2586
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2587
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .parameter "gravity"

    .prologue
    .line 2047
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 2048
    or-int/lit8 p1, p1, 0x3

    .line 2050
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 2051
    or-int/lit8 p1, p1, 0x30

    .line 2054
    :cond_1
    const/4 v7, 0x0

    .line 2056
    .local v7, newLayout:Z
    and-int/lit8 v0, p1, 0x7

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    if-eq v0, v3, :cond_2

    .line 2058
    const/4 v7, 0x1

    .line 2061
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 2062
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2065
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2067
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 2069
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2070
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 2072
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2076
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4
    return-void

    .line 2070
    .restart local v1       #want:I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2209
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2210
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2212
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2213
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2214
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1884
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 1885
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 1886
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1888
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3153
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3154
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3134
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 3136
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3137
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 3140
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3141
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3143
    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1976
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1977
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1978
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 1986
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1987
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1988
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .parameter "whether"

    .prologue
    .line 2121
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2123
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2124
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2125
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2126
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2128
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3377
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3378
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3380
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3381
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3382
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 3349
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3350
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3352
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3353
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .parameter "includepad"

    .prologue
    .line 5499
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 5501
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 5502
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5503
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5504
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5506
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3528
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3529
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3530
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3531
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3532
    return-void
.end method

.method public setInputType(I)V
    .locals 12
    .parameter "type"

    .prologue
    const/4 v11, 0x3

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3181
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 3182
    .local v5, wasPassword:Z
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 3183
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 3184
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 3185
    .local v2, isPassword:Z
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 3186
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 3187
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_4

    .line 3188
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3189
    invoke-direct {p0, v11, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3203
    :cond_0
    :goto_0
    const v7, 0x2000f

    and-int/2addr v7, p1

    const v8, 0x20001

    if-ne v7, v8, :cond_8

    move v4, v10

    .line 3210
    .local v4, multiLine:Z
    :goto_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eq v7, v4, :cond_1

    if-eqz v0, :cond_2

    .line 3213
    :cond_1
    if-nez v4, :cond_9

    move v7, v10

    :goto_2
    if-nez v2, :cond_a

    move v8, v10

    :goto_3
    invoke-direct {p0, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 3216
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3217
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3218
    :cond_3
    return-void

    .line 3190
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #multiLine:Z
    :cond_4
    if-eqz v3, :cond_6

    .line 3191
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_5

    .line 3192
    const/4 v0, 0x1

    .line 3194
    :cond_5
    invoke-direct {p0, v11, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_0

    .line 3195
    :cond_6
    if-nez v5, :cond_7

    if-eqz v6, :cond_0

    .line 3197
    :cond_7
    invoke-direct {p0, v8, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3198
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 3199
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v4, v9

    .line 3203
    goto :goto_1

    .restart local v4       #multiLine:Z
    :cond_9
    move v7, v9

    .line 3213
    goto :goto_2

    :cond_a
    move v8, v9

    goto :goto_3
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    .line 1169
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1170
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1172
    if-eqz p1, :cond_3

    .line 1174
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :goto_0
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_0

    .line 1180
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_2

    .line 1181
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    .line 1190
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1191
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1192
    :cond_1
    return-void

    .line 1175
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1176
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    iput v3, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0

    .line 1183
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1

    .line 1187
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2311
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2312
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2314
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2315
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2316
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2317
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2319
    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2193
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2194
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2196
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2197
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2198
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2015
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2016
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2017
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2025
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2026
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2027
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1939
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 1940
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .parameter "marqueeLimit"

    .prologue
    .line 6295
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 6296
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2251
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2252
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2254
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2255
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2256
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2179
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2180
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2182
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2183
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2184
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2165
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2166
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2168
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2169
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2170
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2265
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2266
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2268
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2269
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2270
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2223
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2224
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2226
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2227
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2228
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2151
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2152
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2154
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2155
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2156
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2137
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2138
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2140
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2141
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2142
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2237
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2238
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2240
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2241
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2242
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .parameter "movement"

    .prologue
    .line 1222
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1224
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1230
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1231
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3415
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3416
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3418
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3419
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1645
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 1649
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1653
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1654
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1655
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2103
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2104
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2106
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2107
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2108
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2109
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2112
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3500
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3501
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3502
    return-void
.end method

.method public setRawInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3283
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3284
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 7249
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 7250
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6315
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 6317
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 6318
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6320
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    .line 7042
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 7044
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 7046
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 7047
    if-eqz p1, :cond_1

    .line 7048
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 7053
    :cond_0
    :goto_0
    return-void

    .line 7050
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1900
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1902
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 1903
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 1904
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 1906
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1907
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 6225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6226
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 3
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6240
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_0

    .line 6242
    if-eqz p1, :cond_1

    .line 6243
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 6248
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 6249
    return-void

    .line 6245
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 2615
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2616
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2617
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3118
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3119
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 3122
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3123
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2633
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2657
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2659
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 2660
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2662
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 2818
    const/4 v0, 0x0

    .line 2820
    .local v0, oldlen:I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 2821
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2829
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 2830
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2831
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2836
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 2837
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 2842
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2843
    return-void

    .line 2833
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 2839
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1673
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1681
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1682
    .local v1, color:I
    if-eqz v1, :cond_0

    .line 1683
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1686
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1688
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 1689
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1692
    :cond_1
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1694
    .local v4, ts:I
    if-eqz v4, :cond_2

    .line 1695
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1698
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1700
    if-eqz v2, :cond_3

    .line 1701
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1704
    :cond_3
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1706
    if-eqz v2, :cond_4

    .line 1707
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1712
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1714
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1717
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1718
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1719
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1841
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1842
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1843
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 1851
    if-nez p1, :cond_0

    .line 1852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1855
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1856
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1857
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2645
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2646
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 6
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 3101
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3102
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3103
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3105
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3107
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 3108
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 3109
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3114
    :cond_1
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1792
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 1793
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1795
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1796
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1797
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1798
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1801
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1739
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1740
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 1752
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1755
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1760
    .local v1, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1762
    return-void

    .line 1758
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTextZTE(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2851
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2852
    return-void
.end method

.method public setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2854
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2856
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2859
    :cond_0
    return-void
.end method

.method public final setTextZTE([CII)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 3003
    const/4 v0, 0x0

    .line 3005
    .local v0, oldlen:I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 3006
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3014
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 3015
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3016
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3021
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 3022
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 3027
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3028
    return-void

    .line 3018
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 3024
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_0

    .line 1276
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1273
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1275
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 1814
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1815
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1817
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1818
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1819
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1820
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1823
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1054
    if-lez p2, :cond_4

    .line 1055
    if-nez p1, :cond_0

    .line 1056
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1061
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1063
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 1064
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 1065
    .local v0, need:I
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1066
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    const/high16 v3, -0x4180

    :goto_3
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1072
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_4
    return-void

    .line 1058
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 1063
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_2
    move v3, v4

    .line 1065
    goto :goto_2

    :cond_3
    move v3, v5

    .line 1066
    goto :goto_3

    .line 1068
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1069
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1070
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2295
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2296
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2298
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2299
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2300
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v7, 0x1

    .line 6659
    const/4 v4, 0x0

    .line 6660
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 6662
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6664
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    .line 6665
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6666
    const/4 v4, 0x1

    .line 6667
    move v2, p4

    .line 6669
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6670
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6673
    :cond_0
    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 6674
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6675
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6677
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6679
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6684
    :cond_2
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_5

    .line 6685
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6686
    const/4 v4, 0x1

    .line 6687
    move v3, p4

    .line 6689
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6690
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6693
    :cond_3
    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 6694
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6695
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6699
    .end local v0           #end:I
    :cond_5
    if-eqz v4, :cond_8

    .line 6700
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_8

    .line 6701
    if-gez v3, :cond_6

    .line 6702
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 6704
    :cond_6
    if-gez v2, :cond_7

    .line 6705
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6707
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 6711
    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_9

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_b

    .line 6713
    :cond_9
    if-eqz v1, :cond_a

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_13

    .line 6714
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6715
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6716
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6722
    :cond_b
    :goto_0
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 6723
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6724
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6725
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6728
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 6729
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_14

    .line 6730
    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6737
    :cond_e
    :goto_1
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 6740
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 6741
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_15

    .line 6742
    if-ltz p3, :cond_10

    .line 6743
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 6744
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6746
    :cond_f
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 6747
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6750
    :cond_10
    if-ltz p4, :cond_12

    .line 6751
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 6752
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6754
    :cond_11
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 6755
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6766
    :cond_12
    :goto_2
    return-void

    .line 6718
    :cond_13
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0

    .line 6732
    :cond_14
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_1

    .line 6762
    :cond_15
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_2
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 5181
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5182
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5184
    .local v0, curs:I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 5186
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5189
    :cond_1
    if-ltz v0, :cond_2

    .line 5190
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5192
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 5194
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 5198
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 5199
    return-void
.end method

.method protected updateCursorControllerPositions()V
    .locals 1

    .prologue
    .line 4478
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4480
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4483
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4485
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4487
    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 4140
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 4141
    .local v0, verified:Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 4142
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4145
    :goto_0
    return v1

    .line 4142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 4145
    goto :goto_0
.end method
