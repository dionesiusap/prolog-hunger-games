:-dynamic(t1/3).
:-dynamic(t2/3).
:-dynamic(t3/3).
:-dynamic(t4/3).
:-dynamic(t5/3).
:-dynamic(t6/3).
:-dynamic(t7/3).
:-dynamic(t8/3).
:-dynamic(t9/3).
:-dynamic(t10/3).
:-dynamic(t11/3).
:-dynamic(t12/3).
:-dynamic(t13/3).
:-dynamic(t14/3).
:-dynamic(t15/3).
:-dynamic(t16/3).
:-dynamic(t17/3).
:-dynamic(t18/3).
:-dynamic(t19/3).
:-dynamic(t20/3).
:-dynamic(t21/3).
:-dynamic(t22/3).
:-dynamic(t23/3).
:-dynamic(t24/3).
:-dynamic(t25/3).
:-dynamic(t26/3).
:-dynamic(t27/3).
:-dynamic(t28/3).
:-dynamic(t29/3).
:-dynamic(t30/3).
:-dynamic(t31/3).
:-dynamic(t32/3).
:-dynamic(t33/3).
:-dynamic(t34/3).
:-dynamic(t35/3).
:-dynamic(t36/3).
:-dynamic(t37/3).
:-dynamic(t38/3).
:-dynamic(t39/3).
:-dynamic(t40/3).
:-dynamic(t41/3).
:-dynamic(t42/3).
:-dynamic(t43/3).
:-dynamic(t44/3).
:-dynamic(t45/3).
:-dynamic(t46/3).
:-dynamic(t47/3).
:-dynamic(t48/3).
:-dynamic(t49/3).
:-dynamic(t50/3).
:-dynamic(t51/3).
:-dynamic(t52/3).
:-dynamic(t53/3).
:-dynamic(t54/3).
:-dynamic(t55/3).
:-dynamic(t56/3).
:-dynamic(t57/3).
:-dynamic(t58/3).
:-dynamic(t59/3).
:-dynamic(t60/3).
:-dynamic(t61/3).
:-dynamic(t62/3).
:-dynamic(t63/3).
:-dynamic(t64/3).
:-dynamic(t65/3).
:-dynamic(t66/3).
:-dynamic(t67/3).
:-dynamic(t68/3).
:-dynamic(t69/3).
:-dynamic(t70/3).
:-dynamic(t71/3).
:-dynamic(t72/3).
:-dynamic(t73/3).
:-dynamic(t74/3).
:-dynamic(t75/3).
:-dynamic(t76/3).
:-dynamic(t77/3).
:-dynamic(t78/3).
:-dynamic(t79/3).
:-dynamic(t80/3).
:-dynamic(t81/3).
:-dynamic(t82/3).
:-dynamic(t83/3).
:-dynamic(t84/3).
:-dynamic(t85/3).
:-dynamic(t86/3).
:-dynamic(t87/3).
:-dynamic(t88/3).
:-dynamic(t89/3).
:-dynamic(t90/3).
:-dynamic(t91/3).
:-dynamic(t92/3).
:-dynamic(t93/3).
:-dynamic(t94/3).
:-dynamic(t95/3).
:-dynamic(t96/3).
:-dynamic(t97/3).
:-dynamic(t98/3).
:-dynamic(t99/3).
:-dynamic(t101/3).
:-dynamic(t102/3).
:-dynamic(t103/3).
:-dynamic(t104/3).
:-dynamic(t105/3).
:-dynamic(t106/3).
:-dynamic(t107/3).
:-dynamic(t108/3).
:-dynamic(t109/3).
:-dynamic(t110/3).
:-dynamic(t111/3).
:-dynamic(t112/3).
:-dynamic(t113/3).
:-dynamic(t114/3).
:-dynamic(t115/3).
:-dynamic(t116/3).
:-dynamic(t117/3).
:-dynamic(t118/3).
:-dynamic(t119/3).
:-dynamic(t120/3).
:-dynamic(t121/3).
:-dynamic(t122/3).
:-dynamic(t123/3).
:-dynamic(t124/3).
:-dynamic(t125/3).
:-dynamic(t126/3).
:-dynamic(t127/3).
:-dynamic(t128/3).
:-dynamic(t129/3).
:-dynamic(t130/3).
:-dynamic(t131/3).
:-dynamic(t132/3).
:-dynamic(t133/3).
:-dynamic(t134/3).
:-dynamic(t135/3).
:-dynamic(t136/3).
:-dynamic(t137/3).
:-dynamic(t138/3).
:-dynamic(t139/3).
:-dynamic(t140/3).
:-dynamic(t141/3).
:-dynamic(t142/3).
:-dynamic(t143/3).
:-dynamic(t144/3).
:-dynamic(t145/3).
:-dynamic(t146/3).
:-dynamic(t147/3).
:-dynamic(t148/3).
:-dynamic(t149/3).
:-dynamic(t150/3).
:-dynamic(t151/3).
:-dynamic(t152/3).
:-dynamic(t153/3).
:-dynamic(t154/3).
:-dynamic(t155/3).
:-dynamic(t156/3).
:-dynamic(t157/3).
:-dynamic(t158/3).
:-dynamic(t159/3).
:-dynamic(t160/3).
:-dynamic(t161/3).
:-dynamic(t162/3).
:-dynamic(t163/3).
:-dynamic(t164/3).
:-dynamic(t165/3).
:-dynamic(t166/3).
:-dynamic(t167/3).
:-dynamic(t168/3).
:-dynamic(t169/3).
:-dynamic(t170/3).
:-dynamic(t171/3).
:-dynamic(t172/3).
:-dynamic(t173/3).
:-dynamic(t174/3).
:-dynamic(t175/3).
:-dynamic(t176/3).
:-dynamic(t177/3).
:-dynamic(t178/3).
:-dynamic(t179/3).
:-dynamic(t180/3).
:-dynamic(t181/3).
:-dynamic(t182/3).
:-dynamic(t183/3).
:-dynamic(t184/3).
:-dynamic(t185/3).
:-dynamic(t186/3).
:-dynamic(t187/3).
:-dynamic(t188/3).
:-dynamic(t189/3).
:-dynamic(t190/3).
:-dynamic(t191/3).
:-dynamic(t192/3).
:-dynamic(t193/3).
:-dynamic(t194/3).
:-dynamic(t195/3).
:-dynamic(t196/3).
:-dynamic(t197/3).
:-dynamic(t198/3).
:-dynamic(t199/3).
:-dynamic(t200/3).

