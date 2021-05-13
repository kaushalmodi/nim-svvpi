
# Overriding vpiSysFuncType vpiSysFuncReal vpiSysFuncTime vpiSysFuncSized vpiArrayVar vpiArrayNet vpiInterfaceDecl
# Importing /path/to/sv_vpi_user.h
# Command line:
#   /home/kmodi/.nimble/pkgs/nimterop-0.6.13/nimterop/toast --preprocess -m:c --recurse -f:ast2 --defines+=VPI_COMPATIBILITY_VERSION_1800v2009 --pnim --symOverride=vpiSysFuncType,vpiSysFuncReal,vpiSysFuncTime,vpiSysFuncSized,vpiArrayVar,vpiArrayNet,vpiInterfaceDecl --nim:/home/kmodi/usr_local/apps/7/nim/devel/bin/nim --pluginSourcePath=/tmp/kmodi/.cache/nim/nimterop/cPlugins/nimterop_225075350.nim /path/to/sv_vpi_user.h -o /tmp/kmodi/.cache/nim/nimterop/toastCache/nimterop_1710218288.nim

# const 'PLI_VEXTERN' has unsupported value 'extern'
# const 'XXTERN' has unsupported value 'PLI_EXTERN PLI_DLLISPEC'
# const 'EETERN' has unsupported value 'PLI_EXTERN PLI_DLLESPEC'
# const 'vpiBitXnorOp' has unsupported value 'vpiBitXNorOp /* added with 1364-2001 */'
# const 'vpi_compare_objects' has unsupported value 'vpi_compare_objects_1800v2009'
# const 'vpi_control' has unsupported value 'vpi_control_1800v2009'
# const 'vpi_get' has unsupported value 'vpi_get_1800v2009'
# const 'vpi_get_str' has unsupported value 'vpi_get_str_1800v2009'
# const 'vpi_get_value' has unsupported value 'vpi_get_value_1800v2009'
# const 'vpi_handle' has unsupported value 'vpi_handle_1800v2009'
# const 'vpi_handle_by_index' has unsupported value 'vpi_handle_by_index_1800v2009'
# const 'vpi_handle_by_multi_index' has unsupported value 'vpi_handle_by_multi_index_1800v2009'
# const 'vpi_handle_by_name' has unsupported value 'vpi_handle_by_name_1800v2009'
# const 'vpi_handle_multi' has unsupported value 'vpi_handle_multi_1800v2009'
# const 'vpi_iterate' has unsupported value 'vpi_iterate_1800v2009'
# const 'vpi_put_value' has unsupported value 'vpi_put_value_1800v2009'
# const 'vpi_register_cb' has unsupported value 'vpi_register_cb_1800v2009'
# const 'vpi_scan' has unsupported value 'vpi_scan_1800v2009'
{.push hint[ConvFromXtoItselfNotNeeded]: off.}

type va_list* {.importc, header:"<stdarg.h>".} = object


