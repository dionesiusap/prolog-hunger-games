/* saving to external file */
save(Fname) :- 
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,[L]),
        (t1(1,1,M1)),
        (t2(2,1,M2)),
        (t3(3,1,M3)),
        (t4(4,1,M4)),
        (t5(5,1,M5)),
        (t6(6,1,M6)),
        (t7(7,1,M7)),
        (t8(8,1,M8)),
        (t9(9,1,M9)),
        (t10(10,1,M10)),
        (t11(1,2,M11)),
        (t12(2,2,M12)),
        (t13(3,2,M13)),
        (t14(4,2,M14)),
        (t15(5,2,M15)),
        (t16(6,2,M16)),
        (t17(7,2,M17)),
        (t18(8,2,M18)),
        (t19(9,2,M19)),
        (t20(10,2,M20)),
        (t21(1,3,M21)),
        (t22(2,3,M22)),
        (t23(3,3,M23)),
        (t24(4,3,M24)),
        (t25(5,3,M25)),
        (t26(6,3,M26)),
        (t27(7,3,M27)),
        (t28(8,3,M28)),
        (t29(9,3,M29)),
        (t30(10,3,M30)),
        (t31(1,4,M31)),
        (t32(2,4,M32)),
        (t33(3,4,M33)),
        (t34(4,4,M34)),
        (t35(5,4,M35)),
        (t36(6,4,M36)),
        (t37(7,4,M37)),
        (t38(8,4,M38)),
        (t39(9,4,M39)),
        (t40(10,4,M40)),
        (t41(1,5,M41)),
        (t42(2,5,M42)),
        (t43(3,5,M43)),
        (t44(4,5,M44)),
        (t45(5,5,M45)),
        (t46(6,5,M46)),
        (t47(7,5,M47)),
        (t48(8,5,M48)),
        (t49(9,5,M49)),
        (t50(10,5,M50)),
        (t51(1,6,M51)),
        (t52(2,6,M52)),
        (t53(3,6,M53)),
        (t54(4,6,M54)),
        (t55(5,6,M55)),
        (t56(6,6,M56)),
        (t57(7,6,M57)),
        (t58(8,6,M58)),
        (t59(9,6,M59)),
        (t60(10,6,M60)),
        (t61(1,7,M61)),
        (t62(2,7,M62)),
        (t63(3,7,M63)),
        (t64(4,7,M64)),
        (t65(5,7,M65)),
        (t66(6,7,M66)),
        (t67(7,7,M67)),
        (t68(8,7,M68)),
        (t69(9,7,M69)),
        (t70(10,7,M70)),
        (t71(1,8,M71)),
        (t72(2,8,M72)),
        (t73(3,8,M73)),
        (t74(4,8,M74)),
        (t75(5,8,M75)),
        (t76(6,8,M76)),
        (t77(7,8,M77)),
        (t78(8,8,M78)),
        (t79(9,8,M79)),
        (t80(10,8,M80)),
        (t81(1,9,M81)),
        (t82(2,9,M82)),
        (t83(3,9,M83)),
        (t84(4,9,M84)),
        (t85(5,9,M85)),
        (t86(6,9,M86)),
        (t87(7,9,M87)),
        (t88(8,9,M88)),
        (t89(9,9,M89)),
        (t90(10,9,M90)),
        (t91(1,10,M991)),
        (t92(2,10,M992)),
        (t93(3,10,M993)),
        (t94(4,10,M994)),
        (t95(5,10,M995)),
        (t96(6,10,M996)),
        (t97(7,10,M997)),
        (t98(8,10,M998)),
        (t99(9,10,M999)),
        (t100(10,10,M9100)),
        (t101(1,11,M101)),
        (t102(2,11,M102)),
        (t103(3,11,M103)),
        (t104(4,11,M104)),
        (t105(5,11,M105)),
        (t106(6,11,M106)),
        (t107(7,11,M107)),
        (t108(8,11,M108)),
        (t109(9,11,M109)),
        (t110(10,11,M110)),
        (t111(1,12,M111)),
        (t112(2,12,M112)),
        (t113(3,12,M113)),
        (t114(4,12,M114)),
        (t115(5,12,M115)),
        (t116(6,12,M116)),
        (t117(7,12,M117)),
        (t118(8,12,M118)),
        (t119(9,12,M119)),
        (t120(10,12,M120)),
        (t121(1,13,M121)),
        (t122(2,13,M122)),
        (t123(3,13,M123)),
        (t124(4,13,M124)),
        (t125(5,13,M125)),
        (t126(6,13,M126)),
        (t127(7,13,M127)),
        (t128(8,13,M128)),
        (t129(9,13,M129)),
        (t130(10,13,M130)),
        (t131(1,14,M131)),
        (t132(2,14,M132)),
        (t133(3,14,M133)),
        (t134(4,14,M134)),
        (t135(5,14,M135)),
        (t136(6,14,M136)),
        (t137(7,14,M137)),
        (t138(8,14,M138)),
        (t139(9,14,M139)),
        (t140(10,14,M140)),
        (t141(1,15,M141)),
        (t142(2,15,M142)),
        (t143(3,15,M143)),
        (t144(4,15,M144)),
        (t145(5,15,M145)),
        (t146(6,15,M146)),
        (t147(7,15,M147)),
        (t148(8,15,M148)),
        (t149(9,15,M149)),
        (t150(10,15,M150)),
        (t151(1,16,M151)),
        (t152(2,16,M152)),
        (t153(3,16,M153)),
        (t154(4,16,M154)),
        (t155(5,16,M155)),
        (t156(6,16,M156)),
        (t157(7,16,M157)),
        (t158(8,16,M158)),
        (t159(9,16,M159)),
        (t160(10,16,M160)),
        (t161(1,17,M161)),
        (t162(2,17,M162)),
        (t163(3,17,M163)),
        (t164(4,17,M164)),
        (t165(5,17,M165)),
        (t166(6,17,M166)),
        (t167(7,17,M167)),
        (t168(8,17,M168)),
        (t169(9,17,M169)),
        (t170(10,17,M170)),
        (t171(1,18,M171)),
        (t172(2,18,M172)),
        (t173(3,18,M173)),
        (t174(4,18,M174)),
        (t175(5,18,M175)),
        (t176(6,18,M176)),
        (t177(7,18,M177)),
        (t178(8,18,M178)),
        (t179(9,18,M179)),
        (t180(10,18,M180)),
        (t181(1,19,M181)),
        (t182(2,19,M182)),
        (t183(3,19,M183)),
        (t184(4,19,M184)),
        (t185(5,19,M185)),
        (t186(6,19,M186)),
        (t187(7,19,M187)),
        (t188(8,19,M188)),
        (t189(9,19,M189)),
        (t190(10,19,M190)),
        (t191(1,20,M191)),
        (t192(2,20,M192)),
        (t193(3,20,M193)),
        (t194(4,20,M194)),
        (t195(5,20,M195)),
        (t196(6,20,M196)),
        (t197(7,20,M197)),
        (t198(8,20,M198)),
        (t199(9,20,M199)),
        (t200(10,20,M200)),
        setup_call_cleanup(
         open(Fname,write,Out),
          (
                write_term(Out, e1(A,B,C,D,A1), [fullstop(true)]),nl(Out),
                write_term(Out, e2(E,F,G,H,A2), [fullstop(true)]),nl(Out),
                write_term(Out, e3(I,J,K,L,A3), [fullstop(true)]),nl(Out),
                write_term(Out, e4(M,N,O,P,A4), [fullstop(true)]),nl(Out),
                write_term(Out, e5(Q,R,S,T,A5), [fullstop(true)]),nl(Out),
                write_term(Out, e6(U,V,W,X,A6), [fullstop(true)]),nl(Out),
                write_term(Out, e7(Y,Z,AA,AB,A7),[fullstop(true)]),nl(Out),
                write_term(Out, e8(AC,AD,AE,AF,A8),[fullstop(true)]),nl(Out),
                write_term(Out, e9(AG,AH,AI,AJ,A9),[fullstop(true)]),nl(Out),
                write_term(Out, e10(AK,AL,AM,AN,A10),[fullstop(true)]),nl(Out),
                write_term(Out, player(AO,AP,AQ,AR,AS,AT,AU,[L]),[fullstop(true)]),nl(Out),
                write_term(Out, t1(1,1,M1),[fullstop(true)]),nl(Out),
                write_term(Out, t2(2,1,M2),[fullstop(true)]),nl(Out),
                write_term(Out, t3(3,1,M3),[fullstop(true)]),nl(Out),
                write_term(Out, t4(4,1,M4),[fullstop(true)]),nl(Out),
                write_term(Out, t5(5,1,M5),[fullstop(true)]),nl(Out),
                write_term(Out, t6(6,1,M6),[fullstop(true)]),nl(Out),
                write_term(Out, t7(7,1,M7),[fullstop(true)]),nl(Out),
                write_term(Out, t8(8,1,M8),[fullstop(true)]),nl(Out),
                write_term(Out, t9(9,1,M9),[fullstop(true)]),nl(Out),
                write_term(Out, t10(10,1,M10),[fullstop(true)]),nl(Out),
                write_term(Out, t11(1,2,M11),[fullstop(true)]),nl(Out),
                write_term(Out, t12(2,2,M12),[fullstop(true)]),nl(Out),
                write_term(Out, t13(3,2,M13),[fullstop(true)]),nl(Out),
                write_term(Out, t14(4,2,M14),[fullstop(true)]),nl(Out),
                write_term(Out, t15(5,2,M15),[fullstop(true)]),nl(Out),
                write_term(Out, t16(6,2,M16),[fullstop(true)]),nl(Out),
                write_term(Out, t17(7,2,M17),[fullstop(true)]),nl(Out),
                write_term(Out, t18(8,2,M18),[fullstop(true)]),nl(Out),
                write_term(Out, t19(9,2,M19),[fullstop(true)]),nl(Out),
                write_term(Out, t20(10,2,M20),[fullstop(true)]),nl(Out),
                write_term(Out, t21(1,3,M21),[fullstop(true)]),nl(Out),
                write_term(Out, t22(2,3,M22),[fullstop(true)]),nl(Out),
                write_term(Out, t23(3,3,M23),[fullstop(true)]),nl(Out),
                write_term(Out, t24(4,3,M24),[fullstop(true)]),nl(Out),
                write_term(Out, t25(5,3,M25),[fullstop(true)]),nl(Out),
                write_term(Out, t26(6,3,M26),[fullstop(true)]),nl(Out),
                write_term(Out, t27(7,3,M27),[fullstop(true)]),nl(Out),
                write_term(Out, t28(8,3,M28),[fullstop(true)]),nl(Out),
                write_term(Out, t29(9,3,M29),[fullstop(true)]),nl(Out),
                write_term(Out, t30(10,3,M30),[fullstop(true)]),nl(Out),
                write_term(Out, t31(1,4,M31),[fullstop(true)]),nl(Out),
                write_term(Out, t32(2,4,M32),[fullstop(true)]),nl(Out),
                write_term(Out, t33(3,4,M33),[fullstop(true)]),nl(Out),
                write_term(Out, t34(4,4,M34),[fullstop(true)]),nl(Out),
                write_term(Out, t35(5,4,M35),[fullstop(true)]),nl(Out),
                write_term(Out, t36(6,4,M36),[fullstop(true)]),nl(Out),
                write_term(Out, t37(7,4,M37),[fullstop(true)]),nl(Out),
                write_term(Out, t38(8,4,M38),[fullstop(true)]),nl(Out),
                write_term(Out, t39(9,4,M39),[fullstop(true)]),nl(Out),
                write_term(Out, t40(10,4,M40),[fullstop(true)]),nl(Out),
                write_term(Out, t41(1,5,M41),[fullstop(true)]),nl(Out),
                write_term(Out, t42(2,5,M42),[fullstop(true)]),nl(Out),
                write_term(Out, t43(3,5,M43),[fullstop(true)]),nl(Out),
                write_term(Out, t44(4,5,M44),[fullstop(true)]),nl(Out),
                write_term(Out, t45(5,5,M45),[fullstop(true)]),nl(Out),
                write_term(Out, t46(6,5,M46),[fullstop(true)]),nl(Out),
                write_term(Out, t47(7,5,M47),[fullstop(true)]),nl(Out),
                write_term(Out, t48(8,5,M48),[fullstop(true)]),nl(Out),
                write_term(Out, t49(9,5,M49),[fullstop(true)]),nl(Out),
                write_term(Out, t50(10,5,M50),[fullstop(true)]),nl(Out),
                write_term(Out, t51(1,6,M51),[fullstop(true)]),nl(Out),
                write_term(Out, t52(2,6,M52),[fullstop(true)]),nl(Out),
                write_term(Out, t53(3,6,M53),[fullstop(true)]),nl(Out),
                write_term(Out, t54(4,6,M54),[fullstop(true)]),nl(Out),
                write_term(Out, t55(5,6,M55),[fullstop(true)]),nl(Out),
                write_term(Out, t56(6,6,M56),[fullstop(true)]),nl(Out),
                write_term(Out, t57(7,6,M57),[fullstop(true)]),nl(Out),
                write_term(Out, t58(8,6,M58),[fullstop(true)]),nl(Out),
                write_term(Out, t59(9,6,M59),[fullstop(true)]),nl(Out),
                write_term(Out, t60(10,6,M60),[fullstop(true)]),nl(Out),
                write_term(Out, t61(1,7,M61),[fullstop(true)]),nl(Out),
                write_term(Out, t62(2,7,M62),[fullstop(true)]),nl(Out),
                write_term(Out, t63(3,7,M63),[fullstop(true)]),nl(Out),
                write_term(Out, t64(4,7,M64),[fullstop(true)]),nl(Out),
                write_term(Out, t65(5,7,M65),[fullstop(true)]),nl(Out),
                write_term(Out, t66(6,7,M66),[fullstop(true)]),nl(Out),
                write_term(Out, t67(7,7,M67),[fullstop(true)]),nl(Out),
                write_term(Out, t68(8,7,M68),[fullstop(true)]),nl(Out),
                write_term(Out, t69(9,7,M69),[fullstop(true)]),nl(Out),
                write_term(Out, t70(10,7,M70),[fullstop(true)]),nl(Out),
                write_term(Out, t71(1,8,M71),[fullstop(true)]),nl(Out),
                write_term(Out, t72(2,8,M72),[fullstop(true)]),nl(Out),
                write_term(Out, t73(3,8,M73),[fullstop(true)]),nl(Out),
                write_term(Out, t74(4,8,M74),[fullstop(true)]),nl(Out),
                write_term(Out, t75(5,8,M75),[fullstop(true)]),nl(Out),
                write_term(Out, t76(6,8,M76),[fullstop(true)]),nl(Out),
                write_term(Out, t77(7,8,M77),[fullstop(true)]),nl(Out),
                write_term(Out, t78(8,8,M78),[fullstop(true)]),nl(Out),
                write_term(Out, t79(9,8,M79),[fullstop(true)]),nl(Out),
                write_term(Out, t80(10,8,M80),[fullstop(true)]),nl(Out),
                write_term(Out, t81(1,9,M81),[fullstop(true)]),nl(Out),
                write_term(Out, t82(2,9,M82),[fullstop(true)]),nl(Out),
                write_term(Out, t83(3,9,M83),[fullstop(true)]),nl(Out),
                write_term(Out, t84(4,9,M84),[fullstop(true)]),nl(Out),
                write_term(Out, t85(5,9,M85),[fullstop(true)]),nl(Out),
                write_term(Out, t86(6,9,M86),[fullstop(true)]),nl(Out),
                write_term(Out, t87(7,9,M87),[fullstop(true)]),nl(Out),
                write_term(Out, t88(8,9,M88),[fullstop(true)]),nl(Out),
                write_term(Out, t89(9,9,M89),[fullstop(true)]),nl(Out),
                write_term(Out, t90(10,9,M90),[fullstop(true)]),nl(Out),
                write_term(Out, t91(1,10,M991),[fullstop(true)]),nl(Out),
                write_term(Out, t92(2,10,M992),[fullstop(true)]),nl(Out),
                write_term(Out, t93(3,10,M993),[fullstop(true)]),nl(Out),
                write_term(Out, t94(4,10,M994),[fullstop(true)]),nl(Out),
                write_term(Out, t95(5,10,M995),[fullstop(true)]),nl(Out),
                write_term(Out, t96(6,10,M996),[fullstop(true)]),nl(Out),
                write_term(Out, t97(7,10,M997),[fullstop(true)]),nl(Out),
                write_term(Out, t98(8,10,M998),[fullstop(true)]),nl(Out),
                write_term(Out, t99(9,10,M999),[fullstop(true)]),nl(Out),
                write_term(Out, t100(10,10,M9100),[fullstop(true)]),nl(Out),
                write_term(Out, t101(1,11,M101),[fullstop(true)]),nl(Out),
                write_term(Out, t102(2,11,M102),[fullstop(true)]),nl(Out),
                write_term(Out, t103(3,11,M103),[fullstop(true)]),nl(Out),
                write_term(Out, t104(4,11,M104),[fullstop(true)]),nl(Out),
                write_term(Out, t105(5,11,M105),[fullstop(true)]),nl(Out),
                write_term(Out, t106(6,11,M106),[fullstop(true)]),nl(Out),
                write_term(Out, t107(7,11,M107),[fullstop(true)]),nl(Out),
                write_term(Out, t108(8,11,M108),[fullstop(true)]),nl(Out),
                write_term(Out, t109(9,11,M109),[fullstop(true)]),nl(Out),
                write_term(Out, t110(10,11,M110),[fullstop(true)]),nl(Out),
                write_term(Out, t111(1,12,M111),[fullstop(true)]),nl(Out),
                write_term(Out, t112(2,12,M112),[fullstop(true)]),nl(Out),
                write_term(Out, t113(3,12,M113),[fullstop(true)]),nl(Out),
                write_term(Out, t114(4,12,M114),[fullstop(true)]),nl(Out),
                write_term(Out, t115(5,12,M115),[fullstop(true)]),nl(Out),
                write_term(Out, t116(6,12,M116),[fullstop(true)]),nl(Out),
                write_term(Out, t117(7,12,M117),[fullstop(true)]),nl(Out),
                write_term(Out, t118(8,12,M118),[fullstop(true)]),nl(Out),
                write_term(Out, t119(9,12,M119),[fullstop(true)]),nl(Out),
                write_term(Out, t120(10,12,M120),[fullstop(true)]),nl(Out),
                write_term(Out, t121(1,13,M121),[fullstop(true)]),nl(Out),
                write_term(Out, t122(2,13,M122),[fullstop(true)]),nl(Out),
                write_term(Out, t123(3,13,M123),[fullstop(true)]),nl(Out),
                write_term(Out, t124(4,13,M124),[fullstop(true)]),nl(Out),
                write_term(Out, t125(5,13,M125),[fullstop(true)]),nl(Out),
                write_term(Out, t126(6,13,M126),[fullstop(true)]),nl(Out),
                write_term(Out, t127(7,13,M127),[fullstop(true)]),nl(Out),
                write_term(Out, t128(8,13,M128),[fullstop(true)]),nl(Out),
                write_term(Out, t129(9,13,M129),[fullstop(true)]),nl(Out),
                write_term(Out, t130(10,13,M130),[fullstop(true)]),nl(Out),
                write_term(Out, t131(1,14,M131),[fullstop(true)]),nl(Out),
                write_term(Out, t132(2,14,M132),[fullstop(true)]),nl(Out),
                write_term(Out, t133(3,14,M133),[fullstop(true)]),nl(Out),
                write_term(Out, t134(4,14,M134),[fullstop(true)]),nl(Out),
                write_term(Out, t135(5,14,M135),[fullstop(true)]),nl(Out),
                write_term(Out, t136(6,14,M136),[fullstop(true)]),nl(Out),
                write_term(Out, t137(7,14,M137),[fullstop(true)]),nl(Out),
                write_term(Out, t138(8,14,M138),[fullstop(true)]),nl(Out),
                write_term(Out, t139(9,14,M139),[fullstop(true)]),nl(Out),
                write_term(Out, t140(10,14,M140),[fullstop(true)]),nl(Out),
                write_term(Out, t141(1,15,M141),[fullstop(true)]),nl(Out),
                write_term(Out, t142(2,15,M142),[fullstop(true)]),nl(Out),
                write_term(Out, t143(3,15,M143),[fullstop(true)]),nl(Out),
                write_term(Out, t144(4,15,M144),[fullstop(true)]),nl(Out),
                write_term(Out, t145(5,15,M145),[fullstop(true)]),nl(Out),
                write_term(Out, t146(6,15,M146),[fullstop(true)]),nl(Out),
                write_term(Out, t147(7,15,M147),[fullstop(true)]),nl(Out),
                write_term(Out, t148(8,15,M148),[fullstop(true)]),nl(Out),
                write_term(Out, t149(9,15,M149),[fullstop(true)]),nl(Out),
                write_term(Out, t150(10,15,M150),[fullstop(true)]),nl(Out),
                write_term(Out, t151(1,16,M151),[fullstop(true)]),nl(Out),
                write_term(Out, t152(2,16,M152),[fullstop(true)]),nl(Out),
                write_term(Out, t153(3,16,M153),[fullstop(true)]),nl(Out),
                write_term(Out, t154(4,16,M154),[fullstop(true)]),nl(Out),
                write_term(Out, t155(5,16,M155),[fullstop(true)]),nl(Out),
                write_term(Out, t156(6,16,M156),[fullstop(true)]),nl(Out),
                write_term(Out, t157(7,16,M157),[fullstop(true)]),nl(Out),
                write_term(Out, t158(8,16,M158),[fullstop(true)]),nl(Out),
                write_term(Out, t159(9,16,M159),[fullstop(true)]),nl(Out),
                write_term(Out, t160(10,16,M160),[fullstop(true)]),nl(Out),
                write_term(Out, t161(1,17,M161),[fullstop(true)]),nl(Out),
                write_term(Out, t162(2,17,M162),[fullstop(true)]),nl(Out),
                write_term(Out, t163(3,17,M163),[fullstop(true)]),nl(Out),
                write_term(Out, t164(4,17,M164),[fullstop(true)]),nl(Out),
                write_term(Out, t165(5,17,M165),[fullstop(true)]),nl(Out),
                write_term(Out, t166(6,17,M166),[fullstop(true)]),nl(Out),
                write_term(Out, t167(7,17,M167),[fullstop(true)]),nl(Out),
                write_term(Out, t168(8,17,M168),[fullstop(true)]),nl(Out),
                write_term(Out, t169(9,17,M169),[fullstop(true)]),nl(Out),
                write_term(Out, t170(10,17,M170),[fullstop(true)]),nl(Out),
                write_term(Out, t171(1,18,M171),[fullstop(true)]),nl(Out),
                write_term(Out, t172(2,18,M172),[fullstop(true)]),nl(Out),
                write_term(Out, t173(3,18,M173),[fullstop(true)]),nl(Out),
                write_term(Out, t174(4,18,M174),[fullstop(true)]),nl(Out),
                write_term(Out, t175(5,18,M175),[fullstop(true)]),nl(Out),
                write_term(Out, t176(6,18,M176),[fullstop(true)]),nl(Out),
                write_term(Out, t177(7,18,M177),[fullstop(true)]),nl(Out),
                write_term(Out, t178(8,18,M178),[fullstop(true)]),nl(Out),
                write_term(Out, t179(9,18,M179),[fullstop(true)]),nl(Out),
                write_term(Out, t180(10,18,M180),[fullstop(true)]),nl(Out),
                write_term(Out, t181(1,19,M181),[fullstop(true)]),nl(Out),
                write_term(Out, t182(2,19,M182),[fullstop(true)]),nl(Out),
                write_term(Out, t183(3,19,M183),[fullstop(true)]),nl(Out),
                write_term(Out, t184(4,19,M184),[fullstop(true)]),nl(Out),
                write_term(Out, t185(5,19,M185),[fullstop(true)]),nl(Out),
                write_term(Out, t186(6,19,M186),[fullstop(true)]),nl(Out),
                write_term(Out, t187(7,19,M187),[fullstop(true)]),nl(Out),
                write_term(Out, t188(8,19,M188),[fullstop(true)]),nl(Out),
                write_term(Out, t189(9,19,M189),[fullstop(true)]),nl(Out),
                write_term(Out, t190(10,19,M190),[fullstop(true)]),nl(Out),
                write_term(Out, t191(1,20,M191),[fullstop(true)]),nl(Out),
                write_term(Out, t192(2,20,M192),[fullstop(true)]),nl(Out),
                write_term(Out, t193(3,20,M193),[fullstop(true)]),nl(Out),
                write_term(Out, t194(4,20,M194),[fullstop(true)]),nl(Out),
                write_term(Out, t195(5,20,M195),[fullstop(true)]),nl(Out),
                write_term(Out, t196(6,20,M196),[fullstop(true)]),nl(Out),
                write_term(Out, t197(7,20,M197),[fullstop(true)]),nl(Out),
                write_term(Out, t198(8,20,M198),[fullstop(true)]),nl(Out),
                write_term(Out, t199(9,20,M199),[fullstop(true)]),nl(Out),
                write_term(Out, t200(10,20,M200),[fullstop(true)]),nl(Out)

          ),
         close(Out)
        ).

