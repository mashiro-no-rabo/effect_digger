defmodule EffectDigger.DogmaConst do
  defmacro operandADD, do: 1
  # Deprecated FLEET-2016
  defmacro operandAGGM, do: 2
  # Deprecated FLEET-2016
  defmacro operandAGIM, do: 3
  # Deprecated FLEET-2016
  defmacro operandAGORSM, do: 4
  # Deprecated FLEET-2016
  defmacro operandAGRSM, do: 5
  defmacro operandAIM, do: 6
  defmacro operandALGM, do: 7
  defmacro operandALM, do: 8
  defmacro operandALRSM, do: 9
  defmacro operandAND, do: 10
  defmacro operandAORSM, do: 11
  defmacro operandATT, do: 12
  defmacro operandATTACK, do: 13
  defmacro operandCARGOSCAN, do: 14
  defmacro operandCHEATTELEDOCK, do: 15
  defmacro operandCHEATTELEGATE, do: 16
  defmacro operandCOMBINE, do: 17
  defmacro operandDEC, do: 18
  defmacro operandDECLOAKWAVE, do: 19
  defmacro operandDECN, do: 20
  defmacro operandDEFASSOCIATION, do: 21
  defmacro operandDEFATTRIBUTE, do: 22
  defmacro operandDEFBOOL, do: 23
  defmacro operandDEFENVIDX, do: 24
  defmacro operandDEFFLOAT, do: 25
  defmacro operandDEFGROUP, do: 26
  defmacro operandDEFINT, do: 27
  defmacro operandDEFSTRING, do: 28
  defmacro operandDEFTYPEID, do: 29
  defmacro operandECMBURST, do: 30
  defmacro operandEFF, do: 31
  defmacro operandEMPWAVE, do: 32
  defmacro operandEQ, do: 33
  defmacro operandGA, do: 34
  defmacro operandGET, do: 35
  defmacro operandGETTYPE, do: 36
  defmacro operandGM, do: 37
  defmacro operandGT, do: 38
  defmacro operandGTE, do: 39
  defmacro operandIA, do: 40
  defmacro operandIF, do: 41
  defmacro operandINC, do: 42
  defmacro operandINCN, do: 43
  defmacro operandLAUNCH, do: 44
  defmacro operandLAUNCHDEFENDERMISSILE, do: 45
  defmacro operandLAUNCHDRONE, do: 46
  defmacro operandLAUNCHFOFMISSILE, do: 47
  defmacro operandLG, do: 48
  defmacro operandLS, do: 49
  defmacro operandMINE, do: 50
  defmacro operandMUL, do: 51
  defmacro operandOR, do: 52
  defmacro operandPOWERBOOST, do: 53
  # Deprecated FLEET-2016
  defmacro operandRGGM, do: 54
  # Deprecated FLEET-2016
  defmacro operandRGIM, do: 55
  # Deprecated FLEET-2016
  defmacro operandRGORSM, do: 56
  # Deprecated FLEET-2016
  defmacro operandRGRSM, do: 57
  defmacro operandRIM, do: 58
  defmacro operandRLGM, do: 59
  defmacro operandRLM, do: 60
  defmacro operandRLRSM, do: 61
  defmacro operandRORSM, do: 62
  defmacro operandRS, do: 63
  defmacro operandRSA, do: 64
  defmacro operandSET, do: 65
  defmacro operandSHIPSCAN, do: 66
  defmacro operandSKILLCHECK, do: 67
  defmacro operandSUB, do: 68
  defmacro operandSURVEYSCAN, do: 69
  defmacro operandTARGETHOSTILES, do: 70
  defmacro operandTARGETSILENTLY, do: 71
  defmacro operandTOOLTARGETSKILLS, do: 72
  defmacro operandUE, do: 73
  defmacro operandVERIFYTARGETGROUP, do: 74

  def rev_op(1), do: :operandADD
  # Deprecated FLEET-2016
  def rev_op(2), do: :operandAGGM
  # Deprecated FLEET-2016
  def rev_op(3), do: :operandAGIM
  # Deprecated FLEET-2016
  def rev_op(4), do: :operandAGORSM
  # Deprecated FLEET-2016
  def rev_op(5), do: :operandAGRSM
  def rev_op(6), do: :operandAIM
  def rev_op(7), do: :operandALGM
  def rev_op(8), do: :operandALM
  def rev_op(9), do: :operandALRSM
  def rev_op(10), do: :operandAND
  def rev_op(11), do: :operandAORSM
  def rev_op(12), do: :operandATT
  def rev_op(13), do: :operandATTACK
  def rev_op(14), do: :operandCARGOSCAN
  def rev_op(15), do: :operandCHEATTELEDOCK
  def rev_op(16), do: :operandCHEATTELEGATE
  def rev_op(17), do: :operandCOMBINE
  def rev_op(18), do: :operandDEC
  def rev_op(19), do: :operandDECLOAKWAVE
  def rev_op(20), do: :operandDECN
  def rev_op(21), do: :operandDEFASSOCIATION
  def rev_op(22), do: :operandDEFATTRIBUTE
  def rev_op(23), do: :operandDEFBOOL
  def rev_op(24), do: :operandDEFENVIDX
  def rev_op(25), do: :operandDEFFLOAT
  def rev_op(26), do: :operandDEFGROUP
  def rev_op(27), do: :operandDEFINT
  def rev_op(28), do: :operandDEFSTRING
  def rev_op(29), do: :operandDEFTYPEID
  def rev_op(30), do: :operandECMBURST
  def rev_op(31), do: :operandEFF
  def rev_op(32), do: :operandEMPWAVE
  def rev_op(33), do: :operandEQ
  def rev_op(34), do: :operandGA
  def rev_op(35), do: :operandGET
  def rev_op(36), do: :operandGETTYPE
  def rev_op(37), do: :operandGM
  def rev_op(38), do: :operandGT
  def rev_op(39), do: :operandGTE
  def rev_op(40), do: :operandIA
  def rev_op(41), do: :operandIF
  def rev_op(42), do: :operandINC
  def rev_op(43), do: :operandINCN
  def rev_op(44), do: :operandLAUNCH
  def rev_op(45), do: :operandLAUNCHDEFENDERMISSILE
  def rev_op(46), do: :operandLAUNCHDRONE
  def rev_op(47), do: :operandLAUNCHFOFMISSILE
  def rev_op(48), do: :operandLG
  def rev_op(49), do: :operandLS
  def rev_op(50), do: :operandMINE
  def rev_op(51), do: :operandMUL
  def rev_op(52), do: :operandOR
  def rev_op(53), do: :operandPOWERBOOST
  # Deprecated FLEET-2016
  def rev_op(54), do: :operandRGGM
  # Deprecated FLEET-2016
  def rev_op(55), do: :operandRGIM
  # Deprecated FLEET-2016
  def rev_op(56), do: :operandRGORSM
  # Deprecated FLEET-2016
  def rev_op(57), do: :operandRGRSM
  def rev_op(58), do: :operandRIM
  def rev_op(59), do: :operandRLGM
  def rev_op(60), do: :operandRLM
  def rev_op(61), do: :operandRLRSM
  def rev_op(62), do: :operandRORSM
  def rev_op(63), do: :operandRS
  def rev_op(64), do: :operandRSA
  def rev_op(65), do: :operandSET
  def rev_op(66), do: :operandSHIPSCAN
  def rev_op(67), do: :operandSKILLCHECK
  def rev_op(68), do: :operandSUB
  def rev_op(69), do: :operandSURVEYSCAN
  def rev_op(70), do: :operandTARGETHOSTILES
  def rev_op(71), do: :operandTARGETSILENTLY
  def rev_op(72), do: :operandTOOLTARGETSKILLS
  def rev_op(73), do: :operandUE
  def rev_op(74), do: :operandVERIFYTARGETGROUP
end
