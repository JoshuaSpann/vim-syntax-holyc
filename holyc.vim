" Vim syntax file for HolyC
" Language: HolyC
" Maintainer: Joshua Spann
" Latest Revision: 06 November 2019

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword unsignedElemnetKeyword U0 U8 U16 U32 U64
syn keyword signedElementKeyword I8 I16 I32 I64 F64 Bool
syn keyword genericKeyword if for while switch case start end no_warn asm return

" REGISTERS"
syn keyword register AH AL BH BL CH CL DH DL DI EAX EBX ECX EDX EDI R8 R9 R10 R11 R12 R13 R14 R15 RAX RBX RBP RCX RDI RDX RSI RSP SI SP

" FUNCTIONS "
syn keyword functionKeyword Adam AdamErr AdamFile AdamLog AMAlloc AMAllocIdent AStrNew AutoComplete

syn keyword functionKeyword B Beat Beep Bezier2 Bezier3 BFieldExtU32 BFieldOrU32 BirthWait
syn keyword functionKeyword BootDVDIns BootDVDProbe BootHDIns BootMHDIns BootRAM Busy
syn keyword functionKeyword Bt Btc Btr Bts

syn keyword functionKeyword Call Cd Free Print MStrPrint
syn keyword functionKeyword Dir DirMk

syn keyword functionKeyword F FD FF
syn keyword functionKeyword FileWrite
syn keyword functionKeyword Floor FloorI64 FloorU64 FlushMsgs
syn keyword functionKeyword FramePtr FramePtrAdd FramePtrDel FramePtrSet Free Freg2Ona
syn keyword functionKeyword Fs

syn keyword functionKeyword GodBits GodSong GodSongStr GodWord GodWordStr
syn keyword functionKeyword InsNote

syn keyword functionKeyword MAlloc MAllocIdent Man MapFileLoad MapFileWrite MassFind MassFindNum MassOrSpringFind Mat4x4IdentEqu Mat4x4IdentNew Mat4x4MulMat4x4Equ Mat4x4MulMat4x4New Mat4x4MulXYZ Mat4x4RotX Mat4x4RotY Mat4x4RotZ Mat4x4Scale Mat4x4 TranslationEqu
syn keyword functionKeyword Mem32DevAlloc MemCmp MemCpy MemberFind MemberMetaData MemRep MemSet
syn keyword functionKeyword Min MinI64 MinU64
syn keyword functionKeyword Mount Mount2 MountFile MountIDEAuto Move MSize MSize2 MStrPrint MStrUtil

syn keyword functionKeyword Panic PassTrace
syn keyword functionKeyword Plain Play
syn keyword functionKeyword Pop PopUp PopUpCancelOk PopUpColor PopUpColorLighting PopUpForm PopUpMenu PopUpOk PopUpPrint PopUpRangeI64 PostMsg PostMsgWait Pow10I64
syn keyword functionKeyword PressAKey Print PrintErr PrintWarn PrsKeyWord
syn keyword functionKeyword Push PutChars PutExcept PutFileLine PutKey

syn keyword functionKeyword R RD
syn keyword functionKeyword Rand RandI16 RandI32 RandI64 RandU16 RandU32 RandU64 Raw
syn keyword functionKeyword Reboot Refresh RegAppend RegDft RegExe RegWrite

syn keyword functionKeyword Saw
syn keyword functionKeyword Seed SetRAX SetRFlags SettingsPop SettingsPop2 SettingsPush
syn keyword functionKeyword Sign SignI64 Silent Sin Size SizeRep
syn keyword functionKeyword Sleep SleepUntil
syn keyword functionKeyword Str2I64 StrCmp StrCpy StreamDoc StreamExePrint StreamPrint StrLen StrNCmp StrNew StrOcc StrPrint StrPrintJoin 
syn keyword functionKeyword Suspend

syn keyword functionKeyword WinBorder WinCalcIdles WinCursorPosSet WinDerivedValsUpdate WinDerivedScrollValsUpdate WinFocus WinFinalUpdate WinGrid WinHorz WinInside WinKeyNavMenu WinMax WinMgrSleep WinMgrTask WinMsUpdate WinOnTopWindows WinQueIpMsgs WinRefocus WinScrollNull WinScrollRestore WinTileHorz WinTileVert WinToTop WinVert WinZBufUpdate


"syn region stringRegion start='"' end='"' contained
syn region stringRegion start=+L\="+ skip=+\\\\\|\\"+ end=+"+
syn region charRegion start=+L\='+ skip=+\\\\\|\\'+ end=+'+
"syn region charRegion start="'" end="'" contained
"syn match comment '[/*].*[*/]' 
syn region comment start="/\*" end="\*/" fold extend
syn match comment "//.*$"
syn region encodedSongRegion start="\$SO" end="\$" fold extend
syn match number '\d\+' contained display
syn match number '[-+]\d\+' contained display

hi def link unsignedElemnetKeyword	 Type
hi def link signedElementKeyword	 Type
hi def link genericKeyword		 Keyword
hi def link functionKeyword		 Function
hi def link stringRegion		 String
hi def link charRegion			 Constant
hi def link encodedSongRegion		 Type
hi def link comment			 Comment
hi def link number			 Constant

let b:current_syntax = "holyc"