delEverything :-
        e1(A,B,C,D,A1), e2(E,F,G,H,A2),
        e3(I,J,K,L,A3), e4(M,N,O,P,A4),
        e5(Q,R,S,T,A5), e6(U,V,W,X,A6),
        e7(Y,Z,AA,AB,A7), e8(AC,AD,AE,AF,A8),
        e9(AG,AH,AI,AJ,A9), e10(AK,AL,AM,AN,A10),
        player(AO,AP,AQ,AR,AS,AT,AU,[L]),
        (t1(1,1,M1)),
        (t2(2,1,M2)),
        (t3(3,1,M3)),
        (t4(4,1,M4)),
        (t5(5,1,M5)),
        (t6(6,1,M6)),
        (t7(7,1,M7)),
        (t8(8,1,M8)),
        (t9(9,1,M9)),
        (t10(10,1,M10)),
        (t11(1,2,M11)),
        (t12(2,2,M12)),
        (t13(3,2,M13)),
        (t14(4,2,M14)),
        (t15(5,2,M15)),
        (t16(6,2,M16)),
        (t17(7,2,M17)),
        (t18(8,2,M18)),
        (t19(9,2,M19)),
        (t20(10,2,M20)),
        (t21(1,3,M21)),
        (t22(2,3,M22)),
        (t23(3,3,M23)),
        (t24(4,3,M24)),
        (t25(5,3,M25)),
        (t26(6,3,M26)),
        (t27(7,3,M27)),
        (t28(8,3,M28)),
        (t29(9,3,M29)),
        (t30(10,3,M30)),
        (t31(1,4,M31)),
        (t32(2,4,M32)),
        (t33(3,4,M33)),
        (t34(4,4,M34)),
        (t35(5,4,M35)),
        (t36(6,4,M36)),
        (t37(7,4,M37)),
        (t38(8,4,M38)),
        (t39(9,4,M39)),
        (t40(10,4,M40)),
        (t41(1,5,M41)),
        (t42(2,5,M42)),
        (t43(3,5,M43)),
        (t44(4,5,M44)),
        (t45(5,5,M45)),
        (t46(6,5,M46)),
        (t47(7,5,M47)),
        (t48(8,5,M48)),
        (t49(9,5,M49)),
        (t50(10,5,M50)),
        (t51(1,6,M51)),
        (t52(2,6,M52)),
        (t53(3,6,M53)),
        (t54(4,6,M54)),
        (t55(5,6,M55)),
        (t56(6,6,M56)),
        (t57(7,6,M57)),
        (t58(8,6,M58)),
        (t59(9,6,M59)),
        (t60(10,6,M60)),
        (t61(1,7,M61)),
        (t62(2,7,M62)),
        (t63(3,7,M63)),
        (t64(4,7,M64)),
        (t65(5,7,M65)),
        (t66(6,7,M66)),
        (t67(7,7,M67)),
        (t68(8,7,M68)),
        (t69(9,7,M69)),
        (t70(10,7,M70)),
        (t71(1,8,M71)),
        (t72(2,8,M72)),
        (t73(3,8,M73)),
        (t74(4,8,M74)),
        (t75(5,8,M75)),
        (t76(6,8,M76)),
        (t77(7,8,M77)),
        (t78(8,8,M78)),
        (t79(9,8,M79)),
        (t80(10,8,M80)),
        (t81(1,9,M81)),
        (t82(2,9,M82)),
        (t83(3,9,M83)),
        (t84(4,9,M84)),
        (t85(5,9,M85)),
        (t86(6,9,M86)),
        (t87(7,9,M87)),
        (t88(8,9,M88)),
        (t89(9,9,M89)),
        (t90(10,9,M90)),
        (t91(1,10,M991)),
        (t92(2,10,M992)),
        (t93(3,10,M993)),
        (t94(4,10,M994)),
        (t95(5,10,M995)),
        (t96(6,10,M996)),
        (t97(7,10,M997)),
        (t98(8,10,M998)),
        (t99(9,10,M999)),
        (t100(10,10,M9100)),
        (t101(1,11,M101)),
        (t102(2,11,M102)),
        (t103(3,11,M103)),
        (t104(4,11,M104)),
        (t105(5,11,M105)),
        (t106(6,11,M106)),
        (t107(7,11,M107)),
        (t108(8,11,M108)),
        (t109(9,11,M109)),
        (t110(10,11,M110)),
        (t111(1,12,M111)),
        (t112(2,12,M112)),
        (t113(3,12,M113)),
        (t114(4,12,M114)),
        (t115(5,12,M115)),
        (t116(6,12,M116)),
        (t117(7,12,M117)),
        (t118(8,12,M118)),
        (t119(9,12,M119)),
        (t120(10,12,M120)),
        (t121(1,13,M121)),
        (t122(2,13,M122)),
        (t123(3,13,M123)),
        (t124(4,13,M124)),
        (t125(5,13,M125)),
        (t126(6,13,M126)),
        (t127(7,13,M127)),
        (t128(8,13,M128)),
        (t129(9,13,M129)),
        (t130(10,13,M130)),
        (t131(1,14,M131)),
        (t132(2,14,M132)),
        (t133(3,14,M133)),
        (t134(4,14,M134)),
        (t135(5,14,M135)),
        (t136(6,14,M136)),
        (t137(7,14,M137)),
        (t138(8,14,M138)),
        (t139(9,14,M139)),
        (t140(10,14,M140)),
        (t141(1,15,M141)),
        (t142(2,15,M142)),
        (t143(3,15,M143)),
        (t144(4,15,M144)),
        (t145(5,15,M145)),
        (t146(6,15,M146)),
        (t147(7,15,M147)),
        (t148(8,15,M148)),
        (t149(9,15,M149)),
        (t150(10,15,M150)),
        (t151(1,16,M151)),
        (t152(2,16,M152)),
        (t153(3,16,M153)),
        (t154(4,16,M154)),
        (t155(5,16,M155)),
        (t156(6,16,M156)),
        (t157(7,16,M157)),
        (t158(8,16,M158)),
        (t159(9,16,M159)),
        (t160(10,16,M160)),
        (t161(1,17,M161)),
        (t162(2,17,M162)),
        (t163(3,17,M163)),
        (t164(4,17,M164)),
        (t165(5,17,M165)),
        (t166(6,17,M166)),
        (t167(7,17,M167)),
        (t168(8,17,M168)),
        (t169(9,17,M169)),
        (t170(10,17,M170)),
        (t171(1,18,M171)),
        (t172(2,18,M172)),
        (t173(3,18,M173)),
        (t174(4,18,M174)),
        (t175(5,18,M175)),
        (t176(6,18,M176)),
        (t177(7,18,M177)),
        (t178(8,18,M178)),
        (t179(9,18,M179)),
        (t180(10,18,M180)),
        (t181(1,19,M181)),
        (t182(2,19,M182)),
        (t183(3,19,M183)),
        (t184(4,19,M184)),
        (t185(5,19,M185)),
        (t186(6,19,M186)),
        (t187(7,19,M187)),
        (t188(8,19,M188)),
        (t189(9,19,M189)),
        (t190(10,19,M190)),
        (t191(1,20,M191)),
        (t192(2,20,M192)),
        (t193(3,20,M193)),
        (t194(4,20,M194)),
        (t195(5,20,M195)),
        (t196(6,20,M196)),
        (t197(7,20,M197)),
        (t198(8,20,M198)),
        (t199(9,20,M199)),
        (t200(10,20,M200)),
        retract(e1(A,B,C,D,A1)), retract(e2(E,F,G,H,A2)),
        retract(e3(I,J,K,L,A3)), retract(e4(M,N,O,P,A4)),
        retract(e5(Q,R,S,T,A5)), retract(e6(U,V,W,X,A6)),
        retract(e7(Y,Z,AA,AB,A7)), retract(e8(AC,AD,AE,AF,A8)),
        retract(e9(AG,AH,AI,AJ,A9)), retract(e10(AK,AL,AM,AN,A10)),
        retract(player(AO,AP,AQ,AR,AS,AT,AU,[L])),
        retract(t1(1,1,M1)),
        retract(t2(2,1,M2)),
        retract(t3(3,1,M3)),
        retract(t4(4,1,M4)),
        retract(t5(5,1,M5)),
        retract(t6(6,1,M6)),
        retract(t7(7,1,M7)),
        retract(t8(8,1,M8)),
        retract(t9(9,1,M9)),
        retract(t10(10,1,M10)),
        retract(t11(1,2,M11)),
        retract(t12(2,2,M12)),
        retract(t13(3,2,M13)),
        retract(t14(4,2,M14)),
        retract(t15(5,2,M15)),
        retract(t16(6,2,M16)),
        retract(t17(7,2,M17)),
        retract(t18(8,2,M18)),
        retract(t19(9,2,M19)),
        retract(t20(10,2,M20)),
        retract(t21(1,3,M21)),
        retract(t22(2,3,M22)),
        retract(t23(3,3,M23)),
        retract(t24(4,3,M24)),
        retract(t25(5,3,M25)),
        retract(t26(6,3,M26)),
        retract(t27(7,3,M27)),
        retract(t28(8,3,M28)),
        retract(t29(9,3,M29)),
        retract(t30(10,3,M30)),
        retract(t31(1,4,M31)),
        retract(t32(2,4,M32)),
        retract(t33(3,4,M33)),
        retract(t34(4,4,M34)),
        retract(t35(5,4,M35)),
        retract(t36(6,4,M36)),
        retract(t37(7,4,M37)),
        retract(t38(8,4,M38)),
        retract(t39(9,4,M39)),
        retract(t40(10,4,M40)),
        retract(t41(1,5,M41)),
        retract(t42(2,5,M42)),
        retract(t43(3,5,M43)),
        retract(t44(4,5,M44)),
        retract(t45(5,5,M45)),
        retract(t46(6,5,M46)),
        retract(t47(7,5,M47)),
        retract(t48(8,5,M48)),
        retract(t49(9,5,M49)),
        retract(t50(10,5,M50)),
        retract(t51(1,6,M51)),
        retract(t52(2,6,M52)),
        retract(t53(3,6,M53)),
        retract(t54(4,6,M54)),
        retract(t55(5,6,M55)),
        retract(t56(6,6,M56)),
        retract(t57(7,6,M57)),
        retract(t58(8,6,M58)),
        retract(t59(9,6,M59)),
        retract(t60(10,6,M60)),
        retract(t61(1,7,M61)),
        retract(t62(2,7,M62)),
        retract(t63(3,7,M63)),
        retract(t64(4,7,M64)),
        retract(t65(5,7,M65)),
        retract(t66(6,7,M66)),
        retract(t67(7,7,M67)),
        retract(t68(8,7,M68)),
        retract(t69(9,7,M69)),
        retract(t70(10,7,M70)),
        retract(t71(1,8,M71)),
        retract(t72(2,8,M72)),
        retract(t73(3,8,M73)),
        retract(t74(4,8,M74)),
        retract(t75(5,8,M75)),
        retract(t76(6,8,M76)),
        retract(t77(7,8,M77)),
        retract(t78(8,8,M78)),
        retract(t79(9,8,M79)),
        retract(t80(10,8,M80)),
        retract(t81(1,9,M81)),
        retract(t82(2,9,M82)),
        retract(t83(3,9,M83)),
        retract(t84(4,9,M84)),
        retract(t85(5,9,M85)),
        retract(t86(6,9,M86)),
        retract(t87(7,9,M87)),
        retract(t88(8,9,M88)),
        retract(t89(9,9,M89)),
        retract(t90(10,9,M90)),
        retract(t91(1,10,M991)),
        retract(t92(2,10,M992)),
        retract(t93(3,10,M993)),
        retract(t94(4,10,M994)),
        retract(t95(5,10,M995)),
        retract(t96(6,10,M996)),
        retract(t97(7,10,M997)),
        retract(t98(8,10,M998)),
        retract(t99(9,10,M999)),
        retract(t100(10,10,M9100)),
        retract(t101(1,11,M101)),
        retract(t102(2,11,M102)),
        retract(t103(3,11,M103)),
        retract(t104(4,11,M104)),
        retract(t105(5,11,M105)),
        retract(t106(6,11,M106)),
        retract(t107(7,11,M107)),
        retract(t108(8,11,M108)),
        retract(t109(9,11,M109)),
        retract(t110(10,11,M110)),
        retract(t111(1,12,M111)),
        retract(t112(2,12,M112)),
        retract(t113(3,12,M113)),
        retract(t114(4,12,M114)),
        retract(t115(5,12,M115)),
        retract(t116(6,12,M116)),
        retract(t117(7,12,M117)),
        retract(t118(8,12,M118)),
        retract(t119(9,12,M119)),
        retract(t120(10,12,M120)),
        retract(t121(1,13,M121)),
        retract(t122(2,13,M122)),
        retract(t123(3,13,M123)),
        retract(t124(4,13,M124)),
        retract(t125(5,13,M125)),
        retract(t126(6,13,M126)),
        retract(t127(7,13,M127)),
        retract(t128(8,13,M128)),
        retract(t129(9,13,M129)),
        retract(t130(10,13,M130)),
        retract(t131(1,14,M131)),
        retract(t132(2,14,M132)),
        retract(t133(3,14,M133)),
        retract(t134(4,14,M134)),
        retract(t135(5,14,M135)),
        retract(t136(6,14,M136)),
        retract(t137(7,14,M137)),
        retract(t138(8,14,M138)),
        retract(t139(9,14,M139)),
        retract(t140(10,14,M140)),
        retract(t141(1,15,M141)),
        retract(t142(2,15,M142)),
        retract(t143(3,15,M143)),
        retract(t144(4,15,M144)),
        retract(t145(5,15,M145)),
        retract(t146(6,15,M146)),
        retract(t147(7,15,M147)),
        retract(t148(8,15,M148)),
        retract(t149(9,15,M149)),
        retract(t150(10,15,M150)),
        retract(t151(1,16,M151)),
        retract(t152(2,16,M152)),
        retract(t153(3,16,M153)),
        retract(t154(4,16,M154)),
        retract(t155(5,16,M155)),
        retract(t156(6,16,M156)),
        retract(t157(7,16,M157)),
        retract(t158(8,16,M158)),
        retract(t159(9,16,M159)),
        retract(t160(10,16,M160)),
        retract(t161(1,17,M161)),
        retract(t162(2,17,M162)),
        retract(t163(3,17,M163)),
        retract(t164(4,17,M164)),
        retract(t165(5,17,M165)),
        retract(t166(6,17,M166)),
        retract(t167(7,17,M167)),
        retract(t168(8,17,M168)),
        retract(t169(9,17,M169)),
        retract(t170(10,17,M170)),
        retract(t171(1,18,M171)),
        retract(t172(2,18,M172)),
        retract(t173(3,18,M173)),
        retract(t174(4,18,M174)),
        retract(t175(5,18,M175)),
        retract(t176(6,18,M176)),
        retract(t177(7,18,M177)),
        retract(t178(8,18,M178)),
        retract(t179(9,18,M179)),
        retract(t180(10,18,M180)),
        retract(t181(1,19,M181)),
        retract(t182(2,19,M182)),
        retract(t183(3,19,M183)),
        retract(t184(4,19,M184)),
        retract(t185(5,19,M185)),
        retract(t186(6,19,M186)),
        retract(t187(7,19,M187)),
        retract(t188(8,19,M188)),
        retract(t189(9,19,M189)),
        retract(t190(10,19,M190)),
        retract(t191(1,20,M191)),
        retract(t192(2,20,M192)),
        retract(t193(3,20,M193)),
        retract(t194(4,20,M194)),
        retract(t195(5,20,M195)),
        retract(t196(6,20,M196)),
        retract(t197(7,20,M197)),
        retract(t198(8,20,M198)),
        retract(t199(9,20,M199)),
        retract(t200(10,20,M200)).

/* baca file eksternal */
load(Fname) :-
        delEverything,
        setup_call_cleanup(
         open(Fname,read,In),
          (
           repeat,
           read_term(In, X, []),
           readfactsFromfile(X),asserta(X), !
          ),
         close(In)
        ).

readfactsFromfile(end_of_file):- !.
readfactsFromfile(X):-
        asserta(X),!,
        fail.