{.pragma: impsv_vpi_userHdr,
  header: "/path/to/sv_vpi_user.h".}
{.experimental: "codeReordering".}
{.passC: "-DVPI_COMPATIBILITY_VERSION_1800v2009".}
const
  vpiAlways* = 1
  vpiAssignStmt* = 2
  vpiAssignment* = 3
  vpiBegin* = 4
  vpiCase* = 5
  vpiCaseItem* = 6
  vpiConstant* = 7
  vpiContAssign* = 8
  vpiDeassign* = 9
  vpiDefParam* = 10
  vpiDelayControl* = 11
  vpiDisable* = 12
  vpiEventControl* = 13
  vpiEventStmt* = 14
  vpiFor* = 15
  vpiForce* = 16
  vpiForever* = 17
  vpiFork* = 18
  vpiFuncCall* = 19
  vpiFunction* = 20
  vpiGate* = 21
  vpiIf* = 22
  vpiIfElse* = 23
  vpiInitial* = 24
  vpiIntegerVar* = 25
  vpiInterModPath* = 26
  vpiIterator* = 27
  vpiIODecl* = 28
  vpiMemory* = 29
  vpiMemoryWord* = 30
  vpiModPath* = 31
  vpiModule* = 32
  vpiNamedBegin* = 33
  vpiNamedEvent* = 34
  vpiNamedFork* = 35
  vpiNet* = 36
  vpiNetBit* = 37
  vpiNullStmt* = 38
  vpiOperation* = 39
  vpiParamAssign* = 40
  vpiParameter* = 41
  vpiPartSelect* = 42
  vpiPathTerm* = 43
  vpiPort* = 44
  vpiPortBit* = 45
  vpiPrimTerm* = 46
  vpiRealVar* = 47
  vpiReg* = 48
  vpiRegBit* = 49
  vpiRelease* = 50
  vpiRepeat* = 51
  vpiRepeatControl* = 52
  vpiSchedEvent* = 53
  vpiSpecParam* = 54
  vpiSwitch* = 55
  vpiSysFuncCall* = 56
  vpiSysTaskCall* = 57
  vpiTableEntry* = 58
  vpiTask* = 59
  vpiTaskCall* = 60
  vpiTchk* = 61
  vpiTchkTerm* = 62
  vpiTimeVar* = 63
  vpiTimeQueue* = 64
  vpiUdp* = 65
  vpiUdpDefn* = 66
  vpiUserSystf* = 67
  vpiVarSelect* = 68
  vpiWait* = 69
  vpiWhile* = 70
  vpiAttribute* = 105
  vpiBitSelect* = 106
  vpiCallback* = 107
  vpiDelayTerm* = 108
  vpiDelayDevice* = 109
  vpiFrame* = 110
  vpiGateArray* = 111
  vpiModuleArray* = 112
  vpiPrimitiveArray* = 113
  vpiNetArray* = 114
  vpiRange* = 115
  vpiRegArray* = 116
  vpiSwitchArray* = 117
  vpiUdpArray* = 118
  vpiContAssignBit* = 128
  vpiNamedEventArray* = 129
  vpiIndexedPartSelect* = 130
  vpiGenScopeArray* = 133
  vpiGenScope* = 134
  vpiGenVar* = 135
  vpiCondition* = 71
  vpiDelay* = 72
  vpiElseStmt* = 73
  vpiForIncStmt* = 74
  vpiForInitStmt* = 75
  vpiHighConn* = 76
  vpiLhs* = 77
  vpiIndex* = 78
  vpiLeftRange* = 79
  vpiLowConn* = 80
  vpiParent* = 81
  vpiRhs* = 82
  vpiRightRange* = 83
  vpiScope* = 84
  vpiSysTfCall* = 85
  vpiTchkDataTerm* = 86
  vpiTchkNotifier* = 87
  vpiTchkRefTerm* = 88
  vpiArgument* = 89
  vpiBit* = 90
  vpiDriver* = 91
  vpiInternalScope* = 92
  vpiLoad* = 93
  vpiModDataPathIn* = 94
  vpiModPathIn* = 95
  vpiModPathOut* = 96
  vpiOperand* = 97
  vpiPortInst* = 98
  vpiProcess* = 99
  vpiVariables* = 100
  vpiUse* = 101
  vpiExpr* = 102
  vpiPrimitive* = 103
  vpiStmt* = 104
  vpiActiveTimeFormat* = 119
  vpiInTerm* = 120
  vpiInstanceArray* = 121
  vpiLocalDriver* = 122
  vpiLocalLoad* = 123
  vpiOutTerm* = 124
  vpiPorts* = 125
  vpiSimNet* = 126
  vpiTaskFunc* = 127
  vpiBaseExpr* = 131
  vpiWidthExpr* = 132
  vpiAutomatics* = 136
  vpiUndefined* = -1
  vpiType* = 1
  vpiName* = 2
  vpiFullName* = 3
  vpiSize* = 4
  vpiFile* = 5
  vpiLineNo* = 6
  vpiTopModule* = 7
  vpiCellInstance* = 8
  vpiDefName* = 9
  vpiProtected* = 10
  vpiTimeUnit* = 11
  vpiTimePrecision* = 12
  vpiDefNetType* = 13
  vpiUnconnDrive* = 14
  vpiHighZ* = 1
  vpiPull1* = 2
  vpiPull0* = 3
  vpiDefFile* = 15
  vpiDefLineNo* = 16
  vpiDefDelayMode* = 47
  vpiDelayModeNone* = 1
  vpiDelayModePath* = 2
  vpiDelayModeDistrib* = 3
  vpiDelayModeUnit* = 4
  vpiDelayModeZero* = 5
  vpiDelayModeMTM* = 6
  vpiDefDecayTime* = 48
  vpiScalar* = 17
  vpiVector* = 18
  vpiExplicitName* = 19
  vpiDirection* = 20
  vpiInput* = 1
  vpiOutput* = 2
  vpiInout* = 3
  vpiMixedIO* = 4
  vpiNoDirection* = 5
  vpiConnByName* = 21
  vpiNetType* = 22
  vpiWire* = 1
  vpiWand* = 2
  vpiWor* = 3
  vpiTri* = 4
  vpiTri0* = 5
  vpiTri1* = 6
  vpiTriReg* = 7
  vpiTriAnd* = 8
  vpiTriOr* = 9
  vpiSupply1* = 10
  vpiSupply0* = 11
  vpiNone* = 12
  vpiUwire* = 13
  vpiExplicitScalared* = 23
  vpiExplicitVectored* = 24
  vpiExpanded* = 25
  vpiImplicitDecl* = 26
  vpiChargeStrength* = 27
  vpiArray* = 28
  vpiPortIndex* = 29
  vpiTermIndex* = 30
  vpiStrength0* = 31
  vpiStrength1* = 32
  vpiPrimType* = 33
  vpiAndPrim* = 1
  vpiNandPrim* = 2
  vpiNorPrim* = 3
  vpiOrPrim* = 4
  vpiXorPrim* = 5
  vpiXnorPrim* = 6
  vpiBufPrim* = 7
  vpiNotPrim* = 8
  vpiBufif0Prim* = 9
  vpiBufif1Prim* = 10
  vpiNotif0Prim* = 11
  vpiNotif1Prim* = 12
  vpiNmosPrim* = 13
  vpiPmosPrim* = 14
  vpiCmosPrim* = 15
  vpiRnmosPrim* = 16
  vpiRpmosPrim* = 17
  vpiRcmosPrim* = 18
  vpiRtranPrim* = 19
  vpiRtranif0Prim* = 20
  vpiRtranif1Prim* = 21
  vpiTranPrim* = 22
  vpiTranif0Prim* = 23
  vpiTranif1Prim* = 24
  vpiPullupPrim* = 25
  vpiPulldownPrim* = 26
  vpiSeqPrim* = 27
  vpiCombPrim* = 28
  vpiPolarity* = 34
  vpiDataPolarity* = 35
  vpiPositive* = 1
  vpiNegative* = 2
  vpiUnknown* = 3
  vpiEdge* = 36
  vpiNoEdge* = 0x00000000
  vpiEdge01* = 0x00000001
  vpiEdge10* = 0x00000002
  vpiEdge0x* = 0x00000004
  vpiEdgex1* = 0x00000008
  vpiEdge1x* = 0x00000010
  vpiEdgex0* = 0x00000020
  vpiPosedge* = (
    vpiEdgex1 or typeof(vpiEdgex1)(vpiEdge01) or typeof(vpiEdgex1)(vpiEdge0x))
  vpiNegedge* = (
    vpiEdgex0 or typeof(vpiEdgex0)(vpiEdge10) or typeof(vpiEdgex0)(vpiEdge1x))
  vpiAnyEdge* = (vpiPosedge or typeof(vpiPosedge)(vpiNegedge))
  vpiPathType* = 37
  vpiPathFull* = 1
  vpiPathParallel* = 2
  vpiTchkType* = 38
  vpiSetup* = 1
  vpiHold* = 2
  vpiPeriod* = 3
  vpiWidth* = 4
  vpiSkew* = 5
  vpiRecovery* = 6
  vpiNoChange* = 7
  vpiSetupHold* = 8
  vpiFullskew* = 9
  vpiRecrem* = 10
  vpiRemoval* = 11
  vpiTimeskew* = 12
  vpiOpType* = 39
  vpiMinusOp* = 1
  vpiPlusOp* = 2
  vpiNotOp* = 3
  vpiBitNegOp* = 4
  vpiUnaryAndOp* = 5
  vpiUnaryNandOp* = 6
  vpiUnaryOrOp* = 7
  vpiUnaryNorOp* = 8
  vpiUnaryXorOp* = 9
  vpiUnaryXNorOp* = 10
  vpiSubOp* = 11
  vpiDivOp* = 12
  vpiModOp* = 13
  vpiEqOp* = 14
  vpiNeqOp* = 15
  vpiCaseEqOp* = 16
  vpiCaseNeqOp* = 17
  vpiGtOp* = 18
  vpiGeOp* = 19
  vpiLtOp* = 20
  vpiLeOp* = 21
  vpiLShiftOp* = 22
  vpiRShiftOp* = 23
  vpiAddOp* = 24
  vpiMultOp* = 25
  vpiLogAndOp* = 26
  vpiLogOrOp* = 27
  vpiBitAndOp* = 28
  vpiBitOrOp* = 29
  vpiBitXorOp* = 30
  vpiBitXNorOp* = 31
  vpiConditionOp* = 32
  vpiConcatOp* = 33
  vpiMultiConcatOp* = 34
  vpiEventOrOp* = 35
  vpiNullOp* = 36
  vpiListOp* = 37
  vpiMinTypMaxOp* = 38
  vpiPosedgeOp* = 39
  vpiNegedgeOp* = 40
  vpiArithLShiftOp* = 41
  vpiArithRShiftOp* = 42
  vpiPowerOp* = 43
  vpiConstType* = 40
  vpiDecConst* = 1
  vpiRealConst* = 2
  vpiBinaryConst* = 3
  vpiOctConst* = 4
  vpiHexConst* = 5
  vpiStringConst* = 6
  vpiIntConst* = 7
  vpiTimeConst* = 8
  vpiBlocking* = 41
  vpiCaseType* = 42
  vpiCaseExact* = 1
  vpiCaseX* = 2
  vpiCaseZ* = 3
  vpiNetDeclAssign* = 43
  vpiFuncType* = 44
  vpiIntFunc* = 1
  vpiRealFunc* = 2
  vpiTimeFunc* = 3
  vpiSizedFunc* = 4
  vpiSizedSignedFunc* = 5
  vpiSysFuncType* = vpiFuncType
  vpiSysFuncInt* = vpiIntFunc
  vpiSysFuncReal* = vpiRealFunc
  vpiSysFuncTime* = vpiTimeFunc
  vpiSysFuncSized* = vpiSizedFunc
  vpiUserDefn* = 45
  vpiScheduled* = 46
  vpiActive* = 49
  vpiAutomatic* = 50
  vpiCell* = 51
  vpiConfig* = 52
  vpiConstantSelect* = 53
  vpiDecompile* = 54
  vpiDefAttribute* = 55
  vpiDelayType* = 56
  vpiModPathDelay* = 1
  vpiInterModPathDelay* = 2
  vpiMIPDelay* = 3
  vpiIteratorType* = 57
  vpiLibrary* = 58
  vpiOffset* = 60
  vpiResolvedNetType* = 61
  vpiSaveRestartID* = 62
  vpiSaveRestartLocation* = 63
  vpiValid* = 64
  vpiValidFalse* = 0
  vpiValidTrue* = 1
  vpiSigned* = 65
  vpiLocalParam* = 70
  vpiModPathHasIfNone* = 71
  vpiIndexedPartSelectType* = 72
  vpiPosIndexed* = 1
  vpiNegIndexed* = 2
  vpiIsMemory* = 73
  vpiIsProtected* = 74
  vpiStop* = 66
  vpiFinish* = 67
  vpiReset* = 68
  vpiSetInteractiveScope* = 69
  VPI_MCD_STDOUT* = 0x00000001
  vpiScaledRealTime* = 1
  vpiSimTime* = 2
  vpiSuppressTime* = 3
  vpiSupplyDrive* = 0x00000080
  vpiStrongDrive* = 0x00000040
  vpiPullDrive* = 0x00000020
  vpiWeakDrive* = 0x00000008
  vpiLargeCharge* = 0x00000010
  vpiMediumCharge* = 0x00000004
  vpiSmallCharge* = 0x00000002
  vpiHiZ* = 0x00000001
  vpiBinStrVal* = 1
  vpiOctStrVal* = 2
  vpiDecStrVal* = 3
  vpiHexStrVal* = 4
  vpiScalarVal* = 5
  vpiIntVal* = 6
  vpiRealVal* = 7
  vpiStringVal* = 8
  vpiVectorVal* = 9
  vpiStrengthVal* = 10
  vpiTimeVal* = 11
  vpiObjTypeVal* = 12
  vpiSuppressVal* = 13
  vpiShortIntVal* = 14
  vpiLongIntVal* = 15
  vpiShortRealVal* = 16
  vpiRawTwoStateVal* = 17
  vpiRawFourStateVal* = 18
  vpiNoDelay* = 1
  vpiInertialDelay* = 2
  vpiTransportDelay* = 3
  vpiPureTransportDelay* = 4
  vpiForceFlag* = 5
  vpiReleaseFlag* = 6
  vpiCancelEvent* = 7
  vpiReturnEvent* = 0x00001000
  vpiUserAllocFlag* = 0x00002000
  vpiOneValue* = 0x00004000
  vpiPropagateOff* = 0x00008000
  vpi0* = 0
  vpi1* = 1
  vpiZ* = 2
  vpiX* = 3
  vpiH* = 4
  vpiL* = 5
  vpiDontCare* = 6
  vpiSysTask* = 1
  vpiSysFunc* = 2
  vpiCompile* = 1
  vpiPLI* = 2
  vpiRun* = 3
  vpiNotice* = 1
  vpiWarning* = 2
  vpiError* = 3
  vpiSystem* = 4
  vpiInternal* = 5
  cbValueChange* = 1
  cbStmt* = 2
  cbForce* = 3
  cbRelease* = 4
  cbAtStartOfSimTime* = 5
  cbReadWriteSynch* = 6
  cbReadOnlySynch* = 7
  cbNextSimTime* = 8
  cbAfterDelay* = 9
  cbEndOfCompile* = 10
  cbStartOfSimulation* = 11
  cbEndOfSimulation* = 12
  cbError* = 13
  cbTchkViolation* = 14
  cbStartOfSave* = 15
  cbEndOfSave* = 16
  cbStartOfRestart* = 17
  cbEndOfRestart* = 18
  cbStartOfReset* = 19
  cbEndOfReset* = 20
  cbEnterInteractive* = 21
  cbExitInteractive* = 22
  cbInteractiveScopeChange* = 23
  cbUnresolvedSystf* = 24
  cbAssign* = 25
  cbDeassign* = 26
  cbDisable* = 27
  cbPLIError* = 28
  cbSignal* = 29
  cbNBASynch* = 30
  cbAtEndOfSimTime* = 31
  vpiPackage* = 600
  vpiInterface* = 601
  vpiProgram* = 602
  vpiInterfaceArray* = 603
  vpiProgramArray* = 604
  vpiTypespec* = 605
  vpiModport* = 606
  vpiInterfaceTfDecl* = 607
  vpiRefObj* = 608
  vpiTypeParameter* = 609
  vpiVarBit* = vpiRegBit
  vpiLongIntVar* = 610
  vpiShortIntVar* = 611
  vpiIntVar* = 612
  vpiShortRealVar* = 613
  vpiByteVar* = 614
  vpiClassVar* = 615
  vpiStringVar* = 616
  vpiEnumVar* = 617
  vpiStructVar* = 618
  vpiUnionVar* = 619
  vpiBitVar* = 620
  vpiLogicVar* = vpiReg
  vpiArrayVar* = vpiRegArray
  vpiClassObj* = 621
  vpiChandleVar* = 622
  vpiPackedArrayVar* = 623
  vpiVirtualInterfaceVar* = 728
  vpiLongIntTypespec* = 625
  vpiShortRealTypespec* = 626
  vpiByteTypespec* = 627
  vpiShortIntTypespec* = 628
  vpiIntTypespec* = 629
  vpiClassTypespec* = 630
  vpiStringTypespec* = 631
  vpiChandleTypespec* = 632
  vpiEnumTypespec* = 633
  vpiEnumConst* = 634
  vpiIntegerTypespec* = 635
  vpiTimeTypespec* = 636
  vpiRealTypespec* = 637
  vpiStructTypespec* = 638
  vpiUnionTypespec* = 639
  vpiBitTypespec* = 640
  vpiLogicTypespec* = 641
  vpiArrayTypespec* = 642
  vpiVoidTypespec* = 643
  vpiTypespecMember* = 644
  vpiPackedArrayTypespec* = 692
  vpiSequenceTypespec* = 696
  vpiPropertyTypespec* = 697
  vpiEventTypespec* = 698
  vpiClockingBlock* = 650
  vpiClockingIODecl* = 651
  vpiClassDefn* = 652
  vpiConstraint* = 653
  vpiConstraintOrdering* = 654
  vpiDistItem* = 645
  vpiAliasStmt* = 646
  vpiThread* = 647
  vpiMethodFuncCall* = 648
  vpiMethodTaskCall* = 649
  vpiAssert* = 686
  vpiAssume* = 687
  vpiCover* = 688
  vpiRestrict* = 901
  vpiDisableCondition* = 689
  vpiClockingEvent* = 690
  vpiPropertyDecl* = 655
  vpiPropertySpec* = 656
  vpiPropertyExpr* = 657
  vpiMulticlockSequenceExpr* = 658
  vpiClockedSeq* = 659
  vpiClockedProp* = 902
  vpiPropertyInst* = 660
  vpiSequenceDecl* = 661
  vpiCaseProperty* = 662
  vpiCasePropertyItem* = 905
  vpiSequenceInst* = 664
  vpiImmediateAssert* = 665
  vpiImmediateAssume* = 694
  vpiImmediateCover* = 695
  vpiReturn* = 666
  vpiAnyPattern* = 667
  vpiTaggedPattern* = 668
  vpiStructPattern* = 669
  vpiDoWhile* = 670
  vpiOrderedWait* = 671
  vpiWaitFork* = 672
  vpiDisableFork* = 673
  vpiExpectStmt* = 674
  vpiForeachStmt* = 675
  vpiReturnStmt* = 691
  vpiFinal* = 676
  vpiExtends* = 677
  vpiDistribution* = 678
  vpiSeqFormalDecl* = 679
  vpiPropFormalDecl* = 699
  vpiArrayNet* = vpiNetArray
  vpiEnumNet* = 680
  vpiIntegerNet* = 681
  vpiLogicNet* = vpiNet
  vpiTimeNet* = 682
  vpiStructNet* = 683
  vpiBreak* = 684
  vpiContinue* = 685
  vpiPackedArrayNet* = 693
  vpiConstraintExpr* = 747
  vpiElseConst* = 748
  vpiImplication* = 749
  vpiConstrIf* = 738
  vpiConstrIfElse* = 739
  vpiConstrForeach* = 736
  vpiSoftDisable* = 733
  vpiLetDecl* = 903
  vpiLetExpr* = 904
  vpiActual* = 700
  vpiTypedefAlias* = 701
  vpiIndexTypespec* = 702
  vpiBaseTypespec* = 703
  vpiElemTypespec* = 704
  vpiInputSkew* = 706
  vpiOutputSkew* = 707
  vpiGlobalClocking* = 708
  vpiDefaultClocking* = 709
  vpiDefaultDisableIff* = 710
  vpiOrigin* = 713
  vpiPrefix* = 714
  vpiWith* = 715
  vpiProperty* = 718
  vpiValueRange* = 720
  vpiPattern* = 721
  vpiWeight* = 722
  vpiConstraintItem* = 746
  vpiTypedef* = 725
  vpiImport* = 726
  vpiDerivedClasses* = 727
  vpiInterfaceDecl* = vpiVirtualInterfaceVar
  vpiMethods* = 730
  vpiSolveBefore* = 731
  vpiSolveAfter* = 732
  vpiWaitingProcesses* = 734
  vpiMessages* = 735
  vpiLoopVars* = 737
  vpiConcurrentAssertions* = 740
  vpiMatchItem* = 741
  vpiMember* = 742
  vpiElement* = 743
  vpiAssertion* = 744
  vpiInstance* = 745
  vpiTop* = 600
  vpiUnit* = 602
  vpiJoinType* = 603
  vpiJoin* = 0
  vpiJoinNone* = 1
  vpiJoinAny* = 2
  vpiAccessType* = 604
  vpiForkJoinAcc* = 1
  vpiExternAcc* = 2
  vpiDPIExportAcc* = 3
  vpiDPIImportAcc* = 4
  vpiArrayType* = 606
  vpiStaticArray* = 1
  vpiDynamicArray* = 2
  vpiAssocArray* = 3
  vpiQueueArray* = 4
  vpiArrayMember* = 607
  vpiIsRandomized* = 608
  vpiLocalVarDecls* = 609
  vpiOpStrong* = 656
  vpiRandType* = 610
  vpiNotRand* = 1
  vpiRand* = 2
  vpiRandC* = 3
  vpiPortType* = 611
  vpiInterfacePort* = 1
  vpiModportPort* = 2
  vpiConstantVariable* = 612
  vpiStructUnionMember* = 615
  vpiVisibility* = 620
  vpiPublicVis* = 1
  vpiProtectedVis* = 2
  vpiLocalVis* = 3
  vpiOneStepConst* = 9
  vpiUnboundedConst* = 10
  vpiNullConst* = 11
  vpiAlwaysType* = 624
  vpiAlwaysComb* = 2
  vpiAlwaysFF* = 3
  vpiAlwaysLatch* = 4
  vpiDistType* = 625
  vpiEqualDist* = 1
  vpiDivDist* = 2
  vpiPacked* = 630
  vpiTagged* = 632
  vpiRef* = 6
  vpiVirtual* = 635
  vpiHasActual* = 636
  vpiIsConstraintEnabled* = 638
  vpiSoft* = 639
  vpiClassType* = 640
  vpiMailboxClass* = 1
  vpiSemaphoreClass* = 2
  vpiUserDefinedClass* = 3
  vpiProcessClass* = 4
  vpiMethod* = 645
  vpiIsClockInferred* = 649
  vpiIsDeferred* = 657
  vpiIsFinal* = 670
  vpiIsCoverSequence* = 659
  vpiQualifier* = 650
  vpiNoQualifier* = 0
  vpiUniqueQualifier* = 1
  vpiPriorityQualifier* = 2
  vpiTaggedQualifier* = 4
  vpiRandQualifier* = 8
  vpiInsideQualifier* = 16
  vpiInputEdge* = 651
  vpiOutputEdge* = 652
  vpiGeneric* = 653
  vpiCompatibilityMode* = 654
  vpiMode1364v1995* = 1
  vpiMode1364v2001* = 2
  vpiMode1364v2005* = 3
  vpiMode1800v2005* = 4
  vpiMode1800v2009* = 5
  vpiPackedArrayMember* = 655
  vpiStartLine* = 661
  vpiColumn* = 662
  vpiEndLine* = 663
  vpiEndColumn* = 664
  vpiAllocScheme* = 658
  vpiAutomaticScheme* = 1
  vpiDynamicScheme* = 2
  vpiOtherScheme* = 3
  vpiObjId* = 660
  vpiDPIPure* = 665
  vpiDPIContext* = 666
  vpiDPICStr* = 667
  vpiDPI* = 1
  vpiDPIC* = 2
  vpiDPICIdentifier* = 668
  vpiImplyOp* = 50
  vpiNonOverlapImplyOp* = 51
  vpiOverlapImplyOp* = 52
  vpiAcceptOnOp* = 83
  vpiRejectOnOp* = 84
  vpiSyncAcceptOnOp* = 85
  vpiSyncRejectOnOp* = 86
  vpiOverlapFollowedByOp* = 87
  vpiNonOverlapFollowedByOp* = 88
  vpiNexttimeOp* = 89
  vpiAlwaysOp* = 90
  vpiEventuallyOp* = 91
  vpiUntilOp* = 92
  vpiUntilWithOp* = 93
  vpiUnaryCycleDelayOp* = 53
  vpiCycleDelayOp* = 54
  vpiIntersectOp* = 55
  vpiFirstMatchOp* = 56
  vpiThroughoutOp* = 57
  vpiWithinOp* = 58
  vpiRepeatOp* = 59
  vpiConsecutiveRepeatOp* = 60
  vpiGotoRepeatOp* = 61
  vpiPostIncOp* = 62
  vpiPreIncOp* = 63
  vpiPostDecOp* = 64
  vpiPreDecOp* = 65
  vpiMatchOp* = 66
  vpiCastOp* = 67
  vpiIffOp* = 68
  vpiWildEqOp* = 69
  vpiWildNeqOp* = 70
  vpiStreamLROp* = 71
  vpiStreamRLOp* = 72
  vpiMatchedOp* = 73
  vpiTriggeredOp* = 74
  vpiAssignmentPatternOp* = 75
  vpiMultiAssignmentPatternOp* = 76
  vpiIfOp* = 77
  vpiIfElseOp* = 78
  vpiCompAndOp* = 79
  vpiCompOrOp* = 80
  vpiImpliesOp* = 94
  vpiInsideOp* = 95
  vpiTypeOp* = 81
  vpiAssignmentOp* = 82
  vpiOtherFunc* = 6
  vpiValidUnknown* = 2
  cbStartOfThread* = 600
  cbEndOfThread* = 601
  cbEnterThread* = 602
  cbStartOfFrame* = 603
  cbEndOfFrame* = 604
  cbSizeChange* = 605
  cbCreateObj* = 700
  cbReclaimObj* = 701
  cbEndOfObject* = 702
  vpiCoverageStart* = 750
  vpiCoverageStop* = 751
  vpiCoverageReset* = 752
  vpiCoverageCheck* = 753
  vpiCoverageMerge* = 754
  vpiCoverageSave* = 755
  vpiAssertCoverage* = 760
  vpiFsmStateCoverage* = 761
  vpiStatementCoverage* = 762
  vpiToggleCoverage* = 763
  vpiCovered* = 765
  vpiCoverMax* = 766
  vpiCoveredCount* = 767
  vpiAssertAttemptCovered* = 770
  vpiAssertSuccessCovered* = 771
  vpiAssertFailureCovered* = 772
  vpiAssertVacuousSuccessCovered* = 773
  vpiAssertDisableCovered* = 774
  vpiAssertKillCovered* = 777
  vpiFsmStates* = 775
  vpiFsmStateExpression* = 776
  vpiFsm* = 758
  vpiFsmHandle* = 759
  cbAssertionStart* = 606
  cbAssertionSuccess* = 607
  cbAssertionFailure* = 608
  cbAssertionVacuousSuccess* = 657
  cbAssertionDisabledEvaluation* = 658
  cbAssertionStepSuccess* = 609
  cbAssertionStepFailure* = 610
  cbAssertionLock* = 661
  cbAssertionUnlock* = 662
  cbAssertionDisable* = 611
  cbAssertionEnable* = 612
  cbAssertionReset* = 613
  cbAssertionKill* = 614
  cbAssertionEnablePassAction* = 645
  cbAssertionEnableFailAction* = 646
  cbAssertionDisablePassAction* = 647
  cbAssertionDisableFailAction* = 648
  cbAssertionEnableNonvacuousAction* = 649
  cbAssertionDisableVacuousAction* = 650
  cbAssertionSysInitialized* = 615
  cbAssertionSysOn* = 616
  cbAssertionSysOff* = 617
  cbAssertionSysKill* = 631
  cbAssertionSysLock* = 659
  cbAssertionSysUnlock* = 660
  cbAssertionSysEnd* = 618
  cbAssertionSysReset* = 619
  cbAssertionSysEnablePassAction* = 651
  cbAssertionSysEnableFailAction* = 652
  cbAssertionSysDisablePassAction* = 653
  cbAssertionSysDisableFailAction* = 654
  cbAssertionSysEnableNonvacuousAction* = 655
  cbAssertionSysDisableVacuousAction* = 656
  vpiAssertionLock* = 645
  vpiAssertionUnlock* = 646
  vpiAssertionDisable* = 620
  vpiAssertionEnable* = 621
  vpiAssertionReset* = 622
  vpiAssertionKill* = 623
  vpiAssertionEnableStep* = 624
  vpiAssertionDisableStep* = 625
  vpiAssertionClockSteps* = 626
  vpiAssertionSysLock* = 647
  vpiAssertionSysUnlock* = 648
  vpiAssertionSysOn* = 627
  vpiAssertionSysOff* = 628
  vpiAssertionSysKill* = 632
  vpiAssertionSysEnd* = 629
  vpiAssertionSysReset* = 630
  vpiAssertionDisablePassAction* = 633
  vpiAssertionEnablePassAction* = 634
  vpiAssertionDisableFailAction* = 635
  vpiAssertionEnableFailAction* = 636
  vpiAssertionDisableVacuousAction* = 637
  vpiAssertionEnableNonvacuousAction* = 638
  vpiAssertionSysEnablePassAction* = 639
  vpiAssertionSysEnableFailAction* = 640
  vpiAssertionSysDisablePassAction* = 641
  vpiAssertionSysDisableFailAction* = 642
  vpiAssertionSysEnableNonvacuousAction* = 643
  vpiAssertionSysDisableVacuousAction* = 644