/*Y,X,type*/
initTerrain:-
    random(1,5,M1),asserta(t1(1,1,M1)),
    random(1,5,M2),asserta(t2(2,1,M2)),
    random(1,5,M3),asserta(t3(3,1,M3)),
    random(1,5,M4),asserta(t4(4,1,M4)),
    random(1,5,M5),asserta(t5(5,1,M5)),
    random(1,5,M6),asserta(t6(6,1,M6)),
    random(1,5,M7),asserta(t7(7,1,M7)),
    random(1,5,M8),asserta(t8(8,1,M8)),
    random(1,5,M9),asserta(t9(9,1,M9)),
    random(1,5,M10),asserta(t10(10,1,M10)),
    random(1,5,M11),asserta(t11(1,2,M11)),
    random(1,5,M12),asserta(t12(2,2,M12)),
    random(1,5,M13),asserta(t13(3,2,M13)),
    random(1,5,M14),asserta(t14(4,2,M14)),
    random(1,5,M15),asserta(t15(5,2,M15)),
    random(1,5,M16),asserta(t16(6,2,M16)),
    random(1,5,M17),asserta(t17(7,2,M17)),
    random(1,5,M18),asserta(t18(8,2,M18)),
    random(1,5,M19),asserta(t19(9,2,M19)),
    random(1,5,M20),asserta(t20(10,2,M20)),
    random(1,5,M21),asserta(t21(1,3,M21)),
    random(1,5,M22),asserta(t22(2,3,M22)),
    random(1,5,M23),asserta(t23(3,3,M23)),
    random(1,5,M24),asserta(t24(4,3,M24)),
    random(1,5,M25),asserta(t25(5,3,M25)),
    random(1,5,M26),asserta(t26(6,3,M26)),
    random(1,5,M27),asserta(t27(7,3,M27)),
    random(1,5,M28),asserta(t28(8,3,M28)),
    random(1,5,M29),asserta(t29(9,3,M29)),
    random(1,5,M30),asserta(t30(10,3,M30)),
    random(1,5,M31),asserta(t31(1,4,M31)),
    random(1,5,M32),asserta(t32(2,4,M32)),
    random(1,5,M33),asserta(t33(3,4,M33)),
    random(1,5,M34),asserta(t34(4,4,M34)),
    random(1,5,M35),asserta(t35(5,4,M35)),
    random(1,5,M36),asserta(t36(6,4,M36)),
    random(1,5,M37),asserta(t37(7,4,M37)),
    random(1,5,M38),asserta(t38(8,4,M38)),
    random(1,5,M39),asserta(t39(9,4,M39)),
    random(1,5,M40),asserta(t40(10,4,M40)),
    random(1,5,M41),asserta(t41(1,5,M41)),
    random(1,5,M42),asserta(t42(2,5,M42)),
    random(1,5,M43),asserta(t43(3,5,M43)),
    random(1,5,M44),asserta(t44(4,5,M44)),
    random(1,5,M45),asserta(t45(5,5,M45)),
    random(1,5,M46),asserta(t46(6,5,M46)),
    random(1,5,M47),asserta(t47(7,5,M47)),
    random(1,5,M48),asserta(t48(8,5,M48)),
    random(1,5,M49),asserta(t49(9,5,M49)),
    random(1,5,M50),asserta(t50(10,5,M50)),
    random(1,5,M51),asserta(t51(1,6,M51)),
    random(1,5,M52),asserta(t52(2,6,M52)),
    random(1,5,M53),asserta(t53(3,6,M53)),
    random(1,5,M54),asserta(t54(4,6,M54)),
    random(1,5,M55),asserta(t55(5,6,M55)),
    random(1,5,M56),asserta(t56(6,6,M56)),
    random(1,5,M57),asserta(t57(7,6,M57)),
    random(1,5,M58),asserta(t58(8,6,M58)),
    random(1,5,M59),asserta(t59(9,6,M59)),
    random(1,5,M60),asserta(t60(10,6,M60)),
    random(1,5,M61),asserta(t61(1,7,M61)),
    random(1,5,M62),asserta(t62(2,7,M62)),
    random(1,5,M63),asserta(t63(3,7,M63)),
    random(1,5,M64),asserta(t64(4,7,M64)),
    random(1,5,M65),asserta(t65(5,7,M65)),
    random(1,5,M66),asserta(t66(6,7,M66)),
    random(1,5,M67),asserta(t67(7,7,M67)),
    random(1,5,M68),asserta(t68(8,7,M68)),
    random(1,5,M69),asserta(t69(9,7,M69)),
    random(1,5,M70),asserta(t70(10,7,M70)),
    random(1,5,M71),asserta(t71(1,8,M71)),
    random(1,5,M72),asserta(t72(2,8,M72)),
    random(1,5,M73),asserta(t73(3,8,M73)),
    random(1,5,M74),asserta(t74(4,8,M74)),
    random(1,5,M75),asserta(t75(5,8,M75)),
    random(1,5,M76),asserta(t76(6,8,M76)),
    random(1,5,M77),asserta(t77(7,8,M77)),
    random(1,5,M78),asserta(t78(8,8,M78)),
    random(1,5,M79),asserta(t79(9,8,M79)),
    random(1,5,M80),asserta(t80(10,8,M80)),
    random(1,5,M81),asserta(t81(1,9,M81)),
    random(1,5,M82),asserta(t82(2,9,M82)),
    random(1,5,M83),asserta(t83(3,9,M83)),
    random(1,5,M84),asserta(t84(4,9,M84)),
    random(1,5,M85),asserta(t85(5,9,M85)),
    random(1,5,M86),asserta(t86(6,9,M86)),
    random(1,5,M87),asserta(t87(7,9,M87)),
    random(1,5,M88),asserta(t88(8,9,M88)),
    random(1,5,M89),asserta(t89(9,9,M89)),
    random(1,5,M90),asserta(t90(10,9,M90)),
    random(1,5,M991),asserta(t91(1,10,M991)),
    random(1,5,M992),asserta(t92(2,10,M992)),
    random(1,5,M993),asserta(t93(3,10,M993)),
    random(1,5,M994),asserta(t94(4,10,M994)),
    random(1,5,M995),asserta(t95(5,10,M995)),
    random(1,5,M996),asserta(t96(6,10,M996)),
    random(1,5,M997),asserta(t97(7,10,M997)),
    random(1,5,M998),asserta(t98(8,10,M998)),
    random(1,5,M999),asserta(t99(9,10,M999)),
    random(1,5,M9100),asserta(t100(10,10,M9100)),
    random(1,5,M101),asserta(t101(1,11,M101)),
    random(1,5,M102),asserta(t102(2,11,M102)),
    random(1,5,M103),asserta(t103(3,11,M103)),
    random(1,5,M104),asserta(t104(4,11,M104)),
    random(1,5,M105),asserta(t105(5,11,M105)),
    random(1,5,M106),asserta(t106(6,11,M106)),
    random(1,5,M107),asserta(t107(7,11,M107)),
    random(1,5,M108),asserta(t108(8,11,M108)),
    random(1,5,M109),asserta(t109(9,11,M109)),
    random(1,5,M110),asserta(t110(10,11,M110)),
    random(1,5,M111),asserta(t111(1,12,M111)),
    random(1,5,M112),asserta(t112(2,12,M112)),
    random(1,5,M113),asserta(t113(3,12,M113)),
    random(1,5,M114),asserta(t114(4,12,M114)),
    random(1,5,M115),asserta(t115(5,12,M115)),
    random(1,5,M116),asserta(t116(6,12,M116)),
    random(1,5,M117),asserta(t117(7,12,M117)),
    random(1,5,M118),asserta(t118(8,12,M118)),
    random(1,5,M119),asserta(t119(9,12,M119)),
    random(1,5,M120),asserta(t120(10,12,M120)),
    random(1,5,M121),asserta(t121(1,13,M121)),
    random(1,5,M122),asserta(t122(2,13,M122)),
    random(1,5,M123),asserta(t123(3,13,M123)),
    random(1,5,M124),asserta(t124(4,13,M124)),
    random(1,5,M125),asserta(t125(5,13,M125)),
    random(1,5,M126),asserta(t126(6,13,M126)),
    random(1,5,M127),asserta(t127(7,13,M127)),
    random(1,5,M128),asserta(t128(8,13,M128)),
    random(1,5,M129),asserta(t129(9,13,M129)),
    random(1,5,M130),asserta(t130(10,13,M130)),
    random(1,5,M131),asserta(t131(1,14,M131)),
    random(1,5,M132),asserta(t132(2,14,M132)),
    random(1,5,M133),asserta(t133(3,14,M133)),
    random(1,5,M134),asserta(t134(4,14,M134)),
    random(1,5,M135),asserta(t135(5,14,M135)),
    random(1,5,M136),asserta(t136(6,14,M136)),
    random(1,5,M137),asserta(t137(7,14,M137)),
    random(1,5,M138),asserta(t138(8,14,M138)),
    random(1,5,M139),asserta(t139(9,14,M139)),
    random(1,5,M140),asserta(t140(10,14,M140)),
    random(1,5,M141),asserta(t141(1,15,M141)),
    random(1,5,M142),asserta(t142(2,15,M142)),
    random(1,5,M143),asserta(t143(3,15,M143)),
    random(1,5,M144),asserta(t144(4,15,M144)),
    random(1,5,M145),asserta(t145(5,15,M145)),
    random(1,5,M146),asserta(t146(6,15,M146)),
    random(1,5,M147),asserta(t147(7,15,M147)),
    random(1,5,M148),asserta(t148(8,15,M148)),
    random(1,5,M149),asserta(t149(9,15,M149)),
    random(1,5,M150),asserta(t150(10,15,M150)),
    random(1,5,M151),asserta(t151(1,16,M151)),
    random(1,5,M152),asserta(t152(2,16,M152)),
    random(1,5,M153),asserta(t153(3,16,M153)),
    random(1,5,M154),asserta(t154(4,16,M154)),
    random(1,5,M155),asserta(t155(5,16,M155)),
    random(1,5,M156),asserta(t156(6,16,M156)),
    random(1,5,M157),asserta(t157(7,16,M157)),
    random(1,5,M158),asserta(t158(8,16,M158)),
    random(1,5,M159),asserta(t159(9,16,M159)),
    random(1,5,M160),asserta(t160(10,16,M160)),
    random(1,5,M161),asserta(t161(1,17,M161)),
    random(1,5,M162),asserta(t162(2,17,M162)),
    random(1,5,M163),asserta(t163(3,17,M163)),
    random(1,5,M164),asserta(t164(4,17,M164)),
    random(1,5,M165),asserta(t165(5,17,M165)),
    random(1,5,M166),asserta(t166(6,17,M166)),
    random(1,5,M167),asserta(t167(7,17,M167)),
    random(1,5,M168),asserta(t168(8,17,M168)),
    random(1,5,M169),asserta(t169(9,17,M169)),
    random(1,5,M170),asserta(t170(10,17,M170)),
    random(1,5,M171),asserta(t171(1,18,M171)),
    random(1,5,M172),asserta(t172(2,18,M172)),
    random(1,5,M173),asserta(t173(3,18,M173)),
    random(1,5,M174),asserta(t174(4,18,M174)),
    random(1,5,M175),asserta(t175(5,18,M175)),
    random(1,5,M176),asserta(t176(6,18,M176)),
    random(1,5,M177),asserta(t177(7,18,M177)),
    random(1,5,M178),asserta(t178(8,18,M178)),
    random(1,5,M179),asserta(t179(9,18,M179)),
    random(1,5,M180),asserta(t180(10,18,M180)),
    random(1,5,M181),asserta(t181(1,19,M181)),
    random(1,5,M182),asserta(t182(2,19,M182)),
    random(1,5,M183),asserta(t183(3,19,M183)),
    random(1,5,M184),asserta(t184(4,19,M184)),
    random(1,5,M185),asserta(t185(5,19,M185)),
    random(1,5,M186),asserta(t186(6,19,M186)),
    random(1,5,M187),asserta(t187(7,19,M187)),
    random(1,5,M188),asserta(t188(8,19,M188)),
    random(1,5,M189),asserta(t189(9,19,M189)),
    random(1,5,M190),asserta(t190(10,19,M190)),
    random(1,5,M191),asserta(t191(1,20,M191)),
    random(1,5,M192),asserta(t192(2,20,M192)),
    random(1,5,M193),asserta(t193(3,20,M193)),
    random(1,5,M194),asserta(t194(4,20,M194)),
    random(1,5,M195),asserta(t195(5,20,M195)),
    random(1,5,M196),asserta(t196(6,20,M196)),
    random(1,5,M197),asserta(t197(7,20,M197)),
    random(1,5,M198),asserta(t198(8,20,M198)),
    random(1,5,M199),asserta(t199(9,20,M199)),
    random(1,5,M200),asserta(t200(10,20,M200)).

