.class Landroid/support/constraint/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroid/support/constraint/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V
    .locals 0

    .line 617
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->this$0:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0

    .line 609
    iput p3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 857
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 859
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 860
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_0

    .line 861
    check-cast v3, Landroid/support/constraint/Placeholder;

    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v0}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 868
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v2}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 869
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 628
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 643
    :cond_1
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    iget v6, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 652
    iget v8, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    iget v9, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v8, v9

    .line 653
    iget v9, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 660
    sget-object v11, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v11, v5, :cond_b

    if-eq v11, v15, :cond_9

    if-eq v11, v13, :cond_8

    if-eq v11, v12, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 680
    :cond_2
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 682
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v5, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 683
    :goto_1
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v11, v15

    .line 684
    iget-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v11, :cond_a

    if-eqz v9, :cond_4

    .line 685
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v13

    if-eqz v11, :cond_4

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v16

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_5

    :cond_4
    instance-of v11, v10, Landroid/support/constraint/Placeholder;

    if-eqz v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v9, :cond_7

    if-eqz v11, :cond_a

    .line 691
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 674
    :cond_8
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v11

    add-int/2addr v9, v11

    const/4 v11, -0x1

    .line 674
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 676
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v9, v15

    goto :goto_0

    .line 667
    :cond_9
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 669
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v9, v15

    :cond_a
    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    .line 662
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 663
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v9, v15

    move v6, v11

    goto :goto_0

    .line 699
    :goto_3
    sget-object v11, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_15

    if-eq v11, v15, :cond_13

    if-eq v11, v13, :cond_12

    const/4 v7, 0x4

    if-eq v11, v7, :cond_c

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 720
    :cond_c
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 723
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v8, v5, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    .line 724
    :goto_5
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v12, 0x0

    aput v12, v11, v13

    .line 725
    iget-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v11, :cond_14

    if-eqz v8, :cond_e

    .line 726
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v15

    if-eqz v11, :cond_e

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v5

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_f

    :cond_e
    instance-of v11, v10, Landroid/support/constraint/Placeholder;

    if-eqz v11, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    :goto_6
    if-eqz v8, :cond_11

    if-eqz v11, :cond_14

    .line 731
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_4

    .line 714
    :cond_12
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    .line 714
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 716
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v8, v13

    goto :goto_4

    .line 706
    :cond_13
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 709
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v8, v13

    :cond_14
    const/4 v8, 0x1

    goto :goto_7

    :cond_15
    const/high16 v8, 0x40000000    # 2.0f

    .line 701
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 702
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v8, v13

    move v7, v11

    goto :goto_4

    .line 739
    :goto_7
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_16

    const/4 v11, 0x1

    goto :goto_8

    :cond_16
    const/4 v11, 0x0

    .line 740
    :goto_8
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_17

    const/4 v12, 0x1

    goto :goto_9

    :cond_17
    const/4 v12, 0x0

    .line 742
    :goto_9
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v14, :cond_19

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_18

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v4, 0x1

    .line 744
    :goto_b
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v14, :cond_1b

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v14, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    const/4 v3, 0x1

    :goto_d
    const/4 v14, 0x0

    if-eqz v11, :cond_1c

    .line 746
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_e

    :cond_1c
    const/4 v13, 0x0

    :goto_e
    if-eqz v12, :cond_1d

    .line 747
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v14

    if-lez v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_f

    :cond_1d
    const/4 v5, 0x0

    .line 749
    :goto_f
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 755
    iget-boolean v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v15, :cond_1f

    if-eqz v11, :cond_1f

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v11, :cond_1f

    if-eqz v12, :cond_1f

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v11, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1a

    .line 759
    :cond_1f
    :goto_10
    instance-of v11, v10, Landroid/support/constraint/VirtualLayout;

    if-eqz v11, :cond_20

    instance-of v11, v1, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_20

    .line 760
    move-object v11, v1

    check-cast v11, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 761
    move-object v12, v10

    check-cast v12, Landroid/support/constraint/VirtualLayout;

    invoke-virtual {v12, v11, v6, v7}, Landroid/support/constraint/VirtualLayout;->onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V

    goto :goto_11

    .line 763
    :cond_20
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_11
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 767
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 768
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eqz v9, :cond_21

    .line 779
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v11, v9, v16

    .line 780
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v18, 0x2

    aput v12, v9, v18

    goto :goto_12

    :cond_21
    const/16 v16, 0x0

    const/16 v18, 0x2

    .line 782
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v16

    .line 783
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v18

    :goto_12
    if-eqz v8, :cond_22

    .line 786
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v9, 0x1

    aput v12, v8, v9

    .line 787
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v17, 0x3

    aput v11, v8, v17

    goto :goto_13

    :cond_22
    const/4 v9, 0x1

    const/16 v17, 0x3

    .line 789
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v9

    .line 790
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v8, v17

    .line 793
    :goto_13
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_23

    .line 794
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_14

    :cond_23
    move v8, v11

    .line 796
    :goto_14
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v9, :cond_24

    .line 797
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 799
    :cond_24
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v9, :cond_25

    .line 800
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_15

    :cond_25
    move v9, v12

    .line 802
    :goto_15
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_26

    .line 803
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_26
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v13, :cond_27

    if-eqz v4, :cond_27

    .line 807
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v5, v0

    goto :goto_16

    :cond_27
    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    .line 810
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v8

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_28
    move v5, v8

    :goto_16
    if-ne v11, v5, :cond_2a

    if-eq v12, v9, :cond_29

    goto :goto_18

    :cond_29
    move v0, v9

    :goto_17
    const/4 v3, -0x1

    goto :goto_1a

    :cond_2a
    :goto_18
    if-eq v11, v5, :cond_2b

    const/high16 v0, 0x40000000    # 2.0f

    .line 816
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_19

    :cond_2b
    const/high16 v0, 0x40000000    # 2.0f

    :goto_19
    if-eq v12, v9, :cond_2c

    .line 819
    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 821
    :cond_2c
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 823
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 824
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v3

    move v15, v3

    goto :goto_17

    :goto_1a
    if-eq v15, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v3, 0x0

    .line 835
    :goto_1b
    iget v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v5, v4, :cond_2f

    iget v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v0, v4, :cond_2e

    goto :goto_1c

    :cond_2e
    const/4 v4, 0x0

    goto :goto_1d

    :cond_2f
    :goto_1c
    const/4 v4, 0x1

    :goto_1d
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v4, :cond_30

    const/4 v3, 0x1

    :cond_30
    if-eqz v3, :cond_31

    const/4 v4, -0x1

    if-eq v15, v4, :cond_31

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v15, :cond_31

    const/4 v1, 0x1

    .line 841
    iput-boolean v1, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_31
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v0, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