type
  VpiHandle* {.impsv_vpi_userHdr, importc: "vpiHandle".} = ptr cuint
  t_vpi_time* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_time".} = object
    `type`*: cint ## ```
                ##   [vpiScaledRealTime, vpiSimTime,
                ##                                        vpiSuppressTime]
                ## ```
    high*: cuint               ## ```
               ##   for vpiSimTime
               ## ```
    low*: cuint                ## ```
              ##   for vpiSimTime
              ## ```
    real*: cdouble             ## ```
                 ##   for vpiScaledRealTime
                 ## ```
  
  s_vpi_time* {.importc, impsv_vpi_userHdr.} = t_vpi_time
  p_vpi_time* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_time
  t_vpi_delay* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_delay".} = object
    da*: ptr t_vpi_time ## ```
                     ##   pointer to application-allocated
                     ##                                       array of delay values
                     ## ```
    no_of_delays*: cint        ## ```
                      ##   number of delays
                      ## ```
    time_type*: cint ## ```
                   ##   [vpiScaledRealTime, vpiSimTime,
                   ##                                        vpiSuppressTime]
                   ## ```
    mtm_flag*: cint            ## ```
                  ##   true for mtm values
                  ## ```
    append_flag*: cint         ## ```
                     ##   true for append
                     ## ```
    pulsere_flag*: cint        ## ```
                      ##   true for pulsere values
                      ## ```
  
  s_vpi_delay* {.importc, impsv_vpi_userHdr.} = t_vpi_delay
  p_vpi_delay* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_delay
  t_vpi_vecval* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_vecval".} = object
    aval*: cuint               ## ```
               ##   bit encoding: ab: 00=0, 10=1, 11=X, 01=Z
               ## ```
    bval*: cuint               ## ```
               ##   bit encoding: ab: 00=0, 10=1, 11=X, 01=Z
               ## ```
  
  s_vpi_vecval* {.importc, impsv_vpi_userHdr.} = t_vpi_vecval
  p_vpi_vecval* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_vecval
  t_vpi_strengthval* {.bycopy, impsv_vpi_userHdr,
                      importc: "struct t_vpi_strengthval".} = object
    logic*: cint               ## ```
               ##   vpi[0,1,X,Z]
               ## ```
    s0*: cint                  ## ```
            ##   refer to strength coding below
            ## ```
    s1*: cint                  ## ```
            ##   refer to strength coding below
            ## ```
  
  s_vpi_strengthval* {.importc, impsv_vpi_userHdr.} = t_vpi_strengthval
  p_vpi_strengthval* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_strengthval
  Union_sv_vpi_userh1* {.union, bycopy, impsv_vpi_userHdr,
                        importc: "union Union_sv_vpi_userh1".} = object ## ```
                                                                    ##   vpi[[Bin,Oct,Dec,Hex]Str,Scalar,Int,Real,String,
                                                                    ##                              Vector,Strength,Suppress,Time,ObjType]Val
                                                                    ## ```
    str*: cstring              ## ```
                ##   string value
                ## ```
    scalar*: cint              ## ```
                ##   vpi[0,1,X,Z]
                ## ```
    integer*: cint             ## ```
                 ##   integer value
                 ## ```
    real*: cdouble             ## ```
                 ##   real value
                 ## ```
    time*: ptr t_vpi_time       ## ```
                       ##   time value
                       ## ```
    vector*: ptr t_vpi_vecval   ## ```
                           ##   vector value
                           ## ```
    strength*: ptr t_vpi_strengthval ## ```
                                  ##   strength value
                                  ## ```
    misc*: cstring             ## ```
                 ##   ...other
                 ## ```
  
  t_vpi_value* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_value".} = object
    format*: cint ## ```
                ##   vpi[[Bin,Oct,Dec,Hex]Str,Scalar,Int,Real,String,
                ##                              Vector,Strength,Suppress,Time,ObjType]Val
                ## ```
    value*: Union_sv_vpi_userh1 ## ```
                              ##   vpi[[Bin,Oct,Dec,Hex]Str,Scalar,Int,Real,String,
                              ##                              Vector,Strength,Suppress,Time,ObjType]Val
                              ## ```
  
  s_vpi_value* {.importc, impsv_vpi_userHdr.} = t_vpi_value
  p_vpi_value* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_value
  Union_sv_vpi_userh2* {.union, bycopy, impsv_vpi_userHdr,
                        importc: "union Union_sv_vpi_userh2".} = object ## ```
                                                                    ##   array bit flags- vpiUserAllocFlag
                                                                    ## ```
    integers*: ptr cint         ## ```
                     ##   integer values
                     ## ```
    shortints*: ptr cshort      ## ```
                        ##   short integer values
                        ## ```
    longints*: ptr clonglong    ## ```
                          ##   long integer values
                          ## ```
    rawvals*: cstring          ## ```
                    ##   2/4-state vector elements
                    ## ```
    vectors*: ptr t_vpi_vecval  ## ```
                            ##   4-state vector elements
                            ## ```
    times*: ptr t_vpi_time      ## ```
                        ##   time values
                        ## ```
    reals*: ptr cdouble         ## ```
                     ##   real values
                     ## ```
    shortreals*: ptr cfloat     ## ```
                         ##   short real values
                         ## ```
  
  t_vpi_arrayvalue* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_arrayvalue".} = object
    format*: cuint ## ```
                 ##   vpi[Int,Real,Time,ShortInt,LongInt,ShortReal,
                 ##                             RawTwoState,RawFourState]Val
                 ## ```
    flags*: cuint              ## ```
                ##   array bit flags- vpiUserAllocFlag
                ## ```
    value*: Union_sv_vpi_userh2 ## ```
                              ##   array bit flags- vpiUserAllocFlag
                              ## ```
  
  s_vpi_arrayvalue* {.importc, impsv_vpi_userHdr.} = t_vpi_arrayvalue
  p_vpi_arrayvalue* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_arrayvalue
  t_vpi_systf_data* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_systf_data".} = object
    `type`*: cint              ## ```
                ##   vpiSysTask, vpiSysFunc
                ## ```
    sysfunctype*: cint ## ```
                     ##   vpiSysTask, vpi[Int,Real,Time,Sized,
                     ##                                                              SizedSigned]Func
                     ## ```
    tfname*: cstring           ## ```
                   ##   first character must be '$'
                   ## ```
    calltf*: proc (a1: cstring): cint {.cdecl.} ## ```
                                          ##   first character must be '$'
                                          ## ```
    compiletf*: proc (a1: cstring): cint {.cdecl.}
    sizetf*: proc (a1: cstring): cint {.cdecl.} ## ```
                                          ##   for sized function callbacks only
                                          ## ```
    user_data*: cstring        ## ```
                      ##   for sized function callbacks only
                      ## ```
  
  s_vpi_systf_data* {.importc, impsv_vpi_userHdr.} = t_vpi_systf_data
  p_vpi_systf_data* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_systf_data
  t_vpi_vlog_info* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_vlog_info".} = object
    argc*: cint
    argv*: ptr cstring
    product*: cstring
    version*: cstring

  s_vpi_vlog_info* {.importc, impsv_vpi_userHdr.} = t_vpi_vlog_info
  p_vpi_vlog_info* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_vlog_info
  t_vpi_error_info* {.bycopy, impsv_vpi_userHdr, importc: "struct t_vpi_error_info".} = object
    state*: cint               ## ```
               ##   vpi[Compile,PLI,Run]
               ## ```
    level*: cint               ## ```
               ##   vpi[Notice,Warning,Error,System,Internal]
               ## ```
    message*: cstring          ## ```
                    ##   vpi[Notice,Warning,Error,System,Internal]
                    ## ```
    product*: cstring
    code*: cstring
    file*: cstring
    line*: cint

  s_vpi_error_info* {.importc, impsv_vpi_userHdr.} = t_vpi_error_info
  p_vpi_error_info* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_error_info
  t_cb_data* {.bycopy, impsv_vpi_userHdr, importc: "struct t_cb_data".} = object
    reason*: cint              ## ```
                ##   callback reason
                ## ```
    cb_rtn*: proc (a1: ptr t_cb_data): cint {.cdecl.} ## ```
                                               ##   call routine
                                               ## ```
    obj*: VpiHandle            ## ```
                  ##   trigger object
                  ## ```
    time*: p_vpi_time          ## ```
                    ##   callback time
                    ## ```
    value*: p_vpi_value        ## ```
                      ##   trigger object value
                      ## ```
    index*: cint ## ```
               ##   index of the memory word or
               ##                                                    var select that changed
               ## ```
    user_data*: cstring ## ```
                      ##   index of the memory word or
                      ##                                                    var select that changed
                      ## ```
  
  s_cb_data* {.importc, impsv_vpi_userHdr.} = t_cb_data
  p_cb_data* {.importc, impsv_vpi_userHdr.} = ptr t_cb_data
  t_vpi_assertion_step_info* {.bycopy, impsv_vpi_userHdr,
                              importc: "struct t_vpi_assertion_step_info".} = object
    matched_expression_count*: cint
    matched_exprs*: ptr VpiHandle ## ```
                               ##   array of expressions
                               ## ```
    stateFrom*: cint           ## ```
                   ##   identify transition
                   ## ```
    stateTo*: cint             ## ```
                 ##   identify transition
                 ## ```
  
  s_vpi_assertion_step_info* {.importc, impsv_vpi_userHdr.} = t_vpi_assertion_step_info
  p_vpi_assertion_step_info* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_assertion_step_info
  Union_sv_vpi_userh3* {.union, bycopy, impsv_vpi_userHdr,
                        importc: "union Union_sv_vpi_userh3".} = object
    failExpr*: VpiHandle
    step*: p_vpi_assertion_step_info

  t_vpi_attempt_info* {.bycopy, impsv_vpi_userHdr,
                       importc: "struct t_vpi_attempt_info".} = object
    detail*: Union_sv_vpi_userh3
    attemptStartTime*: s_vpi_time ## ```
                                ##   Time attempt triggered
                                ## ```
  
  s_vpi_attempt_info* {.importc, impsv_vpi_userHdr.} = t_vpi_attempt_info
  p_vpi_attempt_info* {.importc, impsv_vpi_userHdr.} = ptr t_vpi_attempt_info
  vpi_assertion_callback_func* {.importc, impsv_vpi_userHdr.} = proc (reason: cint;
      cb_time: p_vpi_time; assertion: VpiHandle; info: p_vpi_attempt_info;
      user_data: cstring): cint {.cdecl.}