lookTerrain(X,Y):-
    X1 is X-1,Y1 is Y-1,X2 is X+1,Y2 is Y+1,
    write('You are in '),look_terrain(X,Y),write('\n'),
    write('To the north is '),look_terrain(X,Y1),write('\n'),
    write('To the west is '),look_terrain(X1,Y),write('\n'),
    write('To the east is '),look_terrain(X2,Y),write('\n'),
    write('To the south is '),look_terrain(X,Y2),write('\n').

look_terrain(I,J):-tembok(I,J),write('wall'),!.
look_terrain(I,J):-t1(J,I,M),terraintype(M),!.
look_terrain(I,J):-t2(J,I,M),terraintype(M),!.
look_terrain(I,J):-t3(J,I,M),terraintype(M),!.
look_terrain(I,J):-t4(J,I,M),terraintype(M),!.
look_terrain(I,J):-t5(J,I,M),terraintype(M),!.
look_terrain(I,J):-t6(J,I,M),terraintype(M),!.
look_terrain(I,J):-t7(J,I,M),terraintype(M),!.
look_terrain(I,J):-t8(J,I,M),terraintype(M),!.
look_terrain(I,J):-t9(J,I,M),terraintype(M),!.
look_terrain(I,J):-t10(J,I,M),terraintype(M),!.
look_terrain(I,J):-t11(J,I,M),terraintype(M),!.
look_terrain(I,J):-t12(J,I,M),terraintype(M),!.
look_terrain(I,J):-t13(J,I,M),terraintype(M),!.
look_terrain(I,J):-t14(J,I,M),terraintype(M),!.
look_terrain(I,J):-t15(J,I,M),terraintype(M),!.
look_terrain(I,J):-t16(J,I,M),terraintype(M),!.
look_terrain(I,J):-t17(J,I,M),terraintype(M),!.
look_terrain(I,J):-t18(J,I,M),terraintype(M),!.
look_terrain(I,J):-t19(J,I,M),terraintype(M),!.
look_terrain(I,J):-t20(J,I,M),terraintype(M),!.
look_terrain(I,J):-t21(J,I,M),terraintype(M),!.
look_terrain(I,J):-t22(J,I,M),terraintype(M),!.
look_terrain(I,J):-t23(J,I,M),terraintype(M),!.
look_terrain(I,J):-t24(J,I,M),terraintype(M),!.
look_terrain(I,J):-t25(J,I,M),terraintype(M),!.
look_terrain(I,J):-t26(J,I,M),terraintype(M),!.
look_terrain(I,J):-t27(J,I,M),terraintype(M),!.
look_terrain(I,J):-t28(J,I,M),terraintype(M),!.
look_terrain(I,J):-t29(J,I,M),terraintype(M),!.
look_terrain(I,J):-t30(J,I,M),terraintype(M),!.
look_terrain(I,J):-t31(J,I,M),terraintype(M),!.
look_terrain(I,J):-t32(J,I,M),terraintype(M),!.
look_terrain(I,J):-t33(J,I,M),terraintype(M),!.
look_terrain(I,J):-t34(J,I,M),terraintype(M),!.
look_terrain(I,J):-t35(J,I,M),terraintype(M),!.
look_terrain(I,J):-t36(J,I,M),terraintype(M),!.
look_terrain(I,J):-t37(J,I,M),terraintype(M),!.
look_terrain(I,J):-t38(J,I,M),terraintype(M),!.
look_terrain(I,J):-t39(J,I,M),terraintype(M),!.
look_terrain(I,J):-t40(J,I,M),terraintype(M),!.
look_terrain(I,J):-t41(J,I,M),terraintype(M),!.
look_terrain(I,J):-t42(J,I,M),terraintype(M),!.
look_terrain(I,J):-t43(J,I,M),terraintype(M),!.
look_terrain(I,J):-t44(J,I,M),terraintype(M),!.
look_terrain(I,J):-t45(J,I,M),terraintype(M),!.
look_terrain(I,J):-t46(J,I,M),terraintype(M),!.
look_terrain(I,J):-t47(J,I,M),terraintype(M),!.
look_terrain(I,J):-t48(J,I,M),terraintype(M),!.
look_terrain(I,J):-t49(J,I,M),terraintype(M),!.
look_terrain(I,J):-t50(J,I,M),terraintype(M),!.
look_terrain(I,J):-t51(J,I,M),terraintype(M),!.
look_terrain(I,J):-t52(J,I,M),terraintype(M),!.
look_terrain(I,J):-t53(J,I,M),terraintype(M),!.
look_terrain(I,J):-t54(J,I,M),terraintype(M),!.
look_terrain(I,J):-t55(J,I,M),terraintype(M),!.
look_terrain(I,J):-t56(J,I,M),terraintype(M),!.
look_terrain(I,J):-t57(J,I,M),terraintype(M),!.
look_terrain(I,J):-t58(J,I,M),terraintype(M),!.
look_terrain(I,J):-t59(J,I,M),terraintype(M),!.
look_terrain(I,J):-t60(J,I,M),terraintype(M),!.
look_terrain(I,J):-t61(J,I,M),terraintype(M),!.
look_terrain(I,J):-t62(J,I,M),terraintype(M),!.
look_terrain(I,J):-t63(J,I,M),terraintype(M),!.
look_terrain(I,J):-t64(J,I,M),terraintype(M),!.
look_terrain(I,J):-t65(J,I,M),terraintype(M),!.
look_terrain(I,J):-t66(J,I,M),terraintype(M),!.
look_terrain(I,J):-t67(J,I,M),terraintype(M),!.
look_terrain(I,J):-t68(J,I,M),terraintype(M),!.
look_terrain(I,J):-t69(J,I,M),terraintype(M),!.
look_terrain(I,J):-t70(J,I,M),terraintype(M),!.
look_terrain(I,J):-t71(J,I,M),terraintype(M),!.
look_terrain(I,J):-t72(J,I,M),terraintype(M),!.
look_terrain(I,J):-t73(J,I,M),terraintype(M),!.
look_terrain(I,J):-t74(J,I,M),terraintype(M),!.
look_terrain(I,J):-t75(J,I,M),terraintype(M),!.
look_terrain(I,J):-t76(J,I,M),terraintype(M),!.
look_terrain(I,J):-t77(J,I,M),terraintype(M),!.
look_terrain(I,J):-t78(J,I,M),terraintype(M),!.
look_terrain(I,J):-t79(J,I,M),terraintype(M),!.
look_terrain(I,J):-t80(J,I,M),terraintype(M),!.
look_terrain(I,J):-t81(J,I,M),terraintype(M),!.
look_terrain(I,J):-t82(J,I,M),terraintype(M),!.
look_terrain(I,J):-t83(J,I,M),terraintype(M),!.
look_terrain(I,J):-t84(J,I,M),terraintype(M),!.
look_terrain(I,J):-t85(J,I,M),terraintype(M),!.
look_terrain(I,J):-t86(J,I,M),terraintype(M),!.
look_terrain(I,J):-t87(J,I,M),terraintype(M),!.
look_terrain(I,J):-t88(J,I,M),terraintype(M),!.
look_terrain(I,J):-t89(J,I,M),terraintype(M),!.
look_terrain(I,J):-t90(J,I,M),terraintype(M),!.
look_terrain(I,J):-t91(J,I,M),terraintype(M),!.
look_terrain(I,J):-t92(J,I,M),terraintype(M),!.
look_terrain(I,J):-t93(J,I,M),terraintype(M),!.
look_terrain(I,J):-t94(J,I,M),terraintype(M),!.
look_terrain(I,J):-t95(J,I,M),terraintype(M),!.
look_terrain(I,J):-t96(J,I,M),terraintype(M),!.
look_terrain(I,J):-t97(J,I,M),terraintype(M),!.
look_terrain(I,J):-t98(J,I,M),terraintype(M),!.
look_terrain(I,J):-t99(J,I,M),terraintype(M),!.
look_terrain(I,J):-t100(J,I,M),terraintype(M),!.
look_terrain(I,J):-t101(J,I,M),terraintype(M),!.
look_terrain(I,J):-t102(J,I,M),terraintype(M),!.
look_terrain(I,J):-t103(J,I,M),terraintype(M),!.
look_terrain(I,J):-t104(J,I,M),terraintype(M),!.
look_terrain(I,J):-t105(J,I,M),terraintype(M),!.
look_terrain(I,J):-t106(J,I,M),terraintype(M),!.
look_terrain(I,J):-t107(J,I,M),terraintype(M),!.
look_terrain(I,J):-t108(J,I,M),terraintype(M),!.
look_terrain(I,J):-t109(J,I,M),terraintype(M),!.
look_terrain(I,J):-t110(J,I,M),terraintype(M),!.
look_terrain(I,J):-t111(J,I,M),terraintype(M),!.
look_terrain(I,J):-t112(J,I,M),terraintype(M),!.
look_terrain(I,J):-t113(J,I,M),terraintype(M),!.
look_terrain(I,J):-t114(J,I,M),terraintype(M),!.
look_terrain(I,J):-t115(J,I,M),terraintype(M),!.
look_terrain(I,J):-t116(J,I,M),terraintype(M),!.
look_terrain(I,J):-t117(J,I,M),terraintype(M),!.
look_terrain(I,J):-t118(J,I,M),terraintype(M),!.
look_terrain(I,J):-t119(J,I,M),terraintype(M),!.
look_terrain(I,J):-t120(J,I,M),terraintype(M),!.
look_terrain(I,J):-t121(J,I,M),terraintype(M),!.
look_terrain(I,J):-t122(J,I,M),terraintype(M),!.
look_terrain(I,J):-t123(J,I,M),terraintype(M),!.
look_terrain(I,J):-t124(J,I,M),terraintype(M),!.
look_terrain(I,J):-t125(J,I,M),terraintype(M),!.
look_terrain(I,J):-t126(J,I,M),terraintype(M),!.
look_terrain(I,J):-t127(J,I,M),terraintype(M),!.
look_terrain(I,J):-t128(J,I,M),terraintype(M),!.
look_terrain(I,J):-t129(J,I,M),terraintype(M),!.
look_terrain(I,J):-t130(J,I,M),terraintype(M),!.
look_terrain(I,J):-t131(J,I,M),terraintype(M),!.
look_terrain(I,J):-t132(J,I,M),terraintype(M),!.
look_terrain(I,J):-t133(J,I,M),terraintype(M),!.
look_terrain(I,J):-t134(J,I,M),terraintype(M),!.
look_terrain(I,J):-t135(J,I,M),terraintype(M),!.
look_terrain(I,J):-t136(J,I,M),terraintype(M),!.
look_terrain(I,J):-t137(J,I,M),terraintype(M),!.
look_terrain(I,J):-t138(J,I,M),terraintype(M),!.
look_terrain(I,J):-t139(J,I,M),terraintype(M),!.
look_terrain(I,J):-t140(J,I,M),terraintype(M),!.
look_terrain(I,J):-t141(J,I,M),terraintype(M),!.
look_terrain(I,J):-t142(J,I,M),terraintype(M),!.
look_terrain(I,J):-t143(J,I,M),terraintype(M),!.
look_terrain(I,J):-t144(J,I,M),terraintype(M),!.
look_terrain(I,J):-t145(J,I,M),terraintype(M),!.
look_terrain(I,J):-t146(J,I,M),terraintype(M),!.
look_terrain(I,J):-t147(J,I,M),terraintype(M),!.
look_terrain(I,J):-t148(J,I,M),terraintype(M),!.
look_terrain(I,J):-t149(J,I,M),terraintype(M),!.
look_terrain(I,J):-t150(J,I,M),terraintype(M),!.
look_terrain(I,J):-t151(J,I,M),terraintype(M),!.
look_terrain(I,J):-t152(J,I,M),terraintype(M),!.
look_terrain(I,J):-t153(J,I,M),terraintype(M),!.
look_terrain(I,J):-t154(J,I,M),terraintype(M),!.
look_terrain(I,J):-t155(J,I,M),terraintype(M),!.
look_terrain(I,J):-t156(J,I,M),terraintype(M),!.
look_terrain(I,J):-t157(J,I,M),terraintype(M),!.
look_terrain(I,J):-t158(J,I,M),terraintype(M),!.
look_terrain(I,J):-t159(J,I,M),terraintype(M),!.
look_terrain(I,J):-t160(J,I,M),terraintype(M),!.
look_terrain(I,J):-t161(J,I,M),terraintype(M),!.
look_terrain(I,J):-t162(J,I,M),terraintype(M),!.
look_terrain(I,J):-t163(J,I,M),terraintype(M),!.
look_terrain(I,J):-t164(J,I,M),terraintype(M),!.
look_terrain(I,J):-t165(J,I,M),terraintype(M),!.
look_terrain(I,J):-t166(J,I,M),terraintype(M),!.
look_terrain(I,J):-t167(J,I,M),terraintype(M),!.
look_terrain(I,J):-t168(J,I,M),terraintype(M),!.
look_terrain(I,J):-t169(J,I,M),terraintype(M),!.
look_terrain(I,J):-t170(J,I,M),terraintype(M),!.
look_terrain(I,J):-t171(J,I,M),terraintype(M),!.
look_terrain(I,J):-t172(J,I,M),terraintype(M),!.
look_terrain(I,J):-t173(J,I,M),terraintype(M),!.
look_terrain(I,J):-t174(J,I,M),terraintype(M),!.
look_terrain(I,J):-t175(J,I,M),terraintype(M),!.
look_terrain(I,J):-t176(J,I,M),terraintype(M),!.
look_terrain(I,J):-t177(J,I,M),terraintype(M),!.
look_terrain(I,J):-t178(J,I,M),terraintype(M),!.
look_terrain(I,J):-t179(J,I,M),terraintype(M),!.
look_terrain(I,J):-t180(J,I,M),terraintype(M),!.
look_terrain(I,J):-t181(J,I,M),terraintype(M),!.
look_terrain(I,J):-t182(J,I,M),terraintype(M),!.
look_terrain(I,J):-t183(J,I,M),terraintype(M),!.
look_terrain(I,J):-t184(J,I,M),terraintype(M),!.
look_terrain(I,J):-t185(J,I,M),terraintype(M),!.
look_terrain(I,J):-t186(J,I,M),terraintype(M),!.
look_terrain(I,J):-t187(J,I,M),terraintype(M),!.
look_terrain(I,J):-t188(J,I,M),terraintype(M),!.
look_terrain(I,J):-t189(J,I,M),terraintype(M),!.
look_terrain(I,J):-t190(J,I,M),terraintype(M),!.
look_terrain(I,J):-t191(J,I,M),terraintype(M),!.
look_terrain(I,J):-t192(J,I,M),terraintype(M),!.
look_terrain(I,J):-t193(J,I,M),terraintype(M),!.
look_terrain(I,J):-t194(J,I,M),terraintype(M),!.
look_terrain(I,J):-t195(J,I,M),terraintype(M),!.
look_terrain(I,J):-t196(J,I,M),terraintype(M),!.
look_terrain(I,J):-t197(J,I,M),terraintype(M),!.
look_terrain(I,J):-t198(J,I,M),terraintype(M),!.
look_terrain(I,J):-t199(J,I,M),terraintype(M),!.
look_terrain(I,J):-t200(J,I,M),terraintype(M),!.

   
terraintype(1):-write('Forest').
terraintype(2):-write('Cave').
terraintype(3):-write('Lake').
terraintype(4):-write('Open Field').