proc vpi_register_cb_1800v2009*(cb_data_p: p_cb_data): VpiHandle {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_remove_cb*(cb_obj: VpiHandle): cint {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_get_cb_info*(`object`: VpiHandle; cb_data_p: p_cb_data) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_register_systf*(systf_data_p: p_vpi_systf_data): VpiHandle {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_systf_info*(`object`: VpiHandle; systf_data_p: p_vpi_systf_data) {.
    importc, cdecl, impsv_vpi_userHdr.}
proc vpi_handle_by_name_1800v2009*(name: cstring; scope: VpiHandle): VpiHandle {.
    importc, cdecl, impsv_vpi_userHdr.}
proc vpi_handle_by_index_1800v2009*(`object`: VpiHandle; indx: cint): VpiHandle {.
    importc, cdecl, impsv_vpi_userHdr.}
proc vpi_handle_1800v2009*(`type`: cint; refHandle: VpiHandle): VpiHandle {.importc,
    cdecl, impsv_vpi_userHdr.}
proc vpi_handle_multi_1800v2009*(`type`: cint; refHandle1: VpiHandle;
                                refHandle2: VpiHandle): VpiHandle {.importc, cdecl,
    impsv_vpi_userHdr, varargs.}
proc vpi_iterate_1800v2009*(`type`: cint; refHandle: VpiHandle): VpiHandle {.importc,
    cdecl, impsv_vpi_userHdr.}
proc vpi_scan_1800v2009*(`iterator`: VpiHandle): VpiHandle {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_1800v2009*(property: cint; `object`: VpiHandle): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get64*(property: cint; `object`: VpiHandle): clonglong {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_str_1800v2009*(property: cint; `object`: VpiHandle): cstring {.importc,
    cdecl, impsv_vpi_userHdr.}
proc vpi_get_delays*(`object`: VpiHandle; delay_p: p_vpi_delay) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_put_delays*(`object`: VpiHandle; delay_p: p_vpi_delay) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_value_1800v2009*(expr: VpiHandle; value_p: p_vpi_value) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_put_value_1800v2009*(`object`: VpiHandle; value_p: p_vpi_value;
                             time_p: p_vpi_time; flags: cint): VpiHandle {.importc,
    cdecl, impsv_vpi_userHdr.}
proc vpi_get_value_array*(`object`: VpiHandle; arrayvalue_p: p_vpi_arrayvalue;
                         index_p: ptr cint; num: cuint) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_put_value_array*(`object`: VpiHandle; arrayvalue_p: p_vpi_arrayvalue;
                         index_p: ptr cint; num: cuint) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_time*(`object`: VpiHandle; time_p: p_vpi_time) {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_mcd_open*(fileName: cstring): cuint {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_mcd_close*(mcd: cuint): cuint {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_mcd_name*(cd: cuint): cstring {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_mcd_printf*(mcd: cuint; format: cstring): cint {.importc, cdecl,
    impsv_vpi_userHdr, varargs.}
proc vpi_printf*(format: cstring): cint {.importc, cdecl, impsv_vpi_userHdr, varargs.}
proc vpi_compare_objects_1800v2009*(object1: VpiHandle; object2: VpiHandle): cint {.
    importc, cdecl, impsv_vpi_userHdr.}
proc vpi_chk_error*(error_info_p: p_vpi_error_info): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_free_object*(`object`: VpiHandle): cint {.importc, cdecl, impsv_vpi_userHdr.}
  ## ```
  ##   vpi_free_object() is deprecated in 1800-2009
  ## ```
proc vpi_release_handle*(`object`: VpiHandle): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_vlog_info*(vlog_info_p: p_vpi_vlog_info): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_data*(id: cint; dataLoc: cstring; numOfBytes: cint): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_put_data*(id: cint; dataLoc: cstring; numOfBytes: cint): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_get_userdata*(obj: VpiHandle): pointer {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_put_userdata*(obj: VpiHandle; userdata: pointer): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_vprintf*(format: cstring; ap: va_list): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_mcd_vprintf*(mcd: cuint; format: cstring; ap: va_list): cint {.importc, cdecl,
    impsv_vpi_userHdr.}
proc vpi_flush*(): cint {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_mcd_flush*(mcd: cuint): cint {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_control_1800v2009*(operation: cint): cint {.importc, cdecl,
    impsv_vpi_userHdr, varargs.}
proc vpi_handle_by_multi_index_1800v2009*(obj: VpiHandle; num_index: cint;
    index_array: ptr cint): VpiHandle {.importc, cdecl, impsv_vpi_userHdr.}
proc vpi_register_assertion_cb*(assertion: VpiHandle; reason: cint;
                               cb_rtn: ptr vpi_assertion_callback_func;
                               user_data: cstring): VpiHandle {.importc, cdecl,
    impsv_vpi_userHdr.}
{.pop.}

# Importing /path/to/veriuser.h
# Command line:
#   /home/kmodi/.nimble/pkgs/nimterop-0.6.13/nimterop/toast --preprocess -m:c --recurse -f:ast2 --defines+=VPI_COMPATIBILITY_VERSION_1800v2009 --pnim --symOverride=vpiSysFuncType,vpiSysFuncReal,vpiSysFuncTime,vpiSysFuncSized,vpiArrayVar,vpiArrayNet,vpiInterfaceDecl --nim:/home/kmodi/usr_local/apps/7/nim/devel/bin/nim --pluginSourcePath=/tmp/kmodi/.cache/nim/nimterop/cPlugins/nimterop_259579795.nim /path/to/veriuser.h -o /tmp/kmodi/.cache/nim/nimterop/toastCache/nimterop_3793827918.nim

# const 'PLI_VEXTERN' has unsupported value 'extern'
# const 'XXTERN' has unsupported value 'PLI_EXTERN PLI_DLLISPEC'
# const 'EETERN' has unsupported value 'PLI_EXTERN PLI_DLLESPEC'
# const 'bool' has unsupported value 'int'
# const 'REASON_CHECKTF' has unsupported value 'reason_checktf'
# const 'REASON_SIZETF' has unsupported value 'reason_sizetf'
# const 'REASON_CALLTF' has unsupported value 'reason_calltf'
# const 'REASON_SAVE' has unsupported value 'reason_save'
# const 'REASON_RESTART' has unsupported value 'reason_restart'
# const 'REASON_DISABLE' has unsupported value 'reason_disable'
# const 'REASON_PARAMVC' has unsupported value 'reason_paramvc'
# const 'REASON_SYNCH' has unsupported value 'reason_synch'
# const 'REASON_FINISH' has unsupported value 'reason_finish'
# const 'REASON_REACTIVATE' has unsupported value 'reason_reactivate'
# const 'REASON_ROSYNCH' has unsupported value 'reason_rosynch'
# const 'REASON_PARAMDRC' has unsupported value 'reason_paramdrc'
# const 'REASON_ENDOFCOMPILE' has unsupported value 'reason_endofcompile'
# const 'REASON_SCOPE' has unsupported value 'reason_scope'
# const 'REASON_INTERACTIVE' has unsupported value 'reason_interactive'
# const 'REASON_RESET' has unsupported value 'reason_reset'
# const 'REASON_ENDOFRESET' has unsupported value 'reason_endofreset'
# const 'REASON_FORCE' has unsupported value 'reason_force'
# const 'REASON_RELEASE' has unsupported value 'reason_release'
# const 'TF_NULLPARAM' has unsupported value 'tf_nullparam'
# const 'TF_READONLY' has unsupported value 'tf_readonly'
# const 'TF_READWRITE' has unsupported value 'tf_readwrite'
# const 'TF_RWBITSELECT' has unsupported value 'tf_rwbitselect'
# const 'TF_RWPARTSELECT' has unsupported value 'tf_rwpartselect'
# const 'TF_RWMEMSELECT' has unsupported value 'tf_rwmemselect'
# const 'TF_READONLYREAL' has unsupported value 'tf_readonlyreal'
# const 'TF_READWRITEREAL' has unsupported value 'tf_readwritereal'
# const 'TF_NULL_NODE' has unsupported value 'tf_null_node'
# const 'TF_REG_NODE' has unsupported value 'tf_reg_node'
# const 'TF_INTEGER_NODE' has unsupported value 'tf_integer_node'
# const 'TF_TIME_NODE' has unsupported value 'tf_time_node'
# const 'TF_NETVECTOR_NODE' has unsupported value 'tf_netvector_node'
# const 'TF_NETSCALAR_NODE' has unsupported value 'tf_netscalar_node'
# const 'TF_MEMORY_NODE' has unsupported value 'tf_memory_node'
# const 'TF_REAL_NODE' has unsupported value 'tf_real_node'
{.push hint[ConvFromXtoItselfNotNeeded]: off.}


{.pragma: impveriuserHdr,
  header: "/path/to/veriuser.h".}
{.experimental: "codeReordering".}
{.passC: "-DVPI_COMPATIBILITY_VERSION_1800v2009".}
const
  PLI_EXTRAS* = 1
  TRUE* = 1
  FALSE* = 0
  true* = 1
  false* = 0
  null* = 0'i32
  ERR_MESSAGE* = 1
  ERR_WARNING* = 2
  ERR_ERROR* = 3
  ERR_INTERNAL* = 4
  ERR_SYSTEM* = 5
  reason_checktf* = 1
  reason_sizetf* = 2
  reason_calltf* = 3
  reason_save* = 4
  reason_restart* = 5
  reason_disable* = 6
  reason_paramvc* = 7
  reason_synch* = 8
  reason_finish* = 9
  reason_reactivate* = 10
  reason_rosynch* = 11
  reason_paramdrc* = 15
  reason_endofcompile* = 16
  reason_scope* = 17
  reason_interactive* = 18
  reason_reset* = 19
  reason_endofreset* = 20
  reason_force* = 21
  reason_release* = 22
  reason_startofsave* = 27
  reason_startofrestart* = 28
  REASON_MAX* = 28
  tf_nullparam* = 0
  tf_string* = 1
  TF_STRING* = tf_string
  tf_readonly* = 10
  tf_readwrite* = 11
  tf_rwbitselect* = 12
  tf_rwpartselect* = 13
  tf_rwmemselect* = 14
  tf_readonlyreal* = 15
  tf_readwritereal* = 16
  tf_null_node* = 100
  tf_reg_node* = 101
  tf_integer_node* = 102
  tf_time_node* = 103
  tf_netvector_node* = 104
  tf_netscalar_node* = 105
  tf_memory_node* = 106
  tf_real_node* = 107
type
  t_tfexprinfo* {.bycopy, impveriuserHdr, importc: "struct t_tfexprinfo".} = object ## ```
                                                                             ##   ---------------------------------------------------------------------------
                                                                             ##     -------------------------- structure definitions --------------------------
                                                                             ##     ---------------------------------------------------------------------------
                                                                             ##     ----- structure used with tf_exprinfo() to get expression information -----
                                                                             ## ```
    expr_type*: cshort
    padding*: cshort
    expr_value_p*: ptr t_vecval
    real_value*: cdouble
    expr_string*: cstring
    expr_ngroups*: cint
    expr_vec_size*: cint
    expr_sign*: cint
    expr_lhs_select*: cint
    expr_rhs_select*: cint

  s_tfexprinfo* {.importc, impveriuserHdr.} = t_tfexprinfo ## ```
                                                      ##   ---------------------------------------------------------------------------
                                                      ##     -------------------------- structure definitions --------------------------
                                                      ##     ---------------------------------------------------------------------------
                                                      ##     ----- structure used with tf_exprinfo() to get expression information -----
                                                      ## ```
  p_tfexprinfo* {.importc, impveriuserHdr.} = ptr t_tfexprinfo ## ```
                                                         ##   ---------------------------------------------------------------------------
                                                         ##     -------------------------- structure definitions --------------------------
                                                         ##     ---------------------------------------------------------------------------
                                                         ##     ----- structure used with tf_exprinfo() to get expression information -----
                                                         ## ```
  Union_veriuserh1* {.union, bycopy, impveriuserHdr,
                     importc: "union Union_veriuserh1".} = object
    vecval_p*: ptr t_vecval
    strengthval_p*: ptr t_strengthval
    memoryval_p*: cstring
    real_val_p*: ptr cdouble

  t_tfnodeinfo* {.bycopy, impveriuserHdr, importc: "struct t_tfnodeinfo".} = object ## ```
                                                                             ##   ------- structure for use with tf_nodeinfo() to get node information ------
                                                                             ## ```
    node_type*: cshort
    padding*: cshort
    node_value*: Union_veriuserh1
    node_symbol*: cstring
    node_ngroups*: cint
    node_vec_size*: cint
    node_sign*: cint
    node_ms_index*: cint
    node_ls_index*: cint
    node_mem_size*: cint
    node_lhs_element*: cint
    node_rhs_element*: cint
    node_handle*: ptr cint

  s_tfnodeinfo* {.importc, impveriuserHdr.} = t_tfnodeinfo ## ```
                                                      ##   ------- structure for use with tf_nodeinfo() to get node information ------
                                                      ## ```
  p_tfnodeinfo* {.importc, impveriuserHdr.} = ptr t_tfnodeinfo ## ```
                                                         ##   ------- structure for use with tf_nodeinfo() to get node information ------
                                                         ## ```
  t_vecval* {.bycopy, impveriuserHdr, importc: "struct t_vecval".} = object ## ```
                                                                     ##   --------------------- data structure of vector values ---------------------
                                                                     ## ```
    avalbits*: cint
    bvalbits*: cint

  s_vecval* {.importc, impveriuserHdr.} = t_vecval ## ```
                                              ##   --------------------- data structure of vector values ---------------------
                                              ## ```
  p_vecval* {.importc, impveriuserHdr.} = ptr t_vecval ## ```
                                                 ##   --------------------- data structure of vector values ---------------------
                                                 ## ```
  t_strengthval* {.bycopy, impveriuserHdr, importc: "struct t_strengthval".} = object ## ```
                                                                               ##   --------------- data structure of scalar net strength values --------------
                                                                               ## ```
    strength0*: cint
    strength1*: cint

  s_strengthval* {.importc, impveriuserHdr.} = t_strengthval ## ```
                                                        ##   --------------- data structure of scalar net strength values --------------
                                                        ## ```
  p_strengthval* {.importc, impveriuserHdr.} = ptr t_strengthval ## ```
                                                           ##   --------------- data structure of scalar net strength values --------------
                                                           ## ```
var veriuser_version_str* {.importc, impveriuserHdr.}: cstring
proc io_mcdprintf*(mcd: cint; format: cstring) {.importc, cdecl, impveriuserHdr, varargs.}
proc io_printf*(format: cstring) {.importc, cdecl, impveriuserHdr, varargs.}
proc mc_scan_plusargs*(plusarg: cstring): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_add_long*(aof_lowtime1: ptr cint; aof_hightime1: ptr cint; lowtime2: cint;
                 hightime2: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_asynchoff*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_asynchon*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_clearalldelays*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_compare_long*(low1: cuint; high1: cuint; low2: cuint; high2: cuint): cint {.
    importc, cdecl, impveriuserHdr.}
proc tf_copypvc_flag*(nparam: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_divide_long*(aof_low1: ptr cint; aof_high1: ptr cint; low2: cint; high2: cint) {.
    importc, cdecl, impveriuserHdr.}
proc tf_dofinish*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_dostop*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_error*(fmt: cstring): cint {.importc, cdecl, impveriuserHdr, varargs.}
proc tf_evaluatep*(pnum: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_exprinfo*(pnum: cint; pinfo: p_tfexprinfo): p_tfexprinfo {.importc, cdecl,
    impveriuserHdr.}
proc tf_getcstringp*(nparam: cint): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_getinstance*(): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_getlongp*(aof_highvalue: ptr cint; pnum: cint): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_getlongtime*(aof_hightime: ptr cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_getnextlongtime*(aof_lowtime: ptr cint; aof_hightime: ptr cint): cint {.importc,
    cdecl, impveriuserHdr.}
proc tf_getp*(pnum: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_getpchange*(nparam: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_getrealp*(pnum: cint): cdouble {.importc, cdecl, impveriuserHdr.}
proc tf_getrealtime*(): cdouble {.importc, cdecl, impveriuserHdr.}
proc tf_gettime*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_gettimeprecision*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_gettimeunit*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_getworkarea*(): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_iasynchoff*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_iasynchon*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_iclearalldelays*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_icopypvc_flag*(nparam: cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_ievaluatep*(pnum: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_iexprinfo*(pnum: cint; pinfo: p_tfexprinfo; inst: cstring): p_tfexprinfo {.
    importc, cdecl, impveriuserHdr.}
proc tf_igetcstringp*(nparam: cint; inst: cstring): cstring {.importc, cdecl,
    impveriuserHdr.}
proc tf_igetlongp*(aof_highvalue: ptr cint; pnum: cint; inst: cstring): cint {.importc,
    cdecl, impveriuserHdr.}
proc tf_igetlongtime*(aof_hightime: ptr cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_igetp*(pnum: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_igetpchange*(nparam: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_igetrealp*(pnum: cint; inst: cstring): cdouble {.importc, cdecl, impveriuserHdr.}
proc tf_igetrealtime*(inst: cstring): cdouble {.importc, cdecl, impveriuserHdr.}
proc tf_igettime*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_igettimeprecision*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_igettimeunit*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_igetworkarea*(inst: cstring): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_imipname*(cell: cstring): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_imovepvc_flag*(nparam: cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_inodeinfo*(pnum: cint; pinfo: p_tfnodeinfo; inst: cstring): p_tfnodeinfo {.
    importc, cdecl, impveriuserHdr.}
proc tf_inump*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_ipropagatep*(pnum: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_iputlongp*(pnum: cint; lowvalue: cint; highvalue: cint; inst: cstring): cint {.
    importc, cdecl, impveriuserHdr.}
proc tf_iputp*(pnum: cint; value: cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_iputrealp*(pnum: cint; value: cdouble; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_irosynchronize*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_isetdelay*(delay: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_isetlongdelay*(lowdelay: cint; highdelay: cint; inst: cstring): cint {.importc,
    cdecl, impveriuserHdr.}
proc tf_isetrealdelay*(realdelay: cdouble; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_isetworkarea*(workarea: cstring; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_isizep*(pnum: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_ispname*(cell: cstring): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_istrdelputp*(nparam: cint; bitlength: cint; format_char: cint;
                    value_p: cstring; delay: cint; delaytype: cint; inst: cstring): cint {.
    importc, cdecl, impveriuserHdr.}
proc tf_istrgetp*(pnum: cint; format_char: cint; inst: cstring): cstring {.importc,
    cdecl, impveriuserHdr.}
proc tf_istrlongdelputp*(nparam: cint; bitlength: cint; format_char: cint;
                        value_p: cstring; lowdelay: cint; highdelay: cint;
                        delaytype: cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_istrrealdelputp*(nparam: cint; bitlength: cint; format_char: cint;
                        value_p: cstring; realdelay: cdouble; delaytype: cint;
                        inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_isynchronize*(inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_itestpvc_flag*(nparam: cint; inst: cstring): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_itypep*(pnum: cint; inst: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_long_to_real*(int_lo: cint; int_hi: cint; aof_real: ptr cdouble) {.importc,
    cdecl, impveriuserHdr.}
proc tf_longtime_tostr*(lowtime: cint; hightime: cint): cstring {.importc, cdecl,
    impveriuserHdr.}
proc tf_message*(level: cint; facility: cstring; messno: cstring; message: cstring): cint {.
    importc, cdecl, impveriuserHdr, varargs.}
proc tf_mipname*(): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_movepvc_flag*(nparam: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_multiply_long*(aof_low1: ptr cint; aof_high1: ptr cint; low2: cint; high2: cint) {.
    importc, cdecl, impveriuserHdr.}
proc tf_nodeinfo*(pnum: cint; pinfo: p_tfnodeinfo): p_tfnodeinfo {.importc, cdecl,
    impveriuserHdr.}
proc tf_nump*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_propagatep*(pnum: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_putlongp*(pnum: cint; lowvalue: cint; highvalue: cint): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_putp*(pnum: cint; value: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_putrealp*(pnum: cint; value: cdouble): cint {.importc, cdecl, impveriuserHdr.}
proc tf_read_restart*(blockptr: cstring; blocklen: cint): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_real_to_long*(real: cdouble; aof_int_lo: ptr cint; aof_int_hi: ptr cint) {.
    importc, cdecl, impveriuserHdr.}
proc tf_rosynchronize*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_scale_longdelay*(cell: cstring; delay_lo: cint; delay_hi: cint;
                        aof_delay_lo: ptr cint; aof_delay_hi: ptr cint) {.importc,
    cdecl, impveriuserHdr.}
proc tf_scale_realdelay*(cell: cstring; realdelay: cdouble;
                        aof_realdelay: ptr cdouble) {.importc, cdecl, impveriuserHdr.}
proc tf_setdelay*(delay: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_setlongdelay*(lowdelay: cint; highdelay: cint): cint {.importc, cdecl,
    impveriuserHdr.}
proc tf_setrealdelay*(realdelay: cdouble): cint {.importc, cdecl, impveriuserHdr.}
proc tf_setworkarea*(workarea: cstring): cint {.importc, cdecl, impveriuserHdr.}
proc tf_sizep*(pnum: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_spname*(): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_strdelputp*(nparam: cint; bitlength: cint; format_char: cint; value_p: cstring;
                   delay: cint; delaytype: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_strgetp*(pnum: cint; format_char: cint): cstring {.importc, cdecl,
    impveriuserHdr.}
proc tf_strgettime*(): cstring {.importc, cdecl, impveriuserHdr.}
proc tf_strlongdelputp*(nparam: cint; bitlength: cint; format_char: cint;
                       value_p: cstring; lowdelay: cint; highdelay: cint;
                       delaytype: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_strrealdelputp*(nparam: cint; bitlength: cint; format_char: cint;
                       value_p: cstring; realdelay: cdouble; delaytype: cint): cint {.
    importc, cdecl, impveriuserHdr.}
proc tf_subtract_long*(aof_lowtime1: ptr cint; aof_hightime1: ptr cint; lowtime2: cint;
                      hightime2: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_synchronize*(): cint {.importc, cdecl, impveriuserHdr.}
proc tf_testpvc_flag*(nparam: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_text*(fmt: cstring): cint {.importc, cdecl, impveriuserHdr, varargs.}
proc tf_typep*(pnum: cint): cint {.importc, cdecl, impveriuserHdr.}
proc tf_unscale_longdelay*(cell: cstring; delay_lo: cint; delay_hi: cint;
                          aof_delay_lo: ptr cint; aof_delay_hi: ptr cint) {.importc,
    cdecl, impveriuserHdr.}
proc tf_unscale_realdelay*(cell: cstring; realdelay: cdouble;
                          aof_realdelay: ptr cdouble) {.importc, cdecl,
    impveriuserHdr.}
proc tf_warning*(fmt: cstring): cint {.importc, cdecl, impveriuserHdr, varargs.}
proc tf_write_save*(blockptr: cstring; blocklen: cint): cint {.importc, cdecl,
    impveriuserHdr.}
proc endofcompile_routines*(): cint {.importc, cdecl, impveriuserHdr.}
{.pop.}

