
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	53813103          	ld	sp,1336(sp) # 8000b538 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	47c060ef          	jal	ra,80006498 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handleSupervisorTrapTimer
.extern handleSupervisorTrapConsole
.global supervisorTrap
.align 4
supervisorTrap:
    j trapEcall
    80001000:	0280006f          	j	80001028 <trapEcall>
    j trapTimer
    80001004:	12c0006f          	j	80001130 <trapTimer>
    addi sp, sp, 0
    80001008:	00010113          	mv	sp,sp
    addi sp, sp, 0
    8000100c:	00010113          	mv	sp,sp
    addi sp, sp, 0
    80001010:	00010113          	mv	sp,sp
    addi sp, sp, 0
    80001014:	00010113          	mv	sp,sp
    addi sp, sp, 0
    80001018:	00010113          	mv	sp,sp
    addi sp, sp, 0
    8000101c:	00010113          	mv	sp,sp
    addi sp, sp, 0
    80001020:	00010113          	mv	sp,sp
    j trapConsole
    80001024:	21c0006f          	j	80001240 <trapConsole>

0000000080001028 <trapEcall>:
trapEcall:
    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256

    sd x0, 0x00(sp)
    8000102c:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    80001030:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    80001034:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001038:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    8000103c:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    80001040:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    80001044:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001048:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    8000104c:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    80001050:	04913423          	sd	s1,72(sp)

    sd x11, 0x58(sp)
    80001054:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001058:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    8000105c:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    80001060:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001064:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001068:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    8000106c:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    80001070:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001074:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001078:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    8000107c:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    80001080:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    80001084:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    80001088:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    8000108c:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    80001090:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    80001094:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    80001098:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    8000109c:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    800010a0:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    800010a4:	0ff13c23          	sd	t6,248(sp)

    call handleSupervisorTrapEcall
    800010a8:	348010ef          	jal	ra,800023f0 <handleSupervisorTrapEcall>

    ld x0, 0x00(sp)
    800010ac:	00013003          	ld	zero,0(sp)
    ld x1, 0x08(sp)
    800010b0:	00813083          	ld	ra,8(sp)
    ld x2, 0x10(sp)
    800010b4:	01013103          	ld	sp,16(sp)
    ld x3, 0x18(sp)
    800010b8:	01813183          	ld	gp,24(sp)
    ld x4, 0x20(sp)
    800010bc:	02013203          	ld	tp,32(sp)
    ld x5, 0x28(sp)
    800010c0:	02813283          	ld	t0,40(sp)
    ld x6, 0x30(sp)
    800010c4:	03013303          	ld	t1,48(sp)
    ld x7, 0x38(sp)
    800010c8:	03813383          	ld	t2,56(sp)
    ld x8, 0x40(sp)
    800010cc:	04013403          	ld	s0,64(sp)
    ld x9, 0x48(sp)
    800010d0:	04813483          	ld	s1,72(sp)

    ld x11, 0x58(sp)
    800010d4:	05813583          	ld	a1,88(sp)
    ld x12, 0x60(sp)
    800010d8:	06013603          	ld	a2,96(sp)
    ld x13, 0x68(sp)
    800010dc:	06813683          	ld	a3,104(sp)
    ld x14, 0x70(sp)
    800010e0:	07013703          	ld	a4,112(sp)
    ld x15, 0x78(sp)
    800010e4:	07813783          	ld	a5,120(sp)
    ld x16, 0x80(sp)
    800010e8:	08013803          	ld	a6,128(sp)
    ld x17, 0x88(sp)
    800010ec:	08813883          	ld	a7,136(sp)
    ld x18, 0x90(sp)
    800010f0:	09013903          	ld	s2,144(sp)
    ld x19, 0x98(sp)
    800010f4:	09813983          	ld	s3,152(sp)
    ld x20, 0xa0(sp)
    800010f8:	0a013a03          	ld	s4,160(sp)
    ld x21, 0xa8(sp)
    800010fc:	0a813a83          	ld	s5,168(sp)
    ld x22, 0xb0(sp)
    80001100:	0b013b03          	ld	s6,176(sp)
    ld x23, 0xb8(sp)
    80001104:	0b813b83          	ld	s7,184(sp)
    ld x24, 0xc0(sp)
    80001108:	0c013c03          	ld	s8,192(sp)
    ld x25, 0xc8(sp)
    8000110c:	0c813c83          	ld	s9,200(sp)
    ld x26, 0xd0(sp)
    80001110:	0d013d03          	ld	s10,208(sp)
    ld x27, 0xd8(sp)
    80001114:	0d813d83          	ld	s11,216(sp)
    ld x28, 0xe0(sp)
    80001118:	0e013e03          	ld	t3,224(sp)
    ld x29, 0xe8(sp)
    8000111c:	0e813e83          	ld	t4,232(sp)
    ld x30, 0xf0(sp)
    80001120:	0f013f03          	ld	t5,240(sp)
    ld x31, 0xf8(sp)
    80001124:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001128:	10010113          	addi	sp,sp,256

    sret
    8000112c:	10200073          	sret

0000000080001130 <trapTimer>:

trapTimer:
    addi sp, sp, -256
    80001130:	f0010113          	addi	sp,sp,-256

    sd x0, 0x00(sp)
    80001134:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    80001138:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    8000113c:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001140:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    80001144:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    80001148:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    8000114c:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001150:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    80001154:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    80001158:	04913423          	sd	s1,72(sp)
    sd x10, 0x50(sp)
    8000115c:	04a13823          	sd	a0,80(sp)
    sd x11, 0x58(sp)
    80001160:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001164:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    80001168:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    8000116c:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001170:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001174:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    80001178:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    8000117c:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001180:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001184:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    80001188:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    8000118c:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    80001190:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    80001194:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    80001198:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    8000119c:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    800011a0:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    800011a4:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    800011a8:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    800011ac:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    800011b0:	0ff13c23          	sd	t6,248(sp)

    call handleSupervisorTrapTimer
    800011b4:	504010ef          	jal	ra,800026b8 <handleSupervisorTrapTimer>

    ld x0, 0x00(sp)
    800011b8:	00013003          	ld	zero,0(sp)
    ld x1, 0x08(sp)
    800011bc:	00813083          	ld	ra,8(sp)
    ld x2, 0x10(sp)
    800011c0:	01013103          	ld	sp,16(sp)
    ld x3, 0x18(sp)
    800011c4:	01813183          	ld	gp,24(sp)
    ld x4, 0x20(sp)
    800011c8:	02013203          	ld	tp,32(sp)
    ld x5, 0x28(sp)
    800011cc:	02813283          	ld	t0,40(sp)
    ld x6, 0x30(sp)
    800011d0:	03013303          	ld	t1,48(sp)
    ld x7, 0x38(sp)
    800011d4:	03813383          	ld	t2,56(sp)
    ld x8, 0x40(sp)
    800011d8:	04013403          	ld	s0,64(sp)
    ld x9, 0x48(sp)
    800011dc:	04813483          	ld	s1,72(sp)
    ld x10, 0x50(sp)
    800011e0:	05013503          	ld	a0,80(sp)
    ld x11, 0x58(sp)
    800011e4:	05813583          	ld	a1,88(sp)
    ld x12, 0x60(sp)
    800011e8:	06013603          	ld	a2,96(sp)
    ld x13, 0x68(sp)
    800011ec:	06813683          	ld	a3,104(sp)
    ld x14, 0x70(sp)
    800011f0:	07013703          	ld	a4,112(sp)
    ld x15, 0x78(sp)
    800011f4:	07813783          	ld	a5,120(sp)
    ld x16, 0x80(sp)
    800011f8:	08013803          	ld	a6,128(sp)
    ld x17, 0x88(sp)
    800011fc:	08813883          	ld	a7,136(sp)
    ld x18, 0x90(sp)
    80001200:	09013903          	ld	s2,144(sp)
    ld x19, 0x98(sp)
    80001204:	09813983          	ld	s3,152(sp)
    ld x20, 0xa0(sp)
    80001208:	0a013a03          	ld	s4,160(sp)
    ld x21, 0xa8(sp)
    8000120c:	0a813a83          	ld	s5,168(sp)
    ld x22, 0xb0(sp)
    80001210:	0b013b03          	ld	s6,176(sp)
    ld x23, 0xb8(sp)
    80001214:	0b813b83          	ld	s7,184(sp)
    ld x24, 0xc0(sp)
    80001218:	0c013c03          	ld	s8,192(sp)
    ld x25, 0xc8(sp)
    8000121c:	0c813c83          	ld	s9,200(sp)
    ld x26, 0xd0(sp)
    80001220:	0d013d03          	ld	s10,208(sp)
    ld x27, 0xd8(sp)
    80001224:	0d813d83          	ld	s11,216(sp)
    ld x28, 0xe0(sp)
    80001228:	0e013e03          	ld	t3,224(sp)
    ld x29, 0xe8(sp)
    8000122c:	0e813e83          	ld	t4,232(sp)
    ld x30, 0xf0(sp)
    80001230:	0f013f03          	ld	t5,240(sp)
    ld x31, 0xf8(sp)
    80001234:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001238:	10010113          	addi	sp,sp,256

    sret
    8000123c:	10200073          	sret

0000000080001240 <trapConsole>:

trapConsole:
    addi sp, sp, -256
    80001240:	f0010113          	addi	sp,sp,-256

    sd x0, 0x00(sp)
    80001244:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    80001248:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    8000124c:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001250:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    80001254:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    80001258:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    8000125c:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001260:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    80001264:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    80001268:	04913423          	sd	s1,72(sp)
    sd x10, 0x50(sp)
    8000126c:	04a13823          	sd	a0,80(sp)
    sd x11, 0x58(sp)
    80001270:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001274:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    80001278:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    8000127c:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001280:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001284:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    80001288:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    8000128c:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001290:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001294:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    80001298:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    8000129c:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    800012a0:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    800012a4:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    800012a8:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    800012ac:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    800012b0:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    800012b4:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    800012b8:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    800012bc:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    800012c0:	0ff13c23          	sd	t6,248(sp)

    call handleSupervisorTrapConsole
    800012c4:	4e0010ef          	jal	ra,800027a4 <handleSupervisorTrapConsole>

    ld x0, 0x00(sp)
    800012c8:	00013003          	ld	zero,0(sp)
    ld x1, 0x08(sp)
    800012cc:	00813083          	ld	ra,8(sp)
    ld x2, 0x10(sp)
    800012d0:	01013103          	ld	sp,16(sp)
    ld x3, 0x18(sp)
    800012d4:	01813183          	ld	gp,24(sp)
    ld x4, 0x20(sp)
    800012d8:	02013203          	ld	tp,32(sp)
    ld x5, 0x28(sp)
    800012dc:	02813283          	ld	t0,40(sp)
    ld x6, 0x30(sp)
    800012e0:	03013303          	ld	t1,48(sp)
    ld x7, 0x38(sp)
    800012e4:	03813383          	ld	t2,56(sp)
    ld x8, 0x40(sp)
    800012e8:	04013403          	ld	s0,64(sp)
    ld x9, 0x48(sp)
    800012ec:	04813483          	ld	s1,72(sp)
    ld x10, 0x50(sp)
    800012f0:	05013503          	ld	a0,80(sp)
    ld x11, 0x58(sp)
    800012f4:	05813583          	ld	a1,88(sp)
    ld x12, 0x60(sp)
    800012f8:	06013603          	ld	a2,96(sp)
    ld x13, 0x68(sp)
    800012fc:	06813683          	ld	a3,104(sp)
    ld x14, 0x70(sp)
    80001300:	07013703          	ld	a4,112(sp)
    ld x15, 0x78(sp)
    80001304:	07813783          	ld	a5,120(sp)
    ld x16, 0x80(sp)
    80001308:	08013803          	ld	a6,128(sp)
    ld x17, 0x88(sp)
    8000130c:	08813883          	ld	a7,136(sp)
    ld x18, 0x90(sp)
    80001310:	09013903          	ld	s2,144(sp)
    ld x19, 0x98(sp)
    80001314:	09813983          	ld	s3,152(sp)
    ld x20, 0xa0(sp)
    80001318:	0a013a03          	ld	s4,160(sp)
    ld x21, 0xa8(sp)
    8000131c:	0a813a83          	ld	s5,168(sp)
    ld x22, 0xb0(sp)
    80001320:	0b013b03          	ld	s6,176(sp)
    ld x23, 0xb8(sp)
    80001324:	0b813b83          	ld	s7,184(sp)
    ld x24, 0xc0(sp)
    80001328:	0c013c03          	ld	s8,192(sp)
    ld x25, 0xc8(sp)
    8000132c:	0c813c83          	ld	s9,200(sp)
    ld x26, 0xd0(sp)
    80001330:	0d013d03          	ld	s10,208(sp)
    ld x27, 0xd8(sp)
    80001334:	0d813d83          	ld	s11,216(sp)
    ld x28, 0xe0(sp)
    80001338:	0e013e03          	ld	t3,224(sp)
    ld x29, 0xe8(sp)
    8000133c:	0e813e83          	ld	t4,232(sp)
    ld x30, 0xf0(sp)
    80001340:	0f013f03          	ld	t5,240(sp)
    ld x31, 0xf8(sp)
    80001344:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001348:	10010113          	addi	sp,sp,256

    8000134c:	10200073          	sret
	...

0000000080001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0(a0)
    80001358:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    8000135c:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001360:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    80001364:	0085b103          	ld	sp,8(a1)

    80001368:	00008067          	ret

000000008000136c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000136c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001370:	00b29a63          	bne	t0,a1,80001384 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001374:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001378:	fe029ae3          	bnez	t0,8000136c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000137c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001380:	00008067          	ret

0000000080001384 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001384:	00100513          	li	a0,1
    80001388:	00008067          	ret

000000008000138c <_Z9mem_allocm>:
#include "../h/syscall_c.h"

void* mem_alloc(size_t sz) {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    uint64 oper = 0x01;
    void* returnValue;
    sz = (sz + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE;
    80001398:	03f50513          	addi	a0,a0,63
    8000139c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(sz));
    800013a0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800013a4:	00100793          	li	a5,1
    800013a8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013ac:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    800013b0:	00050513          	mv	a0,a0
    return returnValue;
}
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800013c0:	ff010113          	addi	sp,sp,-16
    800013c4:	00813423          	sd	s0,8(sp)
    800013c8:	01010413          	addi	s0,sp,16
    uint64 oper = 0x02;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(ptr));
    800013cc:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800013d0:	00200793          	li	a5,2
    800013d4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013d8:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    800013dc:	00050513          	mv	a0,a0
    return returnValue;
}
    800013e0:	0005051b          	sext.w	a0,a0
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, Body start_routine, void* arg) {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    uint64 oper = 0x11;
    int returnValue;
    thread_t* ha = handle;
    void (*sr) (void*) = start_routine;
    void* ar = arg;
    __asm__ volatile ("mv a3, %[var1]" : : [var1] "r"(ar));
    800013fc:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %[var2]" : : [var2] "r"(sr));
    80001400:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[var3]" : : [var3] "r"(ha));
    80001404:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001408:	01100793          	li	a5,17
    8000140c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001410:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    80001414:	00050513          	mv	a0,a0
    return returnValue;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z11thread_exitv>:

int thread_exit() {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    uint64 oper = 0x12;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001434:	01200793          	li	a5,18
    80001438:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000143c:	00000073          	ecall
    return 0;
}
    80001440:	00000513          	li	a0,0
    80001444:	00813403          	ld	s0,8(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    uint64 oper = 0x13;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    8000145c:	01300793          	li	a5,19
    80001460:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001464:	00000073          	ecall
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    uint64 oper = 0x14;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    80001480:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001484:	01400793          	li	a5,20
    80001488:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000148c:	00000073          	ecall
}
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z16thread_createCPPPP3TCBPFvPvES2_>:

TCB* thread_createCPP(thread_t* handle, Body start_routine, void* arg) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
    800014a8:	00050793          	mv	a5,a0
    uint64 oper = 0x15;
    TCB* returnValue;
    returnValue = *handle;
    800014ac:	00053503          	ld	a0,0(a0)
    thread_t* ha = handle;
    void (*sr) (void*) = start_routine;
    void* ar = arg;
    __asm__ volatile ("mv a3, %[var1]" : : [var1] "r"(ar));
    800014b0:	00060693          	mv	a3,a2
    __asm__ volatile ("mv a2, %[var2]" : : [var2] "r"(sr));
    800014b4:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[var3]" : : [var3] "r"(ha));
    800014b8:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800014bc:	01500793          	li	a5,21
    800014c0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014c4:	00000073          	ecall
    //__asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    return returnValue;
}
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z8sem_openPP10_Semaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00813423          	sd	s0,8(sp)
    800014dc:	01010413          	addi	s0,sp,16
    uint64 oper = 0x21;
    int returnValue;
    __asm__ volatile ("mv a2, %[var]" : : [var] "r"(init));
    800014e0:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    800014e4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800014e8:	02100793          	li	a5,33
    800014ec:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800014f0:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    800014f4:	00050513          	mv	a0,a0
    return returnValue;
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z9sem_closeP10_Semaphore>:

int sem_close(sem_t handle) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00813423          	sd	s0,8(sp)
    80001510:	01010413          	addi	s0,sp,16
    uint64 oper = 0x22;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    80001514:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001518:	02200793          	li	a5,34
    8000151c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001520:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    80001524:	00050513          	mv	a0,a0
    return returnValue;
}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z8sem_waitP10_Semaphore>:

int sem_wait(sem_t handle) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    uint64 oper = 0x23;
    uint64 ha = (uint64)handle;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(ha));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001548:	02300793          	li	a5,35
    8000154c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001550:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    80001554:	00050513          	mv	a0,a0
    return returnValue;
}
    80001558:	0005051b          	sext.w	a0,a0
    8000155c:	00813403          	ld	s0,8(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <_Z10sem_signalP10_Semaphore>:

int sem_signal(sem_t handle) {
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00813423          	sd	s0,8(sp)
    80001570:	01010413          	addi	s0,sp,16
    uint64 oper = 0x24;
    int returnValue;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(handle));
    80001574:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001578:	02400793          	li	a5,36
    8000157c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001580:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    80001584:	00050513          	mv	a0,a0
    return returnValue;
}
    80001588:	0005051b          	sext.w	a0,a0
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_Z10changeUserv>:

void changeUser() {
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00813423          	sd	s0,8(sp)
    800015a0:	01010413          	addi	s0,sp,16
    uint64 oper = 0x25;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800015a4:	02500793          	li	a5,37
    800015a8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800015ac:	00000073          	ecall
}
    800015b0:	00813403          	ld	s0,8(sp)
    800015b4:	01010113          	addi	sp,sp,16
    800015b8:	00008067          	ret

00000000800015bc <_Z4getcv>:

char getc() {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
    uint64 oper = 0x41;
    char returnValue;
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800015c8:	04100793          	li	a5,65
    800015cc:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800015d0:	00000073          	ecall
    __asm__ volatile ("mv %[var], a0" : [var] "=r"(returnValue));
    800015d4:	00050513          	mv	a0,a0
    return returnValue;
}
    800015d8:	0ff57513          	andi	a0,a0,255
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z4putcc>:

void putc (char c) {
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    uint64 oper = 0x42;
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(c));
    800015f4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    800015f8:	04200793          	li	a5,66
    800015fc:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001600:	00000073          	ecall
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00813423          	sd	s0,8(sp)
    80001618:	01010413          	addi	s0,sp,16
    uint64 oper = 0x31;
    if (t == 0) t++;
    8000161c:	00051463          	bnez	a0,80001624 <_Z10time_sleepm+0x14>
    80001620:	00150513          	addi	a0,a0,1
    __asm__ volatile ("mv a1, %[var]" : : [var] "r"(t));
    80001624:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[var]" : : [var] "r"(oper));
    80001628:	03100793          	li	a5,49
    8000162c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001630:	00000073          	ecall
    return 0;
    80001634:	00000513          	li	a0,0
    80001638:	00813403          	ld	s0,8(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZN10_Semaphore8sem_openEPPS_j>:
#include "../h/semaphore.hpp"

void thread_dispatch();

int _Semaphore::sem_open(_Semaphore** handle, unsigned int init) {
    80001644:	fe010113          	addi	sp,sp,-32
    80001648:	00113c23          	sd	ra,24(sp)
    8000164c:	00813823          	sd	s0,16(sp)
    80001650:	00913423          	sd	s1,8(sp)
    80001654:	01213023          	sd	s2,0(sp)
    80001658:	02010413          	addi	s0,sp,32
    8000165c:	00050493          	mv	s1,a0
    80001660:	00058913          	mv	s2,a1
    sem_t ptr = (sem_t)MemoryAllocator::get().mem_alloc((sizeof(_Semaphore) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001664:	00100593          	li	a1,1
    80001668:	0000a517          	auipc	a0,0xa
    8000166c:	f4850513          	addi	a0,a0,-184 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001670:	00001097          	auipc	ra,0x1
    80001674:	1e8080e7          	jalr	488(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    //_Semaphore* ptr = *handle;
    *handle = ptr;
    80001678:	00a4b023          	sd	a0,0(s1)
    if (*handle == nullptr) return -1; // nema prostora za alokaciju
    8000167c:	02050863          	beqz	a0,800016ac <_ZN10_Semaphore8sem_openEPPS_j+0x68>
    ptr->val = (int)init;
    80001680:	01252023          	sw	s2,0(a0)
    ptr->head = nullptr;
    80001684:	00053423          	sd	zero,8(a0)
    ptr->tail = nullptr;
    80001688:	00053823          	sd	zero,16(a0)
    ptr->closed = false;
    8000168c:	00050c23          	sb	zero,24(a0)
    return 0;
    80001690:	00000513          	li	a0,0
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	00013903          	ld	s2,0(sp)
    800016a4:	02010113          	addi	sp,sp,32
    800016a8:	00008067          	ret
    if (*handle == nullptr) return -1; // nema prostora za alokaciju
    800016ac:	fff00513          	li	a0,-1
    800016b0:	fe5ff06f          	j	80001694 <_ZN10_Semaphore8sem_openEPPS_j+0x50>

00000000800016b4 <_ZN10_Semaphore9sem_closeEPS_>:

int _Semaphore::sem_close(sem_t handle) {
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
    800016cc:	0300006f          	j	800016fc <_ZN10_Semaphore9sem_closeEPS_+0x48>
    while (handle->head != nullptr) {
        handle->head->tcb->setBlocked(false);
        if (!handle->head->tcb->isFinished()) Scheduler::getScheduler().put(handle->head->tcb);
    800016d0:	0000a517          	auipc	a0,0xa
    800016d4:	ed050513          	addi	a0,a0,-304 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	570080e7          	jalr	1392(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
        BlockedNode* curr = handle->head;
    800016e0:	0084b583          	ld	a1,8(s1)
        handle->head = handle->head->next;
    800016e4:	0085b783          	ld	a5,8(a1)
    800016e8:	00f4b423          	sd	a5,8(s1)
        MemoryAllocator::get().mem_free(curr);
    800016ec:	0000a517          	auipc	a0,0xa
    800016f0:	ec450513          	addi	a0,a0,-316 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	278080e7          	jalr	632(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    while (handle->head != nullptr) {
    800016fc:	0084b783          	ld	a5,8(s1)
    80001700:	02078063          	beqz	a5,80001720 <_ZN10_Semaphore9sem_closeEPS_+0x6c>
        handle->head->tcb->setBlocked(false);
    80001704:	0007b783          	ld	a5,0(a5)
    bool isFinished() {
        return finished;
    }

    void setBlocked(bool b) {
        blocked = b;
    80001708:	040780a3          	sb	zero,65(a5)
        if (!handle->head->tcb->isFinished()) Scheduler::getScheduler().put(handle->head->tcb);
    8000170c:	0084b783          	ld	a5,8(s1)
    80001710:	0007b583          	ld	a1,0(a5)
        return finished;
    80001714:	0405c783          	lbu	a5,64(a1)
    80001718:	fc0794e3          	bnez	a5,800016e0 <_ZN10_Semaphore9sem_closeEPS_+0x2c>
    8000171c:	fb5ff06f          	j	800016d0 <_ZN10_Semaphore9sem_closeEPS_+0x1c>
    }
    handle->tail = nullptr;
    80001720:	0004b823          	sd	zero,16(s1)
    handle->closed = true;
    80001724:	00100793          	li	a5,1
    80001728:	00f48c23          	sb	a5,24(s1)
    return 0;
}
    8000172c:	00000513          	li	a0,0
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret

0000000080001744 <_ZN10_Semaphore10sem_signalEPS_>:

int _Semaphore::sem_signal(sem_t id) {
    if (id == nullptr) return -1; // nekorektna vrednost id
    80001744:	0a050063          	beqz	a0,800017e4 <_ZN10_Semaphore10sem_signalEPS_+0xa0>
    if (id->closed) return -2;
    80001748:	01854783          	lbu	a5,24(a0)
    8000174c:	0a079063          	bnez	a5,800017ec <_ZN10_Semaphore10sem_signalEPS_+0xa8>
    id->val++;
    80001750:	00052783          	lw	a5,0(a0)
    80001754:	0017879b          	addiw	a5,a5,1
    80001758:	0007871b          	sext.w	a4,a5
    8000175c:	00f52023          	sw	a5,0(a0)

    if (id->val <= 0 ) {
    80001760:	00e05663          	blez	a4,8000176c <_ZN10_Semaphore10sem_signalEPS_+0x28>

        ptr->tcb->setBlocked(false);
        Scheduler::getScheduler().put(ptr->tcb);
        MemoryAllocator::get().mem_free((void*)ptr);
    }
    return 0;
    80001764:	00000513          	li	a0,0
}
    80001768:	00008067          	ret
int _Semaphore::sem_signal(sem_t id) {
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	02010413          	addi	s0,sp,32
        if (id->head == nullptr) return -2; // prazan semafor
    80001780:	00853483          	ld	s1,8(a0)
    80001784:	06048863          	beqz	s1,800017f4 <_ZN10_Semaphore10sem_signalEPS_+0xb0>
        id->head = id->head->next;
    80001788:	0084b783          	ld	a5,8(s1)
    8000178c:	00f53423          	sd	a5,8(a0)
        if (id->head == nullptr) id->tail = nullptr;
    80001790:	04078663          	beqz	a5,800017dc <_ZN10_Semaphore10sem_signalEPS_+0x98>
        ptr->tcb->setBlocked(false);
    80001794:	0004b783          	ld	a5,0(s1)
        blocked = b;
    80001798:	040780a3          	sb	zero,65(a5)
        Scheduler::getScheduler().put(ptr->tcb);
    8000179c:	0004b583          	ld	a1,0(s1)
    800017a0:	0000a517          	auipc	a0,0xa
    800017a4:	e0050513          	addi	a0,a0,-512 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	4a0080e7          	jalr	1184(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
        MemoryAllocator::get().mem_free((void*)ptr);
    800017b0:	00048593          	mv	a1,s1
    800017b4:	0000a517          	auipc	a0,0xa
    800017b8:	dfc50513          	addi	a0,a0,-516 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	1b0080e7          	jalr	432(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    return 0;
    800017c4:	00000513          	li	a0,0
}
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret
        if (id->head == nullptr) id->tail = nullptr;
    800017dc:	00053823          	sd	zero,16(a0)
    800017e0:	fb5ff06f          	j	80001794 <_ZN10_Semaphore10sem_signalEPS_+0x50>
    if (id == nullptr) return -1; // nekorektna vrednost id
    800017e4:	fff00513          	li	a0,-1
    800017e8:	00008067          	ret
    if (id->closed) return -2;
    800017ec:	ffe00513          	li	a0,-2
    800017f0:	00008067          	ret
        if (id->head == nullptr) return -2; // prazan semafor
    800017f4:	ffe00513          	li	a0,-2
    800017f8:	fd1ff06f          	j	800017c8 <_ZN10_Semaphore10sem_signalEPS_+0x84>

00000000800017fc <_ZN10_Semaphore8sem_waitEPS_>:

int _Semaphore::sem_wait(sem_t id) {
    if (id == nullptr) return -1; // nekorektna vrednost id
    800017fc:	0a050663          	beqz	a0,800018a8 <_ZN10_Semaphore8sem_waitEPS_+0xac>
int _Semaphore::sem_wait(sem_t id) {
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00113c23          	sd	ra,24(sp)
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	02010413          	addi	s0,sp,32
    80001814:	00050493          	mv	s1,a0
    if (id->closed) return -2;
    80001818:	01854783          	lbu	a5,24(a0)
    8000181c:	08079a63          	bnez	a5,800018b0 <_ZN10_Semaphore8sem_waitEPS_+0xb4>
    id->val--;
    80001820:	00052783          	lw	a5,0(a0)
    80001824:	fff7879b          	addiw	a5,a5,-1
    80001828:	00f52023          	sw	a5,0(a0)

    if (id->val < 0) {
    8000182c:	02079713          	slli	a4,a5,0x20
    80001830:	00074e63          	bltz	a4,8000184c <_ZN10_Semaphore8sem_waitEPS_+0x50>
            id->head = ptr;
            id->tail = ptr;
        }
        thread_dispatch();
    }
    return 0;
    80001834:	00000513          	li	a0,0
    80001838:	01813083          	ld	ra,24(sp)
    8000183c:	01013403          	ld	s0,16(sp)
    80001840:	00813483          	ld	s1,8(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret
                ((sizeof(BlockedNode) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    8000184c:	00100593          	li	a1,1
    80001850:	0000a517          	auipc	a0,0xa
    80001854:	d6050513          	addi	a0,a0,-672 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	000080e7          	jalr	ra # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
        TCB::running->setBlocked(true);
    80001860:	0000a797          	auipc	a5,0xa
    80001864:	ce87b783          	ld	a5,-792(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001868:	0007b783          	ld	a5,0(a5)
    8000186c:	00100713          	li	a4,1
    80001870:	04e780a3          	sb	a4,65(a5)
        ptr->tcb = TCB::running;
    80001874:	00f53023          	sd	a5,0(a0)
        ptr->next = nullptr;
    80001878:	00053423          	sd	zero,8(a0)
        if (id->tail != nullptr) {
    8000187c:	0104b783          	ld	a5,16(s1)
    80001880:	00078e63          	beqz	a5,8000189c <_ZN10_Semaphore8sem_waitEPS_+0xa0>
            id->tail->next = ptr;
    80001884:	00a7b423          	sd	a0,8(a5)
            id->tail = ptr;
    80001888:	00a4b823          	sd	a0,16(s1)
        thread_dispatch();
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	bc4080e7          	jalr	-1084(ra) # 80001450 <_Z15thread_dispatchv>
    return 0;
    80001894:	00000513          	li	a0,0
    80001898:	fa1ff06f          	j	80001838 <_ZN10_Semaphore8sem_waitEPS_+0x3c>
            id->head = ptr;
    8000189c:	00a4b423          	sd	a0,8(s1)
            id->tail = ptr;
    800018a0:	00a4b823          	sd	a0,16(s1)
    800018a4:	fe9ff06f          	j	8000188c <_ZN10_Semaphore8sem_waitEPS_+0x90>
    if (id == nullptr) return -1; // nekorektna vrednost id
    800018a8:	fff00513          	li	a0,-1
    800018ac:	00008067          	ret
    if (id->closed) return -2;
    800018b0:	ffe00513          	li	a0,-2
    800018b4:	f85ff06f          	j	80001838 <_ZN10_Semaphore8sem_waitEPS_+0x3c>

00000000800018b8 <_Z6waiterPv>:
        __putc('E');
    }

}

void waiter(void* args) {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    changeUser();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	cd0080e7          	jalr	-816(ra) # 80001598 <_Z10changeUserv>
    while(true) {
        thread_dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	b80080e7          	jalr	-1152(ra) # 80001450 <_Z15thread_dispatchv>
    while(true) {
    800018d8:	ff9ff06f          	j	800018d0 <_Z6waiterPv+0x18>

00000000800018dc <_Z6printKPv>:
void printK(void* args){
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    putc('K');
    800018ec:	04b00513          	li	a0,75
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	cf8080e7          	jalr	-776(ra) # 800015e8 <_Z4putcc>
    thread_exit();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	b30080e7          	jalr	-1232(ra) # 80001428 <_Z11thread_exitv>
    putc('k');
    80001900:	06b00513          	li	a0,107
    80001904:	00000097          	auipc	ra,0x0
    80001908:	ce4080e7          	jalr	-796(ra) # 800015e8 <_Z4putcc>
    putc('\n');
    8000190c:	00a00513          	li	a0,10
    80001910:	00000097          	auipc	ra,0x0
    80001914:	cd8080e7          	jalr	-808(ra) # 800015e8 <_Z4putcc>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_Z6printWPv>:
void printW(void* args){
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
        time_sleep(20);
    80001938:	01400513          	li	a0,20
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	cd4080e7          	jalr	-812(ra) # 80001610 <_Z10time_sleepm>
        __putc('W');
    80001944:	05700513          	li	a0,87
    80001948:	00007097          	auipc	ra,0x7
    8000194c:	c14080e7          	jalr	-1004(ra) # 8000855c <__putc>
    while (true) {
    80001950:	fe9ff06f          	j	80001938 <_Z6printWPv+0x10>

0000000080001954 <_Z6printEPv>:
void printE(void* args){
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
        time_sleep(20);
    80001964:	01400513          	li	a0,20
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	ca8080e7          	jalr	-856(ra) # 80001610 <_Z10time_sleepm>
        __putc('E');
    80001970:	04500513          	li	a0,69
    80001974:	00007097          	auipc	ra,0x7
    80001978:	be8080e7          	jalr	-1048(ra) # 8000855c <__putc>
    while (true) {
    8000197c:	fe9ff06f          	j	80001964 <_Z6printEPv+0x10>

0000000080001980 <main>:

TCB* TCB::running = nullptr;

void userMain();

int main () {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrs sstatus, 0x02");
    80001998:	10016073          	csrsi	sstatus,2
    __asm__ volatile("csrw stvec, %0" : : "r"((uint64)&supervisorTrap | (uint64)1));
    8000199c:	0000a797          	auipc	a5,0xa
    800019a0:	b8c7b783          	ld	a5,-1140(a5) # 8000b528 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019a4:	0017e793          	ori	a5,a5,1
    800019a8:	10579073          	csrw	stvec,a5

    Riscv::inputBuffer = new ConsoleBuffer();
    800019ac:	12000513          	li	a0,288
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	5ac080e7          	jalr	1452(ra) # 80001f5c <_Znwm>
    800019b8:	00050493          	mv	s1,a0
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	2f8080e7          	jalr	760(ra) # 80002cb4 <_ZN13ConsoleBufferC1Ev>
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	b947b783          	ld	a5,-1132(a5) # 8000b558 <_GLOBAL_OFFSET_TABLE_+0x58>
    800019cc:	0097b023          	sd	s1,0(a5)
    Riscv::outputBuffer = new ConsoleBuffer();
    800019d0:	12000513          	li	a0,288
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	588080e7          	jalr	1416(ra) # 80001f5c <_Znwm>
    800019dc:	00050493          	mv	s1,a0
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	2d4080e7          	jalr	724(ra) # 80002cb4 <_ZN13ConsoleBufferC1Ev>
    800019e8:	03c0006f          	j	80001a24 <main+0xa4>
    800019ec:	00050913          	mv	s2,a0
    Riscv::inputBuffer = new ConsoleBuffer();
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	590080e7          	jalr	1424(ra) # 80001f84 <_ZdlPv>
    800019fc:	00090513          	mv	a0,s2
    80001a00:	0000b097          	auipc	ra,0xb
    80001a04:	cf8080e7          	jalr	-776(ra) # 8000c6f8 <_Unwind_Resume>
    80001a08:	00050913          	mv	s2,a0
    Riscv::outputBuffer = new ConsoleBuffer();
    80001a0c:	00048513          	mv	a0,s1
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	574080e7          	jalr	1396(ra) # 80001f84 <_ZdlPv>
    80001a18:	00090513          	mv	a0,s2
    80001a1c:	0000b097          	auipc	ra,0xb
    80001a20:	cdc080e7          	jalr	-804(ra) # 8000c6f8 <_Unwind_Resume>
    80001a24:	0000a797          	auipc	a5,0xa
    80001a28:	b1c7b783          	ld	a5,-1252(a5) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001a2c:	0097b023          	sd	s1,0(a5)

    thread_t* outputThread = (thread_t*) mem_alloc(sizeof(TCB*));;
    80001a30:	00800513          	li	a0,8
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	958080e7          	jalr	-1704(ra) # 8000138c <_Z9mem_allocm>
    thread_create(outputThread, (Body)Riscv::outputFunction, nullptr);
    80001a3c:	00000613          	li	a2,0
    80001a40:	00000597          	auipc	a1,0x0
    80001a44:	09458593          	addi	a1,a1,148 # 80001ad4 <_ZN5Riscv14outputFunctionEPv>
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	9a8080e7          	jalr	-1624(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>

    thread_t* handle = (thread_t*) mem_alloc(sizeof(TCB*));
    80001a50:	00800513          	li	a0,8
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	938080e7          	jalr	-1736(ra) # 8000138c <_Z9mem_allocm>
    80001a5c:	00050493          	mv	s1,a0
    thread_t* idle = (thread_t*) mem_alloc(sizeof(TCB*));
    80001a60:	00800513          	li	a0,8
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	928080e7          	jalr	-1752(ra) # 8000138c <_Z9mem_allocm>
    80001a6c:	00050913          	mv	s2,a0

    thread_create(handle, nullptr, nullptr);
    80001a70:	00000613          	li	a2,0
    80001a74:	00000593          	li	a1,0
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	974080e7          	jalr	-1676(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(idle, (Body)waiter, nullptr);
    80001a84:	00000613          	li	a2,0
    80001a88:	00000597          	auipc	a1,0x0
    80001a8c:	e3058593          	addi	a1,a1,-464 # 800018b8 <_Z6waiterPv>
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	95c080e7          	jalr	-1700(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = *handle;
    80001a9c:	0004b783          	ld	a5,0(s1)
    80001aa0:	0000a717          	auipc	a4,0xa
    80001aa4:	b0f73c23          	sd	a5,-1256(a4) # 8000b5b8 <_ZN3TCB7runningE>
    changeUser();
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	af0080e7          	jalr	-1296(ra) # 80001598 <_Z10changeUserv>
    userMain();
    80001ab0:	00004097          	auipc	ra,0x4
    80001ab4:	e60080e7          	jalr	-416(ra) # 80005910 <_Z8userMainv>


    return 0;
};
    80001ab8:	00000513          	li	a0,0
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	00013903          	ld	s2,0(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret

0000000080001ad4 <_ZN5Riscv14outputFunctionEPv>:
public:

    static ConsoleBuffer* inputBuffer;
    static ConsoleBuffer* outputBuffer;

    static void outputFunction(void*) {
    80001ad4:	ff010113          	addi	sp,sp,-16
    80001ad8:	00113423          	sd	ra,8(sp)
    80001adc:	00813023          	sd	s0,0(sp)
    80001ae0:	01010413          	addi	s0,sp,16
        changeUser();
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	ab4080e7          	jalr	-1356(ra) # 80001598 <_Z10changeUserv>
    80001aec:	0280006f          	j	80001b14 <_ZN5Riscv14outputFunctionEPv+0x40>
        while(true) {
            while ((*(char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
                char c = outputBuffer->getc();
    80001af0:	0000a797          	auipc	a5,0xa
    80001af4:	a507b783          	ld	a5,-1456(a5) # 8000b540 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001af8:	0007b503          	ld	a0,0(a5)
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	214080e7          	jalr	532(ra) # 80002d10 <_ZN13ConsoleBuffer4getcEv>
                *((char*)CONSOLE_TX_DATA) = c;
    80001b04:	0000a797          	auipc	a5,0xa
    80001b08:	a2c7b783          	ld	a5,-1492(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b0c:	0007b783          	ld	a5,0(a5)
    80001b10:	00a78023          	sb	a0,0(a5)
            while ((*(char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80001b14:	0000a797          	auipc	a5,0xa
    80001b18:	9fc7b783          	ld	a5,-1540(a5) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b1c:	0007b783          	ld	a5,0(a5)
    80001b20:	0007c783          	lbu	a5,0(a5)
    80001b24:	0207f793          	andi	a5,a5,32
    80001b28:	fe0786e3          	beqz	a5,80001b14 <_ZN5Riscv14outputFunctionEPv+0x40>
    80001b2c:	fc5ff06f          	j	80001af0 <_ZN5Riscv14outputFunctionEPv+0x1c>

0000000080001b30 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_>:

void thread_dispatch();

uint64 TCB::timeSliceCounter = 0;

int TCB::_thread_create(TCB** handle, Body bodyParam, void* argParam, void* stack_space) {
    80001b30:	fd010113          	addi	sp,sp,-48
    80001b34:	02113423          	sd	ra,40(sp)
    80001b38:	02813023          	sd	s0,32(sp)
    80001b3c:	00913c23          	sd	s1,24(sp)
    80001b40:	01213823          	sd	s2,16(sp)
    80001b44:	01313423          	sd	s3,8(sp)
    80001b48:	01413023          	sd	s4,0(sp)
    80001b4c:	03010413          	addi	s0,sp,48
    80001b50:	00050a13          	mv	s4,a0
    80001b54:	00058913          	mv	s2,a1
    80001b58:	00060993          	mv	s3,a2
    80001b5c:	00068493          	mv	s1,a3
    uint64* st_sp = (uint64*) stack_space;
    TCB* ptr = (TCB*) (MemoryAllocator::get().mem_alloc((sizeof(TCB) + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE));
    80001b60:	00200593          	li	a1,2
    80001b64:	0000a517          	auipc	a0,0xa
    80001b68:	a4c50513          	addi	a0,a0,-1460 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	cec080e7          	jalr	-788(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture
    80001b74:	08050a63          	beqz	a0,80001c08 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0xd8>
    80001b78:	00050593          	mv	a1,a0

    ptr->body = bodyParam;
    80001b7c:	03253423          	sd	s2,40(a0)
    ptr->arg = argParam;
    80001b80:	03353823          	sd	s3,48(a0)
    if (bodyParam) ptr->stack = stack_space;
    else ptr->stack = nullptr;
    ptr->stack = stack_space;
    80001b84:	02953c23          	sd	s1,56(a0)
    ptr->finished = false;
    80001b88:	04050023          	sb	zero,64(a0)
    ptr->blocked = false;
    80001b8c:	040500a3          	sb	zero,65(a0)
    ptr->sleeping = false;
    80001b90:	040501a3          	sb	zero,67(a0)

    ptr->timeSlice = DEFAULT_TIME_SLICE;
    80001b94:	00200793          	li	a5,2
    80001b98:	00f53823          	sd	a5,16(a0)

    ptr->waiting = false;
    80001b9c:	04050123          	sb	zero,66(a0)
    ptr->joinHead = nullptr;
    80001ba0:	00053023          	sd	zero,0(a0)
    ptr->joinTail = nullptr;
    80001ba4:	00053423          	sd	zero,8(a0)

    ptr->context.ra = (uint64) &threadWrapper;
    80001ba8:	00000797          	auipc	a5,0x0
    80001bac:	28078793          	addi	a5,a5,640 # 80001e28 <_ZN3TCB13threadWrapperEv>
    80001bb0:	00f53c23          	sd	a5,24(a0)
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    80001bb4:	04048663          	beqz	s1,80001c00 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0xd0>
    80001bb8:	000086b7          	lui	a3,0x8
    80001bbc:	00d484b3          	add	s1,s1,a3
    80001bc0:	0295b023          	sd	s1,32(a1)
    *handle = ptr;
    80001bc4:	00ba3023          	sd	a1,0(s4)
    if (bodyParam != nullptr) Scheduler::getScheduler().put(ptr);
    80001bc8:	04090463          	beqz	s2,80001c10 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0xe0>
    80001bcc:	0000a517          	auipc	a0,0xa
    80001bd0:	9d450513          	addi	a0,a0,-1580 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	074080e7          	jalr	116(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001bdc:	00000513          	li	a0,0
}
    80001be0:	02813083          	ld	ra,40(sp)
    80001be4:	02013403          	ld	s0,32(sp)
    80001be8:	01813483          	ld	s1,24(sp)
    80001bec:	01013903          	ld	s2,16(sp)
    80001bf0:	00813983          	ld	s3,8(sp)
    80001bf4:	00013a03          	ld	s4,0(sp)
    80001bf8:	03010113          	addi	sp,sp,48
    80001bfc:	00008067          	ret
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    80001c00:	00000493          	li	s1,0
    80001c04:	fbdff06f          	j	80001bc0 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0x90>
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture
    80001c08:	fff00513          	li	a0,-1
    80001c0c:	fd5ff06f          	j	80001be0 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0xb0>
    return 0;
    80001c10:	00000513          	li	a0,0
    80001c14:	fcdff06f          	j	80001be0 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_+0xb0>

0000000080001c18 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_>:

int TCB::_thread_createCPP(TCB **handle, Body bodyParam, void *argParam, void *stack_space) {
    80001c18:	fd010113          	addi	sp,sp,-48
    80001c1c:	02113423          	sd	ra,40(sp)
    80001c20:	02813023          	sd	s0,32(sp)
    80001c24:	00913c23          	sd	s1,24(sp)
    80001c28:	01213823          	sd	s2,16(sp)
    80001c2c:	01313423          	sd	s3,8(sp)
    80001c30:	01413023          	sd	s4,0(sp)
    80001c34:	03010413          	addi	s0,sp,48
    80001c38:	00050a13          	mv	s4,a0
    80001c3c:	00058993          	mv	s3,a1
    80001c40:	00060913          	mv	s2,a2
    80001c44:	00068493          	mv	s1,a3
    uint64* st_sp = (uint64*) stack_space;
    TCB* ptr = (TCB*) (MemoryAllocator::get().mem_alloc((sizeof(TCB) + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE));
    80001c48:	00200593          	li	a1,2
    80001c4c:	0000a517          	auipc	a0,0xa
    80001c50:	96450513          	addi	a0,a0,-1692 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	c04080e7          	jalr	-1020(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture
    80001c5c:	06050e63          	beqz	a0,80001cd8 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_+0xc0>

    ptr->body = bodyParam;
    80001c60:	03353423          	sd	s3,40(a0)
    ptr->arg = argParam;
    80001c64:	03253823          	sd	s2,48(a0)
    if (bodyParam) ptr->stack = stack_space;
    else ptr->stack = nullptr;
    ptr->stack = stack_space;
    80001c68:	02953c23          	sd	s1,56(a0)
    ptr->finished = false;
    80001c6c:	04050023          	sb	zero,64(a0)
    ptr->blocked = false;
    80001c70:	040500a3          	sb	zero,65(a0)
    ptr->sleeping = false;
    80001c74:	040501a3          	sb	zero,67(a0)

    ptr->timeSlice = DEFAULT_TIME_SLICE;
    80001c78:	00200793          	li	a5,2
    80001c7c:	00f53823          	sd	a5,16(a0)

    ptr->waiting = false;
    80001c80:	04050123          	sb	zero,66(a0)
    ptr->joinHead = nullptr;
    80001c84:	00053023          	sd	zero,0(a0)
    ptr->joinTail = nullptr;
    80001c88:	00053423          	sd	zero,8(a0)

    ptr->context.ra = (uint64) &threadWrapper;
    80001c8c:	00000797          	auipc	a5,0x0
    80001c90:	19c78793          	addi	a5,a5,412 # 80001e28 <_ZN3TCB13threadWrapperEv>
    80001c94:	00f53c23          	sd	a5,24(a0)
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    80001c98:	02048c63          	beqz	s1,80001cd0 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_+0xb8>
    80001c9c:	000086b7          	lui	a3,0x8
    80001ca0:	00d484b3          	add	s1,s1,a3
    80001ca4:	02953023          	sd	s1,32(a0)
    *handle = ptr;
    80001ca8:	00aa3023          	sd	a0,0(s4)
    return 0;
    80001cac:	00000513          	li	a0,0
}
    80001cb0:	02813083          	ld	ra,40(sp)
    80001cb4:	02013403          	ld	s0,32(sp)
    80001cb8:	01813483          	ld	s1,24(sp)
    80001cbc:	01013903          	ld	s2,16(sp)
    80001cc0:	00813983          	ld	s3,8(sp)
    80001cc4:	00013a03          	ld	s4,0(sp)
    80001cc8:	03010113          	addi	sp,sp,48
    80001ccc:	00008067          	ret
    ptr->context.sp = (ptr->stack ? (uint64)(&st_sp[DEFAULT_STACK_SIZE]): 0);
    80001cd0:	00000493          	li	s1,0
    80001cd4:	fd1ff06f          	j	80001ca4 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_+0x8c>
    if (!ptr) return -1; // nema prostora za alokaciju TCB strukture
    80001cd8:	fff00513          	li	a0,-1
    80001cdc:	fd5ff06f          	j	80001cb0 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_+0x98>

0000000080001ce0 <_ZN3TCB16_thread_dispatchEv>:


void TCB::_thread_dispatch() {
    80001ce0:	fe010113          	addi	sp,sp,-32
    80001ce4:	00113c23          	sd	ra,24(sp)
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	02010413          	addi	s0,sp,32
    //__putc('d');
    TCB* oldThread = running;
    80001cf4:	0000a797          	auipc	a5,0xa
    80001cf8:	8547b783          	ld	a5,-1964(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001cfc:	0007b483          	ld	s1,0(a5)
    if (!oldThread->finished && !oldThread->blocked && !oldThread->waiting && !oldThread->sleeping) Scheduler::getScheduler().put(oldThread);
    80001d00:	0404c783          	lbu	a5,64(s1)
    80001d04:	00079e63          	bnez	a5,80001d20 <_ZN3TCB16_thread_dispatchEv+0x40>
    80001d08:	0414c783          	lbu	a5,65(s1)
    80001d0c:	00079a63          	bnez	a5,80001d20 <_ZN3TCB16_thread_dispatchEv+0x40>
    80001d10:	0424c783          	lbu	a5,66(s1)
    80001d14:	00079663          	bnez	a5,80001d20 <_ZN3TCB16_thread_dispatchEv+0x40>
    80001d18:	0434c783          	lbu	a5,67(s1)
    80001d1c:	04078263          	beqz	a5,80001d60 <_ZN3TCB16_thread_dispatchEv+0x80>
    running = Scheduler::getScheduler().get();
    80001d20:	0000a517          	auipc	a0,0xa
    80001d24:	88050513          	addi	a0,a0,-1920 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	ebc080e7          	jalr	-324(ra) # 80002be4 <_ZN9Scheduler3getEv>
    80001d30:	0000a797          	auipc	a5,0xa
    80001d34:	8187b783          	ld	a5,-2024(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d38:	00a7b023          	sd	a0,0(a5)
    contextSwitch(&oldThread->context, &running->context);
    80001d3c:	01850593          	addi	a1,a0,24
    80001d40:	01848513          	addi	a0,s1,24
    80001d44:	fffff097          	auipc	ra,0xfffff
    80001d48:	614080e7          	jalr	1556(ra) # 80001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d4c:	01813083          	ld	ra,24(sp)
    80001d50:	01013403          	ld	s0,16(sp)
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	02010113          	addi	sp,sp,32
    80001d5c:	00008067          	ret
    if (!oldThread->finished && !oldThread->blocked && !oldThread->waiting && !oldThread->sleeping) Scheduler::getScheduler().put(oldThread);
    80001d60:	00048593          	mv	a1,s1
    80001d64:	0000a517          	auipc	a0,0xa
    80001d68:	83c50513          	addi	a0,a0,-1988 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	edc080e7          	jalr	-292(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
    80001d74:	fadff06f          	j	80001d20 <_ZN3TCB16_thread_dispatchEv+0x40>

0000000080001d78 <_ZN3TCB12_thread_exitEv>:

void TCB::_thread_exit() {
    80001d78:	fe010113          	addi	sp,sp,-32
    80001d7c:	00113c23          	sd	ra,24(sp)
    80001d80:	00813823          	sd	s0,16(sp)
    80001d84:	00913423          	sd	s1,8(sp)
    80001d88:	02010413          	addi	s0,sp,32
    running->finished = true;
    80001d8c:	00009797          	auipc	a5,0x9
    80001d90:	7bc7b783          	ld	a5,1980(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d94:	0007b783          	ld	a5,0(a5)
    80001d98:	00100713          	li	a4,1
    80001d9c:	04e78023          	sb	a4,64(a5)

    while (TCB::running->joinHead != nullptr) {
    80001da0:	00009797          	auipc	a5,0x9
    80001da4:	7a87b783          	ld	a5,1960(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001da8:	0007b783          	ld	a5,0(a5)
    80001dac:	0007b703          	ld	a4,0(a5)
    80001db0:	04070263          	beqz	a4,80001df4 <_ZN3TCB12_thread_exitEv+0x7c>
        TCB::running->joinHead->tcb->waiting = false;
    80001db4:	00073703          	ld	a4,0(a4)
    80001db8:	04070123          	sb	zero,66(a4)
        JoinedNode* ptr = TCB::running->joinHead;
    80001dbc:	0007b483          	ld	s1,0(a5)
        TCB::running->joinHead = TCB::running->joinHead->next;
    80001dc0:	0084b703          	ld	a4,8(s1)
    80001dc4:	00e7b023          	sd	a4,0(a5)
        Scheduler::getScheduler().put(ptr->tcb);
    80001dc8:	0004b583          	ld	a1,0(s1)
    80001dcc:	00009517          	auipc	a0,0x9
    80001dd0:	7d450513          	addi	a0,a0,2004 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	e74080e7          	jalr	-396(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
        MemoryAllocator::get().mem_free((void*)ptr);
    80001ddc:	00048593          	mv	a1,s1
    80001de0:	00009517          	auipc	a0,0x9
    80001de4:	7d050513          	addi	a0,a0,2000 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	b84080e7          	jalr	-1148(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    while (TCB::running->joinHead != nullptr) {
    80001df0:	fb1ff06f          	j	80001da0 <_ZN3TCB12_thread_exitEv+0x28>
    }
    TCB::running->joinTail = nullptr;
    80001df4:	0007b423          	sd	zero,8(a5)
    MemoryAllocator::get().mem_free(running->stack);
    80001df8:	0387b583          	ld	a1,56(a5)
    80001dfc:	00009517          	auipc	a0,0x9
    80001e00:	7b450513          	addi	a0,a0,1972 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	b68080e7          	jalr	-1176(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	644080e7          	jalr	1604(ra) # 80001450 <_Z15thread_dispatchv>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZN3TCB13threadWrapperEv>:
        tcb->joinTail->next = ptr;
    }
    TCB::_thread_dispatch();
}

void TCB::threadWrapper() {
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00113423          	sd	ra,8(sp)
    80001e30:	00813023          	sd	s0,0(sp)
    80001e34:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	a00080e7          	jalr	-1536(ra) # 80002838 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e40:	00009797          	auipc	a5,0x9
    80001e44:	7087b783          	ld	a5,1800(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001e48:	0007b783          	ld	a5,0(a5)
    80001e4c:	0287b703          	ld	a4,40(a5)
    80001e50:	0307b503          	ld	a0,48(a5)
    80001e54:	000700e7          	jalr	a4
    TCB::_thread_exit();
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	f20080e7          	jalr	-224(ra) # 80001d78 <_ZN3TCB12_thread_exitEv>
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN3TCB12_thread_joinEPS_>:
void TCB::_thread_join(TCB* tcb) {
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	01213023          	sd	s2,0(sp)
    80001e84:	02010413          	addi	s0,sp,32
    80001e88:	00050493          	mv	s1,a0
    TCB::running->waiting = true;
    80001e8c:	00009917          	auipc	s2,0x9
    80001e90:	6bc93903          	ld	s2,1724(s2) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001e94:	00093783          	ld	a5,0(s2)
    80001e98:	00100713          	li	a4,1
    80001e9c:	04e78123          	sb	a4,66(a5)
    JoinedNode* ptr = (JoinedNode*)MemoryAllocator::get().mem_alloc((sizeof(JoinedNode) + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE );
    80001ea0:	00100593          	li	a1,1
    80001ea4:	00009517          	auipc	a0,0x9
    80001ea8:	70c50513          	addi	a0,a0,1804 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	9ac080e7          	jalr	-1620(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    ptr->tcb = TCB::running;
    80001eb4:	00093783          	ld	a5,0(s2)
    80001eb8:	00f53023          	sd	a5,0(a0)
    ptr->next = nullptr;
    80001ebc:	00053423          	sd	zero,8(a0)
    if (tcb->joinTail == nullptr) {
    80001ec0:	0084b783          	ld	a5,8(s1)
    80001ec4:	02078463          	beqz	a5,80001eec <_ZN3TCB12_thread_joinEPS_+0x7c>
        tcb->joinTail->next = ptr;
    80001ec8:	00a7b423          	sd	a0,8(a5)
    TCB::_thread_dispatch();
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	e14080e7          	jalr	-492(ra) # 80001ce0 <_ZN3TCB16_thread_dispatchEv>
}
    80001ed4:	01813083          	ld	ra,24(sp)
    80001ed8:	01013403          	ld	s0,16(sp)
    80001edc:	00813483          	ld	s1,8(sp)
    80001ee0:	00013903          	ld	s2,0(sp)
    80001ee4:	02010113          	addi	sp,sp,32
    80001ee8:	00008067          	ret
        tcb->joinHead = ptr;
    80001eec:	00a4b023          	sd	a0,0(s1)
        tcb->joinTail = ptr;
    80001ef0:	00a4b423          	sd	a0,8(s1)
    80001ef4:	fd9ff06f          	j	80001ecc <_ZN3TCB12_thread_joinEPS_+0x5c>

0000000080001ef8 <_ZN6Thread18wrapperFunctionCPPEPv>:

Thread::Thread() {
    thread_createCPP(&myHandle, wrapperFunctionCPP, this);
}

void Thread::wrapperFunctionCPP(void *thr) {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
    ((Thread*)thr)->run();
    80001f08:	00053783          	ld	a5,0(a0)
    80001f0c:	0107b783          	ld	a5,16(a5)
    80001f10:	000780e7          	jalr	a5

}
    80001f14:	00813083          	ld	ra,8(sp)
    80001f18:	00013403          	ld	s0,0(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00113423          	sd	ra,8(sp)
    80001f2c:	00813023          	sd	s0,0(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00009797          	auipc	a5,0x9
    80001f38:	40c78793          	addi	a5,a5,1036 # 8000b340 <_ZTV9Semaphore+0x10>
    80001f3c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001f40:	00853503          	ld	a0,8(a0)
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	5c4080e7          	jalr	1476(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_Znwm>:
void* operator new (size_t sz) {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    return mem_alloc(sz);
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	420080e7          	jalr	1056(ra) # 8000138c <_Z9mem_allocm>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZdlPv>:
void operator delete (void* adr) noexcept {
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00113423          	sd	ra,8(sp)
    80001f8c:	00813023          	sd	s0,0(sp)
    80001f90:	01010413          	addi	s0,sp,16
    mem_free(adr);
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	42c080e7          	jalr	1068(ra) # 800013c0 <_Z8mem_freePv>
}
    80001f9c:	00813083          	ld	ra,8(sp)
    80001fa0:	00013403          	ld	s0,0(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001fac:	00009797          	auipc	a5,0x9
    80001fb0:	36c78793          	addi	a5,a5,876 # 8000b318 <_ZTV6Thread+0x10>
    80001fb4:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001fb8:	00853503          	ld	a0,8(a0)
    80001fbc:	02050663          	beqz	a0,80001fe8 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00113423          	sd	ra,8(sp)
    80001fc8:	00813023          	sd	s0,0(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	fb4080e7          	jalr	-76(ra) # 80001f84 <_ZdlPv>
}
    80001fd8:	00813083          	ld	ra,8(sp)
    80001fdc:	00013403          	ld	s0,0(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret
    80001fe8:	00008067          	ret

0000000080001fec <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    80002000:	00050493          	mv	s1,a0
}
    80002004:	00000097          	auipc	ra,0x0
    80002008:	fa8080e7          	jalr	-88(ra) # 80001fac <_ZN6ThreadD1Ev>
    8000200c:	00048513          	mv	a0,s1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f74080e7          	jalr	-140(ra) # 80001f84 <_ZdlPv>
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	02010113          	addi	sp,sp,32
    80002028:	00008067          	ret

000000008000202c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000202c:	fe010113          	addi	sp,sp,-32
    80002030:	00113c23          	sd	ra,24(sp)
    80002034:	00813823          	sd	s0,16(sp)
    80002038:	00913423          	sd	s1,8(sp)
    8000203c:	02010413          	addi	s0,sp,32
    80002040:	00050493          	mv	s1,a0
}
    80002044:	00000097          	auipc	ra,0x0
    80002048:	ee0080e7          	jalr	-288(ra) # 80001f24 <_ZN9SemaphoreD1Ev>
    8000204c:	00048513          	mv	a0,s1
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f34080e7          	jalr	-204(ra) # 80001f84 <_ZdlPv>
    80002058:	01813083          	ld	ra,24(sp)
    8000205c:	01013403          	ld	s0,16(sp)
    80002060:	00813483          	ld	s1,8(sp)
    80002064:	02010113          	addi	sp,sp,32
    80002068:	00008067          	ret

000000008000206c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00009797          	auipc	a5,0x9
    80002080:	29c78793          	addi	a5,a5,668 # 8000b318 <_ZTV6Thread+0x10>
    80002084:	00f53023          	sd	a5,0(a0)
    thread_createCPP(&myHandle, body, args);
    80002088:	00850513          	addi	a0,a0,8
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	410080e7          	jalr	1040(ra) # 8000149c <_Z16thread_createCPPPP3TCBPFvPvES2_>
}
    80002094:	00813083          	ld	ra,8(sp)
    80002098:	00013403          	ld	s0,0(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	39c080e7          	jalr	924(ra) # 80001450 <_Z15thread_dispatchv>
}
    800020bc:	00813083          	ld	ra,8(sp)
    800020c0:	00013403          	ld	s0,0(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_ZN6Thread5startEv>:
int Thread::start() {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00113423          	sd	ra,8(sp)
    800020d4:	00813023          	sd	s0,0(sp)
    800020d8:	01010413          	addi	s0,sp,16
    Scheduler::getScheduler().put(myHandle);
    800020dc:	00853583          	ld	a1,8(a0)
    800020e0:	00009517          	auipc	a0,0x9
    800020e4:	4c050513          	addi	a0,a0,1216 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	b60080e7          	jalr	-1184(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
}
    800020f0:	00000513          	li	a0,0
    800020f4:	00813083          	ld	ra,8(sp)
    800020f8:	00013403          	ld	s0,0(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret

0000000080002104 <_ZN6Thread4joinEv>:
void Thread::join() {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00113423          	sd	ra,8(sp)
    8000210c:	00813023          	sd	s0,0(sp)
    80002110:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80002114:	00853503          	ld	a0,8(a0)
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	35c080e7          	jalr	860(ra) # 80001474 <_Z11thread_joinP3TCB>
}
    80002120:	00813083          	ld	ra,8(sp)
    80002124:	00013403          	ld	s0,0(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00113423          	sd	ra,8(sp)
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	01010413          	addi	s0,sp,16
    80002140:	00009797          	auipc	a5,0x9
    80002144:	1d878793          	addi	a5,a5,472 # 8000b318 <_ZTV6Thread+0x10>
    80002148:	00f53023          	sd	a5,0(a0)
    thread_createCPP(&myHandle, wrapperFunctionCPP, this);
    8000214c:	00050613          	mv	a2,a0
    80002150:	00000597          	auipc	a1,0x0
    80002154:	da858593          	addi	a1,a1,-600 # 80001ef8 <_ZN6Thread18wrapperFunctionCPPEPv>
    80002158:	00850513          	addi	a0,a0,8
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	340080e7          	jalr	832(ra) # 8000149c <_Z16thread_createCPPPP3TCBPFvPvES2_>
}
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	48c080e7          	jalr	1164(ra) # 80001610 <_Z10time_sleepm>
}
    8000218c:	00000513          	li	a0,0
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00113423          	sd	ra,8(sp)
    800021a8:	00813023          	sd	s0,0(sp)
    800021ac:	01010413          	addi	s0,sp,16
    800021b0:	00009797          	auipc	a5,0x9
    800021b4:	19078793          	addi	a5,a5,400 # 8000b340 <_ZTV9Semaphore+0x10>
    800021b8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800021bc:	00850513          	addi	a0,a0,8
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	314080e7          	jalr	788(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
}
    800021c8:	00813083          	ld	ra,8(sp)
    800021cc:	00013403          	ld	s0,0(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00113423          	sd	ra,8(sp)
    800021e0:	00813023          	sd	s0,0(sp)
    800021e4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800021e8:	00853503          	ld	a0,8(a0)
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	37c080e7          	jalr	892(ra) # 80001568 <_Z10sem_signalP10_Semaphore>
}
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00013403          	ld	s0,0(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00113423          	sd	ra,8(sp)
    8000220c:	00813023          	sd	s0,0(sp)
    80002210:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002214:	00853503          	ld	a0,8(a0)
    80002218:	fffff097          	auipc	ra,0xfffff
    8000221c:	320080e7          	jalr	800(ra) # 80001538 <_Z8sem_waitP10_Semaphore>
}
    80002220:	00813083          	ld	ra,8(sp)
    80002224:	00013403          	ld	s0,0(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret

0000000080002230 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread (time_t period) {
    80002230:	fe010113          	addi	sp,sp,-32
    80002234:	00113c23          	sd	ra,24(sp)
    80002238:	00813823          	sd	s0,16(sp)
    8000223c:	00913423          	sd	s1,8(sp)
    80002240:	01213023          	sd	s2,0(sp)
    80002244:	02010413          	addi	s0,sp,32
    80002248:	00050493          	mv	s1,a0
    8000224c:	00058913          	mv	s2,a1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	ee0080e7          	jalr	-288(ra) # 80002130 <_ZN6ThreadC1Ev>
    80002258:	00009797          	auipc	a5,0x9
    8000225c:	09078793          	addi	a5,a5,144 # 8000b2e8 <_ZTV14PeriodicThread+0x10>
    80002260:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002264:	0324b023          	sd	s2,32(s1)
}
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	01013403          	ld	s0,16(sp)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	00013903          	ld	s2,0(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret

0000000080002280 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    period = 0;
    8000228c:	02053023          	sd	zero,32(a0)
}
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN7Console4getcEv>:

char Console::getc() {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    char c = ::getc();
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	310080e7          	jalr	784(ra) # 800015bc <_Z4getcv>
    return c;
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00113423          	sd	ra,8(sp)
    800022cc:	00813023          	sd	s0,0(sp)
    800022d0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	314080e7          	jalr	788(ra) # 800015e8 <_Z4putcc>
    800022dc:	00813083          	ld	ra,8(sp)
    800022e0:	00013403          	ld	s0,0(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation() {}
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN14PeriodicThread3runEv>:
    void run() override {
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	02010413          	addi	s0,sp,32
    80002330:	00050493          	mv	s1,a0
        while(period != 0) {
    80002334:	0204b783          	ld	a5,32(s1)
    80002338:	02078263          	beqz	a5,8000235c <_ZN14PeriodicThread3runEv+0x40>
            periodicActivation();
    8000233c:	0004b783          	ld	a5,0(s1)
    80002340:	0187b783          	ld	a5,24(a5)
    80002344:	00048513          	mv	a0,s1
    80002348:	000780e7          	jalr	a5
            time_sleep(period);
    8000234c:	0204b503          	ld	a0,32(s1)
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	2c0080e7          	jalr	704(ra) # 80001610 <_Z10time_sleepm>
        while(period != 0) {
    80002358:	fddff06f          	j	80002334 <_ZN14PeriodicThread3runEv+0x18>
        }
    }
    8000235c:	01813083          	ld	ra,24(sp)
    80002360:	01013403          	ld	s0,16(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret

0000000080002370 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00113423          	sd	ra,8(sp)
    80002378:	00813023          	sd	s0,0(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	00009797          	auipc	a5,0x9
    80002384:	f6878793          	addi	a5,a5,-152 # 8000b2e8 <_ZTV14PeriodicThread+0x10>
    80002388:	00f53023          	sd	a5,0(a0)
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	c20080e7          	jalr	-992(ra) # 80001fac <_ZN6ThreadD1Ev>
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN14PeriodicThreadD0Ev>:
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	02010413          	addi	s0,sp,32
    800023b8:	00050493          	mv	s1,a0
    800023bc:	00009797          	auipc	a5,0x9
    800023c0:	f2c78793          	addi	a5,a5,-212 # 8000b2e8 <_ZTV14PeriodicThread+0x10>
    800023c4:	00f53023          	sd	a5,0(a0)
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	be4080e7          	jalr	-1052(ra) # 80001fac <_ZN6ThreadD1Ev>
    800023d0:	00048513          	mv	a0,s1
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	bb0080e7          	jalr	-1104(ra) # 80001f84 <_ZdlPv>
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	02010113          	addi	sp,sp,32
    800023ec:	00008067          	ret

00000000800023f0 <handleSupervisorTrapEcall>:
void thread_dispatch();

ConsoleBuffer* Riscv::inputBuffer = nullptr;
ConsoleBuffer* Riscv::outputBuffer = nullptr;

extern "C" void handleSupervisorTrapEcall() {
    800023f0:	fc010113          	addi	sp,sp,-64
    800023f4:	02113c23          	sd	ra,56(sp)
    800023f8:	02813823          	sd	s0,48(sp)
    800023fc:	02913423          	sd	s1,40(sp)
    80002400:	03213023          	sd	s2,32(sp)
    80002404:	01313c23          	sd	s3,24(sp)
    80002408:	01413823          	sd	s4,16(sp)
    8000240c:	04010413          	addi	s0,sp,64
    uint64 oper;
    uint64 sepcVar;
    uint64 reg3;
    uint64 reg2;
    uint64 reg1;
    __asm__ volatile ("mv %[var], a3" : [var] "=r"(reg3));
    80002410:	00068a13          	mv	s4,a3
    __asm__ volatile ("mv %[var], a2" : [var] "=r"(reg2));
    80002414:	00060993          	mv	s3,a2
    __asm__ volatile ("mv %[var], a1" : [var] "=r"(reg1));
    80002418:	00058913          	mv	s2,a1
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));
    8000241c:	142027f3          	csrr	a5,scause
    }

    static uint64 r_sstatus()
    {
        uint64 volatile sstatus;
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002420:	10002773          	csrr	a4,sstatus
    80002424:	fce43023          	sd	a4,-64(s0)
        return sstatus;
    80002428:	fc043703          	ld	a4,-64(s0)

    uint64 volatile sstatus = Riscv::r_sstatus();
    8000242c:	fce43423          	sd	a4,-56(s0)

    // provera da li je ecall pozvan
    if (scauseVar == 0x08 || scauseVar == 0x09) {
    80002430:	ff878793          	addi	a5,a5,-8
    80002434:	00100713          	li	a4,1
    80002438:	02f77263          	bgeu	a4,a5,8000245c <handleSupervisorTrapEcall+0x6c>
    }
    else {
        // unexpected trap cause
    }

}
    8000243c:	03813083          	ld	ra,56(sp)
    80002440:	03013403          	ld	s0,48(sp)
    80002444:	02813483          	ld	s1,40(sp)
    80002448:	02013903          	ld	s2,32(sp)
    8000244c:	01813983          	ld	s3,24(sp)
    80002450:	01013a03          	ld	s4,16(sp)
    80002454:	04010113          	addi	sp,sp,64
    80002458:	00008067          	ret
        __asm__ volatile ("mv %[var], a0" : [var] "=r"(oper));
    8000245c:	00050793          	mv	a5,a0
        __asm__ volatile ("csrr %[var], sepc" : [var] "=r"(sepcVar));
    80002460:	141024f3          	csrr	s1,sepc
        if (oper == 0x01) {
    80002464:	08e78663          	beq	a5,a4,800024f0 <handleSupervisorTrapEcall+0x100>
        else if (oper == 0x02) {
    80002468:	00200713          	li	a4,2
    8000246c:	0ae78863          	beq	a5,a4,8000251c <handleSupervisorTrapEcall+0x12c>
        else if (oper == 0x11) {
    80002470:	01100713          	li	a4,17
    80002474:	0ce78663          	beq	a5,a4,80002540 <handleSupervisorTrapEcall+0x150>
        else if (oper == 0x12) {
    80002478:	01200713          	li	a4,18
    8000247c:	10e78063          	beq	a5,a4,8000257c <handleSupervisorTrapEcall+0x18c>
        else if (oper == 0x13) {
    80002480:	01300713          	li	a4,19
    80002484:	10e78663          	beq	a5,a4,80002590 <handleSupervisorTrapEcall+0x1a0>
        else if (oper == 0x14) {
    80002488:	01400713          	li	a4,20
    8000248c:	10e78c63          	beq	a5,a4,800025a4 <handleSupervisorTrapEcall+0x1b4>
        else if (oper == 0x15) {
    80002490:	01500713          	li	a4,21
    80002494:	12e78463          	beq	a5,a4,800025bc <handleSupervisorTrapEcall+0x1cc>
        else if (oper == 0x21) {
    80002498:	02100713          	li	a4,33
    8000249c:	16e78063          	beq	a5,a4,800025fc <handleSupervisorTrapEcall+0x20c>
        else if (oper == 0x22) {
    800024a0:	02200713          	li	a4,34
    800024a4:	16e78c63          	beq	a5,a4,8000261c <handleSupervisorTrapEcall+0x22c>
        else if (oper == 0x23) {
    800024a8:	02300713          	li	a4,35
    800024ac:	18e78263          	beq	a5,a4,80002630 <handleSupervisorTrapEcall+0x240>
        else if (oper == 0x24) {
    800024b0:	02400713          	li	a4,36
    800024b4:	18e78863          	beq	a5,a4,80002644 <handleSupervisorTrapEcall+0x254>
        else if (oper == 0x25) {
    800024b8:	02500713          	li	a4,37
    800024bc:	18e78e63          	beq	a5,a4,80002658 <handleSupervisorTrapEcall+0x268>
        else if (oper == 0x31) {
    800024c0:	03100713          	li	a4,49
    800024c4:	1ae78c63          	beq	a5,a4,8000267c <handleSupervisorTrapEcall+0x28c>
        else if (oper == 0x41) {
    800024c8:	04100713          	li	a4,65
    800024cc:	1ce78a63          	beq	a5,a4,800026a0 <handleSupervisorTrapEcall+0x2b0>
        else if (oper == 0x42) {
    800024d0:	04200713          	li	a4,66
    800024d4:	02e79e63          	bne	a5,a4,80002510 <handleSupervisorTrapEcall+0x120>
            Riscv::outputBuffer->putc(c);
    800024d8:	0ff97593          	andi	a1,s2,255
    800024dc:	00009517          	auipc	a0,0x9
    800024e0:	0f453503          	ld	a0,244(a0) # 8000b5d0 <_ZN5Riscv12outputBufferE>
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	88c080e7          	jalr	-1908(ra) # 80002d70 <_ZN13ConsoleBuffer4putcEc>
    800024ec:	0240006f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            void* returnValue = MemoryAllocator::get().mem_alloc(sz);
    800024f0:	00090593          	mv	a1,s2
    800024f4:	00009517          	auipc	a0,0x9
    800024f8:	0bc50513          	addi	a0,a0,188 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	35c080e7          	jalr	860(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    80002504:	00050513          	mv	a0,a0
            Riscv::w_sstatus(sstatus);
    80002508:	fc843783          	ld	a5,-56(s0)
    static void mc_sstatus(uint64 mask) {
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    }

    static void w_sstatus(uint64 sstatus) {
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000250c:	10079073          	csrw	sstatus,a5
        sepcVar += 4;
    80002510:	00448493          	addi	s1,s1,4
        __asm__ volatile ("csrw sepc, %[var]" : : [var] "r"(sepcVar));
    80002514:	14149073          	csrw	sepc,s1
    80002518:	f25ff06f          	j	8000243c <handleSupervisorTrapEcall+0x4c>
            __asm__ volatile ("mv %[var], a1" : [var] "=r"(ptr));
    8000251c:	00058593          	mv	a1,a1
            int returnValue = MemoryAllocator::get().mem_free(ptr);
    80002520:	00009517          	auipc	a0,0x9
    80002524:	09050513          	addi	a0,a0,144 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	444080e7          	jalr	1092(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    80002530:	00050513          	mv	a0,a0
            Riscv::w_sstatus(sstatus);
    80002534:	fc843783          	ld	a5,-56(s0)
    80002538:	10079073          	csrw	sstatus,a5
    }
    8000253c:	fd5ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            stack = (void*) MemoryAllocator::get().mem_alloc((DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80002540:	04000593          	li	a1,64
    80002544:	00009517          	auipc	a0,0x9
    80002548:	06c50513          	addi	a0,a0,108 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	30c080e7          	jalr	780(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    80002554:	00050693          	mv	a3,a0
            int returnValue = TCB::_thread_create(handl, body, arg, stack);
    80002558:	000a0613          	mv	a2,s4
    8000255c:	00098593          	mv	a1,s3
    80002560:	00090513          	mv	a0,s2
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	5cc080e7          	jalr	1484(ra) # 80001b30 <_ZN3TCB14_thread_createEPPS_PFvPvES2_S2_>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    8000256c:	00050513          	mv	a0,a0
            Riscv::w_sstatus(sstatus);
    80002570:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002574:	10079073          	csrw	sstatus,a5
    }
    80002578:	f99ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            TCB::_thread_exit();
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	7fc080e7          	jalr	2044(ra) # 80001d78 <_ZN3TCB12_thread_exitEv>
            Riscv::w_sstatus(sstatus);
    80002584:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002588:	10079073          	csrw	sstatus,a5
    }
    8000258c:	f85ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            TCB::_thread_dispatch();
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	750080e7          	jalr	1872(ra) # 80001ce0 <_ZN3TCB16_thread_dispatchEv>
            Riscv::w_sstatus(sstatus);
    80002598:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000259c:	10079073          	csrw	sstatus,a5
    }
    800025a0:	f71ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            TCB::_thread_join(handle);
    800025a4:	00090513          	mv	a0,s2
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	8c8080e7          	jalr	-1848(ra) # 80001e70 <_ZN3TCB12_thread_joinEPS_>
            Riscv::w_sstatus(sstatus);
    800025b0:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800025b4:	10079073          	csrw	sstatus,a5
    }
    800025b8:	f59ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            stack = (void*) MemoryAllocator::get().mem_alloc((DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    800025bc:	04000593          	li	a1,64
    800025c0:	00009517          	auipc	a0,0x9
    800025c4:	ff050513          	addi	a0,a0,-16 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	290080e7          	jalr	656(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    800025d0:	00050693          	mv	a3,a0
            TCB::_thread_createCPP(handl, body, arg, stack);
    800025d4:	000a0613          	mv	a2,s4
    800025d8:	00098593          	mv	a1,s3
    800025dc:	00090513          	mv	a0,s2
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	638080e7          	jalr	1592(ra) # 80001c18 <_ZN3TCB17_thread_createCPPEPPS_PFvPvES2_S2_>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(*handl));
    800025e8:	00093783          	ld	a5,0(s2)
    800025ec:	00078513          	mv	a0,a5
            Riscv::w_sstatus(sstatus);
    800025f0:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800025f4:	10079073          	csrw	sstatus,a5
    }
    800025f8:	f19ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            int returnValue = _Semaphore::sem_open(handl, in);
    800025fc:	0009859b          	sext.w	a1,s3
    80002600:	00090513          	mv	a0,s2
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	040080e7          	jalr	64(ra) # 80001644 <_ZN10_Semaphore8sem_openEPPS_j>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    8000260c:	00050513          	mv	a0,a0
            Riscv::w_sstatus(sstatus);
    80002610:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002614:	10079073          	csrw	sstatus,a5
    }
    80002618:	ef9ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            int returnValue = _Semaphore::sem_close(handl);
    8000261c:	00090513          	mv	a0,s2
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	094080e7          	jalr	148(ra) # 800016b4 <_ZN10_Semaphore9sem_closeEPS_>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    80002628:	00050513          	mv	a0,a0
    8000262c:	ee5ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            int returnValue = _Semaphore::sem_wait(handl);
    80002630:	00090513          	mv	a0,s2
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	1c8080e7          	jalr	456(ra) # 800017fc <_ZN10_Semaphore8sem_waitEPS_>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    8000263c:	00050513          	mv	a0,a0
    80002640:	ed1ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            int returnValue = _Semaphore::sem_signal(handl);
    80002644:	00090513          	mv	a0,s2
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	0fc080e7          	jalr	252(ra) # 80001744 <_ZN10_Semaphore10sem_signalEPS_>
            __asm__ volatile ("mv a0, %[var]" : : [var] "r"(returnValue));
    80002650:	00050513          	mv	a0,a0
    80002654:	ebdff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            Riscv::w_sstatus(sstatus);
    80002658:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000265c:	10079073          	csrw	sstatus,a5
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002660:	10000793          	li	a5,256
    80002664:	1007b073          	csrc	sstatus,a5
            __asm__ volatile ("csrw sepc, %0" : : "r" (sepcVar + 4));
    80002668:	00448493          	addi	s1,s1,4
    8000266c:	14149073          	csrw	sepc,s1

    static void mc_sip(uint64 mask) {
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002670:	00200793          	li	a5,2
    80002674:	1447b073          	csrc	sip,a5
            return;
    80002678:	dc5ff06f          	j	8000243c <handleSupervisorTrapEcall+0x4c>
            __asm__ volatile ("mv %[var], a1" : [var] "=r"(time));
    8000267c:	00058613          	mv	a2,a1
            SleepingThreadsList::getInstance().put(TCB::running, time);
    80002680:	00009797          	auipc	a5,0x9
    80002684:	ec87b783          	ld	a5,-312(a5) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002688:	0007b583          	ld	a1,0(a5)
    8000268c:	00009517          	auipc	a0,0x9
    80002690:	f4c50513          	addi	a0,a0,-180 # 8000b5d8 <_ZZN19SleepingThreadsList11getInstanceEvE8instance>
    80002694:	00000097          	auipc	ra,0x0
    80002698:	3f4080e7          	jalr	1012(ra) # 80002a88 <_ZN19SleepingThreadsList3putEP3TCBm>
    8000269c:	e75ff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>
            char returnValue = Riscv::inputBuffer->getc();
    800026a0:	00009517          	auipc	a0,0x9
    800026a4:	f2853503          	ld	a0,-216(a0) # 8000b5c8 <_ZN5Riscv11inputBufferE>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	668080e7          	jalr	1640(ra) # 80002d10 <_ZN13ConsoleBuffer4getcEv>
            __asm__ volatile("mv a0, %[var]" : : [var] "r"(returnValue));
    800026b0:	00050513          	mv	a0,a0
    800026b4:	e5dff06f          	j	80002510 <handleSupervisorTrapEcall+0x120>

00000000800026b8 <handleSupervisorTrapTimer>:

extern "C" void handleSupervisorTrapTimer() {
    uint64 scauseVar;
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));
    800026b8:	14202773          	csrr	a4,scause
    if (scauseVar == 0x8000000000000001UL) {
    800026bc:	fff00793          	li	a5,-1
    800026c0:	03f79793          	slli	a5,a5,0x3f
    800026c4:	00178793          	addi	a5,a5,1
    800026c8:	00f70463          	beq	a4,a5,800026d0 <handleSupervisorTrapTimer+0x18>
    800026cc:	00008067          	ret
extern "C" void handleSupervisorTrapTimer() {
    800026d0:	fd010113          	addi	sp,sp,-48
    800026d4:	02113423          	sd	ra,40(sp)
    800026d8:	02813023          	sd	s0,32(sp)
    800026dc:	00913c23          	sd	s1,24(sp)
    800026e0:	01213823          	sd	s2,16(sp)
    800026e4:	03010413          	addi	s0,sp,48
        static SleepingThreadsList instance;
        return instance;
    }

    SleepingNode* getHead() {
        return head;
    800026e8:	00009797          	auipc	a5,0x9
    800026ec:	ef07b783          	ld	a5,-272(a5) # 8000b5d8 <_ZZN19SleepingThreadsList11getInstanceEvE8instance>
        // interrupt; yes, cause code: supervisor software interrupt (timer)
        // TODO - proverava da li je thread gotov sa spavanjem.
        if (SleepingThreadsList::getInstance().getHead() != nullptr) {
    800026f0:	02078063          	beqz	a5,80002710 <handleSupervisorTrapTimer+0x58>
    }

    void decrement() {
        head->relTime--;
    800026f4:	0007b703          	ld	a4,0(a5)
    800026f8:	fff70713          	addi	a4,a4,-1
    800026fc:	00e7b023          	sd	a4,0(a5)
        return head;
    80002700:	00009797          	auipc	a5,0x9
    80002704:	ed87b783          	ld	a5,-296(a5) # 8000b5d8 <_ZZN19SleepingThreadsList11getInstanceEvE8instance>
            SleepingThreadsList::getInstance().decrement();
            if (SleepingThreadsList::getInstance().getHead()->relTime == 0) {
    80002708:	0007b783          	ld	a5,0(a5)
    8000270c:	04078663          	beqz	a5,80002758 <handleSupervisorTrapTimer+0xa0>
                SleepingThreadsList::getInstance().removeFinished();
            }
        }
        //__putc('t');
        TCB::timeSliceCounter++;
    80002710:	00009717          	auipc	a4,0x9
    80002714:	e1073703          	ld	a4,-496(a4) # 8000b520 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002718:	00073783          	ld	a5,0(a4)
    8000271c:	00178793          	addi	a5,a5,1
    80002720:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002724:	00009717          	auipc	a4,0x9
    80002728:	e2473703          	ld	a4,-476(a4) # 8000b548 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000272c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002730:	01073703          	ld	a4,16(a4)
    80002734:	02e7fc63          	bgeu	a5,a4,8000276c <handleSupervisorTrapTimer+0xb4>
            TCB::timeSliceCounter = 0;
            thread_dispatch();
            Riscv::w_sepc(sepc);
            Riscv::w_sstatus(sstatus);
        }
        asm volatile ("csrc sip, %[mask]" : : [mask] "r"(Riscv::SIP_SSIP));
    80002738:	00200793          	li	a5,2
    8000273c:	1447b073          	csrc	sip,a5
    }
    else {
        // unexpected trap cause
    }
}
    80002740:	02813083          	ld	ra,40(sp)
    80002744:	02013403          	ld	s0,32(sp)
    80002748:	01813483          	ld	s1,24(sp)
    8000274c:	01013903          	ld	s2,16(sp)
    80002750:	03010113          	addi	sp,sp,48
    80002754:	00008067          	ret
                SleepingThreadsList::getInstance().removeFinished();
    80002758:	00009517          	auipc	a0,0x9
    8000275c:	e8050513          	addi	a0,a0,-384 # 8000b5d8 <_ZZN19SleepingThreadsList11getInstanceEvE8instance>
    80002760:	00000097          	auipc	ra,0x0
    80002764:	400080e7          	jalr	1024(ra) # 80002b60 <_ZN19SleepingThreadsList14removeFinishedEv>
    80002768:	fa9ff06f          	j	80002710 <handleSupervisorTrapTimer+0x58>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000276c:	141027f3          	csrr	a5,sepc
    80002770:	fcf43c23          	sd	a5,-40(s0)
        return sepc;
    80002774:	fd843903          	ld	s2,-40(s0)
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002778:	100027f3          	csrr	a5,sstatus
    8000277c:	fcf43823          	sd	a5,-48(s0)
        return sstatus;
    80002780:	fd043483          	ld	s1,-48(s0)
            TCB::timeSliceCounter = 0;
    80002784:	00009797          	auipc	a5,0x9
    80002788:	d9c7b783          	ld	a5,-612(a5) # 8000b520 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000278c:	0007b023          	sd	zero,0(a5)
            thread_dispatch();
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	cc0080e7          	jalr	-832(ra) # 80001450 <_Z15thread_dispatchv>
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002798:	14191073          	csrw	sepc,s2
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000279c:	10049073          	csrw	sstatus,s1
    }
    800027a0:	f99ff06f          	j	80002738 <handleSupervisorTrapTimer+0x80>

00000000800027a4 <handleSupervisorTrapConsole>:

extern "C" void handleSupervisorTrapConsole() {
    uint64 scauseVar;
    __asm__ volatile ("csrr %[var], scause" : [var] "=r"(scauseVar));
    800027a4:	14202773          	csrr	a4,scause
    if (scauseVar == 0x8000000000000009UL) {
    800027a8:	fff00793          	li	a5,-1
    800027ac:	03f79793          	slli	a5,a5,0x3f
    800027b0:	00978793          	addi	a5,a5,9
    800027b4:	00f70463          	beq	a4,a5,800027bc <handleSupervisorTrapConsole+0x18>
    800027b8:	00008067          	ret
extern "C" void handleSupervisorTrapConsole() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
        // interrupt; yes, cause code: supervisor external interrupt (console)
        //console_handler();
        int console_irq = plic_claim();
    800027d0:	00004097          	auipc	ra,0x4
    800027d4:	524080e7          	jalr	1316(ra) # 80006cf4 <plic_claim>
    800027d8:	00050493          	mv	s1,a0
        while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	d347b783          	ld	a5,-716(a5) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027e4:	0007b783          	ld	a5,0(a5)
    800027e8:	0007c783          	lbu	a5,0(a5)
    800027ec:	0017f793          	andi	a5,a5,1
    800027f0:	02078463          	beqz	a5,80002818 <handleSupervisorTrapConsole+0x74>
            char c = (*(char*)CONSOLE_RX_DATA);
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	d147b783          	ld	a5,-748(a5) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x8>
    800027fc:	0007b783          	ld	a5,0(a5)
            Riscv::inputBuffer->putc(c);
    80002800:	0007c583          	lbu	a1,0(a5)
    80002804:	00009517          	auipc	a0,0x9
    80002808:	dc453503          	ld	a0,-572(a0) # 8000b5c8 <_ZN5Riscv11inputBufferE>
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	564080e7          	jalr	1380(ra) # 80002d70 <_ZN13ConsoleBuffer4putcEc>
        while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002814:	fc9ff06f          	j	800027dc <handleSupervisorTrapConsole+0x38>
        }
        plic_complete(console_irq);
    80002818:	00048513          	mv	a0,s1
    8000281c:	00004097          	auipc	ra,0x4
    80002820:	510080e7          	jalr	1296(ra) # 80006d2c <plic_complete>
    }

    else {
        // unexpected trap cause
    }
}
    80002824:	01813083          	ld	ra,24(sp)
    80002828:	01013403          	ld	s0,16(sp)
    8000282c:	00813483          	ld	s1,8(sp)
    80002830:	02010113          	addi	sp,sp,32
    80002834:	00008067          	ret

0000000080002838 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002844:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002848:	10200073          	sret
    8000284c:	00813403          	ld	s0,8(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/memoryallocator.hpp"

void* MemoryAllocator::mem_alloc(size_t sz) {
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813423          	sd	s0,8(sp)
    80002860:	01010413          	addi	s0,sp,16
    80002864:	00050713          	mv	a4,a0
    static bool firstUse = true;
    size_t blkCount = sz + ( sizeof(FreeMem) + 63 ) / MEM_BLOCK_SIZE; // ukupna memorija potrebna za alokaciju ukljucuje i zaglavlje
    80002868:	00158593          	addi	a1,a1,1

    // ukoliko se prvi put ulazi u ovu funkciju, inicijalizuje se freeMemHead sa pocetnim vrednostima
    if (firstUse) {
    8000286c:	00009797          	auipc	a5,0x9
    80002870:	ae47c783          	lbu	a5,-1308(a5) # 8000b350 <_ZZN15MemoryAllocator9mem_allocEmE8firstUse>
    80002874:	04078663          	beqz	a5,800028c0 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        freeMemHead = (FreeMem*) HEAP_START_ADDR;
    80002878:	00009697          	auipc	a3,0x9
    8000287c:	ca06b683          	ld	a3,-864(a3) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002880:	0006b783          	ld	a5,0(a3)
    80002884:	00f53023          	sd	a5,0(a0)
        freeMemHead->next = nullptr;
    80002888:	0007b023          	sd	zero,0(a5)
        freeMemHead->prev = nullptr;
    8000288c:	00053783          	ld	a5,0(a0)
    80002890:	0007b423          	sd	zero,8(a5)
        freeMemHead->size = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - (size_t)sizeof(FreeMem))/MEM_BLOCK_SIZE;
    80002894:	00009797          	auipc	a5,0x9
    80002898:	cbc7b783          	ld	a5,-836(a5) # 8000b550 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000289c:	0007b783          	ld	a5,0(a5)
    800028a0:	0006b683          	ld	a3,0(a3)
    800028a4:	40d787b3          	sub	a5,a5,a3
    800028a8:	fe878793          	addi	a5,a5,-24
    800028ac:	00053683          	ld	a3,0(a0)
    800028b0:	0067d793          	srli	a5,a5,0x6
    800028b4:	00f6b823          	sd	a5,16(a3)
        firstUse = false;
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	a8078c23          	sb	zero,-1384(a5) # 8000b350 <_ZZN15MemoryAllocator9mem_allocEmE8firstUse>
    }

    // traganje za prvi dovoljan prostor za alokaciju (first-fit)
    FreeMem* curr = freeMemHead, * prev = nullptr, * next = nullptr;
    800028c0:	00073503          	ld	a0,0(a4)
    void* returnValue = nullptr;
    while (curr != nullptr && curr->size < blkCount) {
    800028c4:	00050a63          	beqz	a0,800028d8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800028c8:	01053783          	ld	a5,16(a0)
    800028cc:	00b7f663          	bgeu	a5,a1,800028d8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        curr = curr->next;
    800028d0:	00053503          	ld	a0,0(a0)
    while (curr != nullptr && curr->size < blkCount) {
    800028d4:	ff1ff06f          	j	800028c4 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
    }

    if (curr == nullptr) return nullptr;
    800028d8:	04050e63          	beqz	a0,80002934 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    returnValue = curr;

    prev = curr->prev;
    800028dc:	00853603          	ld	a2,8(a0)
    next = curr->next;
    800028e0:	00053683          	ld	a3,0(a0)

    // slucaj da se ceo blok koristi za alociranje podatka
    if (curr->size == blkCount) {
    800028e4:	01053783          	ld	a5,16(a0)
    800028e8:	04b78c63          	beq	a5,a1,80002940 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        else prev->next = curr->next;
        if (next != nullptr) next->prev = prev;
    }

    // slucaj da je ceo blok veci od potrebnog za alokaciju
    if (curr->size > blkCount) {
    800028ec:	01053803          	ld	a6,16(a0)
    800028f0:	0505f063          	bgeu	a1,a6,80002930 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        size_t tmp = curr->size;
        curr->size = blkCount;
    800028f4:	00b53823          	sd	a1,16(a0)
        curr = curr + (blkCount * MEM_BLOCK_SIZE);
    800028f8:	00159793          	slli	a5,a1,0x1
    800028fc:	00b787b3          	add	a5,a5,a1
    80002900:	00979793          	slli	a5,a5,0x9
    80002904:	00f507b3          	add	a5,a0,a5
        curr->prev = prev;
    80002908:	00c7b423          	sd	a2,8(a5)
        curr->next = next;
    8000290c:	00d7b023          	sd	a3,0(a5)
        curr->size = tmp - blkCount;
    80002910:	40b805b3          	sub	a1,a6,a1
    80002914:	00b7b823          	sd	a1,16(a5)
        if (prev == nullptr) freeMemHead = curr;
    80002918:	04060263          	beqz	a2,8000295c <_ZN15MemoryAllocator9mem_allocEm+0x104>
        else {
            prev->next = curr;
    8000291c:	00f63023          	sd	a5,0(a2)
            curr->prev = prev;
    80002920:	00c7b423          	sd	a2,8(a5)
        }
        if (next == nullptr) curr->next = nullptr;
    80002924:	04068063          	beqz	a3,80002964 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
        else {
            curr->next = next;
    80002928:	00d7b023          	sd	a3,0(a5)
            next->prev = curr;
    8000292c:	00f6b423          	sd	a5,8(a3)
        }
    }
    return (void*)((uint64)returnValue + (uint64)sizeof(FreeMem));
    80002930:	01850513          	addi	a0,a0,24
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret
        if (prev == nullptr) freeMemHead = curr->next;
    80002940:	00060a63          	beqz	a2,80002954 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        else prev->next = curr->next;
    80002944:	00d63023          	sd	a3,0(a2)
        if (next != nullptr) next->prev = prev;
    80002948:	fa0682e3          	beqz	a3,800028ec <_ZN15MemoryAllocator9mem_allocEm+0x94>
    8000294c:	00c6b423          	sd	a2,8(a3)
    80002950:	f9dff06f          	j	800028ec <_ZN15MemoryAllocator9mem_allocEm+0x94>
        if (prev == nullptr) freeMemHead = curr->next;
    80002954:	00d73023          	sd	a3,0(a4)
    80002958:	ff1ff06f          	j	80002948 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        if (prev == nullptr) freeMemHead = curr;
    8000295c:	00f73023          	sd	a5,0(a4)
    80002960:	fc5ff06f          	j	80002924 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        if (next == nullptr) curr->next = nullptr;
    80002964:	0007b023          	sd	zero,0(a5)
    80002968:	fc9ff06f          	j	80002930 <_ZN15MemoryAllocator9mem_allocEm+0xd8>

000000008000296c <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *ptr) {
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    if (ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1;
    80002978:	00009797          	auipc	a5,0x9
    8000297c:	ba07b783          	ld	a5,-1120(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002980:	0007b783          	ld	a5,0(a5)
    80002984:	0ef5e263          	bltu	a1,a5,80002a68 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    80002988:	00009797          	auipc	a5,0x9
    8000298c:	bc87b783          	ld	a5,-1080(a5) # 8000b550 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002990:	0007b783          	ld	a5,0(a5)
    80002994:	0cf5fe63          	bgeu	a1,a5,80002a70 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    FreeMem* prev = nullptr;
    FreeMem* next = freeMemHead;
    80002998:	00053783          	ld	a5,0(a0)
    FreeMem* curr = (FreeMem*) ((uint64)ptr - sizeof(FreeMem));
    8000299c:	fe858693          	addi	a3,a1,-24

    // ukoliko je ceo HEAP popunjen oslobodi memoriju i koriguj freeMemHead
    if (freeMemHead == nullptr) {
    800029a0:	00078e63          	beqz	a5,800029bc <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    FreeMem* prev = nullptr;
    800029a4:	00000713          	li	a4,0
        freeMemHead = curr;
        return 0;
    }

    // potraga za poslednjim prethodnim segmentom od date adrese (ptr)
    while (next != nullptr && next < ptr) {
    800029a8:	02078463          	beqz	a5,800029d0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    800029ac:	02b7f263          	bgeu	a5,a1,800029d0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        prev = next;
    800029b0:	00078713          	mv	a4,a5
        next = next->next;
    800029b4:	0007b783          	ld	a5,0(a5)
    while (next != nullptr && next < ptr) {
    800029b8:	ff1ff06f          	j	800029a8 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
        curr->next = nullptr;
    800029bc:	fe05b423          	sd	zero,-24(a1)
        curr->prev = nullptr;
    800029c0:	0006b423          	sd	zero,8(a3)
        freeMemHead = curr;
    800029c4:	00d53023          	sd	a3,0(a0)
        return 0;
    800029c8:	00000513          	li	a0,0
    800029cc:	0440006f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    }

    // korigovanje vrednosti pokazivaca u listi
    if (prev) prev->next = curr;
    800029d0:	04070663          	beqz	a4,80002a1c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    800029d4:	00d73023          	sd	a3,0(a4)
    else freeMemHead = curr;

    if (next) next->prev = curr;
    800029d8:	00078463          	beqz	a5,800029e0 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    800029dc:	00d7b423          	sd	a3,8(a5)
    curr->next = next;
    800029e0:	fef5b423          	sd	a5,-24(a1)

    // spajanje slobodne memorije ukoliko je to moguce
    if (curr != nullptr) {
    800029e4:	00068a63          	beqz	a3,800029f8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
        if ((uint64)curr + curr->size * MEM_BLOCK_SIZE == (uint64)next){
    800029e8:	0106b503          	ld	a0,16(a3)
    800029ec:	00651613          	slli	a2,a0,0x6
    800029f0:	00c68633          	add	a2,a3,a2
    800029f4:	02f60863          	beq	a2,a5,80002a24 <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
            curr->next = next->next;
            if (next->next) next->next->prev = curr;
        }
    }

    if (prev != nullptr) {
    800029f8:	08070063          	beqz	a4,80002a78 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        if ((uint64)prev + prev->size * MEM_BLOCK_SIZE == (uint64)curr) {
    800029fc:	01073603          	ld	a2,16(a4)
    80002a00:	00661793          	slli	a5,a2,0x6
    80002a04:	00f707b3          	add	a5,a4,a5
    80002a08:	02f68e63          	beq	a3,a5,80002a44 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
            prev->next = curr->next;
            if (curr->next) curr->next->prev = prev;
        }
    }

    return 0;
    80002a0c:	00000513          	li	a0,0

    80002a10:	00813403          	ld	s0,8(sp)
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00008067          	ret
    else freeMemHead = curr;
    80002a1c:	00d53023          	sd	a3,0(a0)
    80002a20:	fb9ff06f          	j	800029d8 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
            curr->size = curr->size + next->size;
    80002a24:	0107b603          	ld	a2,16(a5)
    80002a28:	00c50533          	add	a0,a0,a2
    80002a2c:	00a6b823          	sd	a0,16(a3)
            curr->next = next->next;
    80002a30:	0007b783          	ld	a5,0(a5)
    80002a34:	fef5b423          	sd	a5,-24(a1)
            if (next->next) next->next->prev = curr;
    80002a38:	fc0780e3          	beqz	a5,800029f8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    80002a3c:	00d7b423          	sd	a3,8(a5)
    80002a40:	fb9ff06f          	j	800029f8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
            prev->size = prev->size + curr->size;
    80002a44:	0106b783          	ld	a5,16(a3)
    80002a48:	00f60633          	add	a2,a2,a5
    80002a4c:	00c73823          	sd	a2,16(a4)
            prev->next = curr->next;
    80002a50:	fe85b783          	ld	a5,-24(a1)
    80002a54:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = prev;
    80002a58:	02078463          	beqz	a5,80002a80 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
    80002a5c:	00e7b423          	sd	a4,8(a5)
    return 0;
    80002a60:	00000513          	li	a0,0
    80002a64:	fadff06f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    if (ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1;
    80002a68:	fff00513          	li	a0,-1
    80002a6c:	fa5ff06f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    80002a70:	fff00513          	li	a0,-1
    80002a74:	f9dff06f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    return 0;
    80002a78:	00000513          	li	a0,0
    80002a7c:	f95ff06f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    80002a80:	00000513          	li	a0,0
    80002a84:	f8dff06f          	j	80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>

0000000080002a88 <_ZN19SleepingThreadsList3putEP3TCBm>:
#include "../h/sleepingThreadsList.hpp"

void thread_dispatch();

void SleepingThreadsList::put(TCB* ptr, time_t time) {
    80002a88:	fd010113          	addi	sp,sp,-48
    80002a8c:	02113423          	sd	ra,40(sp)
    80002a90:	02813023          	sd	s0,32(sp)
    80002a94:	00913c23          	sd	s1,24(sp)
    80002a98:	01213823          	sd	s2,16(sp)
    80002a9c:	01313423          	sd	s3,8(sp)
    80002aa0:	03010413          	addi	s0,sp,48
    80002aa4:	00050993          	mv	s3,a0
    80002aa8:	00058913          	mv	s2,a1
    80002aac:	00060493          	mv	s1,a2
        sleeping = b;
    80002ab0:	00100793          	li	a5,1
    80002ab4:	04f581a3          	sb	a5,67(a1)
    ptr->setSleeping(true);
    SleepingNode* newNode = new SleepingNode;
    80002ab8:	01800513          	li	a0,24
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	4a0080e7          	jalr	1184(ra) # 80001f5c <_Znwm>
    if (head == nullptr) {
    80002ac4:	0009b603          	ld	a2,0(s3)
    80002ac8:	00060863          	beqz	a2,80002ad8 <_ZN19SleepingThreadsList3putEP3TCBm+0x50>
        newNode->next = nullptr;
        newNode->tcb = ptr;
        newNode->relTime = time;
    }
    else {
        SleepingNode* curr = head;
    80002acc:	00060793          	mv	a5,a2
        SleepingNode* prev = nullptr;
    80002ad0:	00000693          	li	a3,0
    80002ad4:	0240006f          	j	80002af8 <_ZN19SleepingThreadsList3putEP3TCBm+0x70>
        head = newNode;
    80002ad8:	00a9b023          	sd	a0,0(s3)
        newNode->next = nullptr;
    80002adc:	00053823          	sd	zero,16(a0)
        newNode->tcb = ptr;
    80002ae0:	01253423          	sd	s2,8(a0)
        newNode->relTime = time;
    80002ae4:	00953023          	sd	s1,0(a0)
    80002ae8:	0480006f          	j	80002b30 <_ZN19SleepingThreadsList3putEP3TCBm+0xa8>
        while (curr != nullptr && curr->relTime < time) {
            prev = curr;
            curr = curr->next;
            time -= prev->relTime;
    80002aec:	40e484b3          	sub	s1,s1,a4
            prev = curr;
    80002af0:	00078693          	mv	a3,a5
            curr = curr->next;
    80002af4:	0107b783          	ld	a5,16(a5)
        while (curr != nullptr && curr->relTime < time) {
    80002af8:	00078663          	beqz	a5,80002b04 <_ZN19SleepingThreadsList3putEP3TCBm+0x7c>
    80002afc:	0007b703          	ld	a4,0(a5)
    80002b00:	fe9766e3          	bltu	a4,s1,80002aec <_ZN19SleepingThreadsList3putEP3TCBm+0x64>
        }
        if (prev) {
    80002b04:	04068863          	beqz	a3,80002b54 <_ZN19SleepingThreadsList3putEP3TCBm+0xcc>
            newNode->next = prev->next;
    80002b08:	0106b783          	ld	a5,16(a3)
    80002b0c:	00f53823          	sd	a5,16(a0)
            prev->next = newNode;
    80002b10:	00a6b823          	sd	a0,16(a3)
        else {
            newNode->next = head;
            head = newNode;
        }

        newNode->tcb = ptr;
    80002b14:	01253423          	sd	s2,8(a0)
        newNode->relTime = time;
    80002b18:	00953023          	sd	s1,0(a0)

        if (newNode->next) {
    80002b1c:	01053783          	ld	a5,16(a0)
    80002b20:	00078863          	beqz	a5,80002b30 <_ZN19SleepingThreadsList3putEP3TCBm+0xa8>
            newNode->next->relTime -= newNode->relTime;
    80002b24:	0007b603          	ld	a2,0(a5)
    80002b28:	409604b3          	sub	s1,a2,s1
    80002b2c:	0097b023          	sd	s1,0(a5)
        }
    }
    thread_dispatch();
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	920080e7          	jalr	-1760(ra) # 80001450 <_Z15thread_dispatchv>
}
    80002b38:	02813083          	ld	ra,40(sp)
    80002b3c:	02013403          	ld	s0,32(sp)
    80002b40:	01813483          	ld	s1,24(sp)
    80002b44:	01013903          	ld	s2,16(sp)
    80002b48:	00813983          	ld	s3,8(sp)
    80002b4c:	03010113          	addi	sp,sp,48
    80002b50:	00008067          	ret
            newNode->next = head;
    80002b54:	00c53823          	sd	a2,16(a0)
            head = newNode;
    80002b58:	00a9b023          	sd	a0,0(s3)
    80002b5c:	fb9ff06f          	j	80002b14 <_ZN19SleepingThreadsList3putEP3TCBm+0x8c>

0000000080002b60 <_ZN19SleepingThreadsList14removeFinishedEv>:

void SleepingThreadsList::removeFinished() {
    80002b60:	fe010113          	addi	sp,sp,-32
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	00813823          	sd	s0,16(sp)
    80002b6c:	00913423          	sd	s1,8(sp)
    80002b70:	01213023          	sd	s2,0(sp)
    80002b74:	02010413          	addi	s0,sp,32
    80002b78:	00050913          	mv	s2,a0
    while (head != nullptr && head->relTime == 0) {
    80002b7c:	00093583          	ld	a1,0(s2)
    80002b80:	04058663          	beqz	a1,80002bcc <_ZN19SleepingThreadsList14removeFinishedEv+0x6c>
    80002b84:	0005b783          	ld	a5,0(a1)
    80002b88:	04079263          	bnez	a5,80002bcc <_ZN19SleepingThreadsList14removeFinishedEv+0x6c>
        TCB* ptr = head->tcb;
    80002b8c:	0085b483          	ld	s1,8(a1)
        SleepingNode* removed = head;
        head = head->next;
    80002b90:	0105b783          	ld	a5,16(a1)
    80002b94:	00f93023          	sd	a5,0(s2)
        MemoryAllocator::get().mem_free((void*)removed);
    80002b98:	00009517          	auipc	a0,0x9
    80002b9c:	a1850513          	addi	a0,a0,-1512 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	dcc080e7          	jalr	-564(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    80002ba8:	040481a3          	sb	zero,67(s1)
        return finished;
    80002bac:	0404c783          	lbu	a5,64(s1)
        ptr->setSleeping(false);
        if (!ptr->isFinished()) Scheduler::getScheduler().put(ptr);
    80002bb0:	fc0796e3          	bnez	a5,80002b7c <_ZN19SleepingThreadsList14removeFinishedEv+0x1c>
    80002bb4:	00048593          	mv	a1,s1
    80002bb8:	00009517          	auipc	a0,0x9
    80002bbc:	9e850513          	addi	a0,a0,-1560 # 8000b5a0 <_ZZN9Scheduler12getSchedulerEvE8instance>
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	088080e7          	jalr	136(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
    80002bc8:	fb5ff06f          	j	80002b7c <_ZN19SleepingThreadsList14removeFinishedEv+0x1c>
    }
    80002bcc:	01813083          	ld	ra,24(sp)
    80002bd0:	01013403          	ld	s0,16(sp)
    80002bd4:	00813483          	ld	s1,8(sp)
    80002bd8:	00013903          	ld	s2,0(sp)
    80002bdc:	02010113          	addi	sp,sp,32
    80002be0:	00008067          	ret

0000000080002be4 <_ZN9Scheduler3getEv>:
#include "../h/scheduler.hpp"



TCB* Scheduler::get() {
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32

    //__putc('g');
    if (!head) return nullptr;
    80002bf8:	00053583          	ld	a1,0(a0)
    80002bfc:	04058263          	beqz	a1,80002c40 <_ZN9Scheduler3getEv+0x5c>

    TCB* tcb = head->tcb;
    80002c00:	0005b483          	ld	s1,0(a1)
    Node* node = head;
    head = head->next;
    80002c04:	0085b783          	ld	a5,8(a1)
    80002c08:	00f53023          	sd	a5,0(a0)
    if (head == nullptr) tail = nullptr;
    80002c0c:	02078663          	beqz	a5,80002c38 <_ZN9Scheduler3getEv+0x54>

    MemoryAllocator::get().mem_free(node);
    80002c10:	00009517          	auipc	a0,0x9
    80002c14:	9a050513          	addi	a0,a0,-1632 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	d54080e7          	jalr	-684(ra) # 8000296c <_ZN15MemoryAllocator8mem_freeEPv>
    return tcb;
}
    80002c20:	00048513          	mv	a0,s1
    80002c24:	01813083          	ld	ra,24(sp)
    80002c28:	01013403          	ld	s0,16(sp)
    80002c2c:	00813483          	ld	s1,8(sp)
    80002c30:	02010113          	addi	sp,sp,32
    80002c34:	00008067          	ret
    if (head == nullptr) tail = nullptr;
    80002c38:	00053423          	sd	zero,8(a0)
    80002c3c:	fd5ff06f          	j	80002c10 <_ZN9Scheduler3getEv+0x2c>
    if (!head) return nullptr;
    80002c40:	00058493          	mv	s1,a1
    80002c44:	fddff06f          	j	80002c20 <_ZN9Scheduler3getEv+0x3c>

0000000080002c48 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* ptr) {
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	01213023          	sd	s2,0(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    80002c60:	00050493          	mv	s1,a0
    80002c64:	00058913          	mv	s2,a1
    //__putc('p');
    Node* newNode = (Node*) MemoryAllocator::get().mem_alloc((sizeof(Node) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80002c68:	00100593          	li	a1,1
    80002c6c:	00009517          	auipc	a0,0x9
    80002c70:	94450513          	addi	a0,a0,-1724 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	be4080e7          	jalr	-1052(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    newNode->tcb = ptr;
    80002c7c:	01253023          	sd	s2,0(a0)
    newNode->next = nullptr;
    80002c80:	00053423          	sd	zero,8(a0)

    if (!tail) head = newNode;
    80002c84:	0084b783          	ld	a5,8(s1)
    80002c88:	02078263          	beqz	a5,80002cac <_ZN9Scheduler3putEP3TCB+0x64>
    else tail->next = newNode;
    80002c8c:	00a7b423          	sd	a0,8(a5)
    tail = newNode;
    80002c90:	00a4b423          	sd	a0,8(s1)
    80002c94:	01813083          	ld	ra,24(sp)
    80002c98:	01013403          	ld	s0,16(sp)
    80002c9c:	00813483          	ld	s1,8(sp)
    80002ca0:	00013903          	ld	s2,0(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret
    if (!tail) head = newNode;
    80002cac:	00a4b023          	sd	a0,0(s1)
    80002cb0:	fe1ff06f          	j	80002c90 <_ZN9Scheduler3putEP3TCB+0x48>

0000000080002cb4 <_ZN13ConsoleBufferC1Ev>:
#include "../h/_console.hpp"

ConsoleBuffer::ConsoleBuffer(): head(0), tail(0), count(0) {
    80002cb4:	fe010113          	addi	sp,sp,-32
    80002cb8:	00113c23          	sd	ra,24(sp)
    80002cbc:	00813823          	sd	s0,16(sp)
    80002cc0:	00913423          	sd	s1,8(sp)
    80002cc4:	02010413          	addi	s0,sp,32
    80002cc8:	00050493          	mv	s1,a0
    80002ccc:	10053423          	sd	zero,264(a0)
    80002cd0:	10053823          	sd	zero,272(a0)
    80002cd4:	10053c23          	sd	zero,280(a0)
    itemAvailable = (_Semaphore**)MemoryAllocator::get().mem_alloc((sizeof(_Semaphore*) + MEM_BLOCK_SIZE + 1) / MEM_BLOCK_SIZE);
    80002cd8:	00100593          	li	a1,1
    80002cdc:	00009517          	auipc	a0,0x9
    80002ce0:	8d450513          	addi	a0,a0,-1836 # 8000b5b0 <_ZZN15MemoryAllocator3getEvE8instance>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	b74080e7          	jalr	-1164(ra) # 80002858 <_ZN15MemoryAllocator9mem_allocEm>
    80002cec:	10a4b023          	sd	a0,256(s1)
    _Semaphore::sem_open(itemAvailable, 0);
    80002cf0:	00000593          	li	a1,0
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	950080e7          	jalr	-1712(ra) # 80001644 <_ZN10_Semaphore8sem_openEPPS_j>
}
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	02010113          	addi	sp,sp,32
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN13ConsoleBuffer4getcEv>:

char ConsoleBuffer::getc() { // Jun 2022 (samo bez mutex i kbint_mask())
    80002d10:	fe010113          	addi	sp,sp,-32
    80002d14:	00113c23          	sd	ra,24(sp)
    80002d18:	00813823          	sd	s0,16(sp)
    80002d1c:	00913423          	sd	s1,8(sp)
    80002d20:	02010413          	addi	s0,sp,32
    80002d24:	00050493          	mv	s1,a0
    _Semaphore::sem_wait(*itemAvailable);
    80002d28:	10053783          	ld	a5,256(a0)
    80002d2c:	0007b503          	ld	a0,0(a5)
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	acc080e7          	jalr	-1332(ra) # 800017fc <_ZN10_Semaphore8sem_waitEPS_>
    char c = buffer[head];
    80002d38:	1084b783          	ld	a5,264(s1)
    80002d3c:	00f48733          	add	a4,s1,a5
    80002d40:	00074503          	lbu	a0,0(a4)
    head = (head + 1) % KB_SIZE;
    80002d44:	00178793          	addi	a5,a5,1
    80002d48:	0ff7f793          	andi	a5,a5,255
    80002d4c:	10f4b423          	sd	a5,264(s1)
    count--;
    80002d50:	1184b783          	ld	a5,280(s1)
    80002d54:	fff78793          	addi	a5,a5,-1
    80002d58:	10f4bc23          	sd	a5,280(s1)
    return c;
}
    80002d5c:	01813083          	ld	ra,24(sp)
    80002d60:	01013403          	ld	s0,16(sp)
    80002d64:	00813483          	ld	s1,8(sp)
    80002d68:	02010113          	addi	sp,sp,32
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN13ConsoleBuffer4putcEc>:

void ConsoleBuffer::putc(char c) { // Jun 2022 (samo bez mutex i kbint_unmask())
    if (count < KB_SIZE) {
    80002d70:	11853783          	ld	a5,280(a0)
    80002d74:	0ff00713          	li	a4,255
    80002d78:	00f77463          	bgeu	a4,a5,80002d80 <_ZN13ConsoleBuffer4putcEc+0x10>
    80002d7c:	00008067          	ret
void ConsoleBuffer::putc(char c) { // Jun 2022 (samo bez mutex i kbint_unmask())
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00113423          	sd	ra,8(sp)
    80002d88:	00813023          	sd	s0,0(sp)
    80002d8c:	01010413          	addi	s0,sp,16
        buffer[tail] = c;
    80002d90:	11053703          	ld	a4,272(a0)
    80002d94:	00e506b3          	add	a3,a0,a4
    80002d98:	00b68023          	sb	a1,0(a3)
        tail = (tail + 1) % KB_SIZE;
    80002d9c:	00170713          	addi	a4,a4,1
    80002da0:	0ff77713          	andi	a4,a4,255
    80002da4:	10e53823          	sd	a4,272(a0)
        count++;
    80002da8:	00178793          	addi	a5,a5,1
    80002dac:	10f53c23          	sd	a5,280(a0)
        _Semaphore::sem_signal(*itemAvailable);
    80002db0:	10053783          	ld	a5,256(a0)
    80002db4:	0007b503          	ld	a0,0(a5)
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	98c080e7          	jalr	-1652(ra) # 80001744 <_ZN10_Semaphore10sem_signalEPS_>
    }
    80002dc0:	00813083          	ld	ra,8(sp)
    80002dc4:	00013403          	ld	s0,0(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002dd0:	fe010113          	addi	sp,sp,-32
    80002dd4:	00113c23          	sd	ra,24(sp)
    80002dd8:	00813823          	sd	s0,16(sp)
    80002ddc:	00913423          	sd	s1,8(sp)
    80002de0:	01213023          	sd	s2,0(sp)
    80002de4:	02010413          	addi	s0,sp,32
    80002de8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002dec:	00000913          	li	s2,0
    80002df0:	00c0006f          	j	80002dfc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002df4:	ffffe097          	auipc	ra,0xffffe
    80002df8:	65c080e7          	jalr	1628(ra) # 80001450 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002dfc:	ffffe097          	auipc	ra,0xffffe
    80002e00:	7c0080e7          	jalr	1984(ra) # 800015bc <_Z4getcv>
    80002e04:	0005059b          	sext.w	a1,a0
    80002e08:	01b00793          	li	a5,27
    80002e0c:	02f58a63          	beq	a1,a5,80002e40 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002e10:	0084b503          	ld	a0,8(s1)
    80002e14:	00003097          	auipc	ra,0x3
    80002e18:	400080e7          	jalr	1024(ra) # 80006214 <_ZN6Buffer3putEi>
        i++;
    80002e1c:	0019071b          	addiw	a4,s2,1
    80002e20:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e24:	0004a683          	lw	a3,0(s1)
    80002e28:	0026979b          	slliw	a5,a3,0x2
    80002e2c:	00d787bb          	addw	a5,a5,a3
    80002e30:	0017979b          	slliw	a5,a5,0x1
    80002e34:	02f767bb          	remw	a5,a4,a5
    80002e38:	fc0792e3          	bnez	a5,80002dfc <_ZL16producerKeyboardPv+0x2c>
    80002e3c:	fb9ff06f          	j	80002df4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e40:	00100793          	li	a5,1
    80002e44:	00008717          	auipc	a4,0x8
    80002e48:	78f72e23          	sw	a5,1948(a4) # 8000b5e0 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e4c:	02100593          	li	a1,33
    80002e50:	0084b503          	ld	a0,8(s1)
    80002e54:	00003097          	auipc	ra,0x3
    80002e58:	3c0080e7          	jalr	960(ra) # 80006214 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e5c:	0104b503          	ld	a0,16(s1)
    80002e60:	ffffe097          	auipc	ra,0xffffe
    80002e64:	708080e7          	jalr	1800(ra) # 80001568 <_Z10sem_signalP10_Semaphore>
}
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	00013903          	ld	s2,0(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret

0000000080002e80 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	01213023          	sd	s2,0(sp)
    80002e94:	02010413          	addi	s0,sp,32
    80002e98:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e9c:	00000913          	li	s2,0
    80002ea0:	00c0006f          	j	80002eac <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	5ac080e7          	jalr	1452(ra) # 80001450 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002eac:	00008797          	auipc	a5,0x8
    80002eb0:	7347a783          	lw	a5,1844(a5) # 8000b5e0 <_ZL9threadEnd>
    80002eb4:	02079e63          	bnez	a5,80002ef0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002eb8:	0004a583          	lw	a1,0(s1)
    80002ebc:	0305859b          	addiw	a1,a1,48
    80002ec0:	0084b503          	ld	a0,8(s1)
    80002ec4:	00003097          	auipc	ra,0x3
    80002ec8:	350080e7          	jalr	848(ra) # 80006214 <_ZN6Buffer3putEi>
        i++;
    80002ecc:	0019071b          	addiw	a4,s2,1
    80002ed0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ed4:	0004a683          	lw	a3,0(s1)
    80002ed8:	0026979b          	slliw	a5,a3,0x2
    80002edc:	00d787bb          	addw	a5,a5,a3
    80002ee0:	0017979b          	slliw	a5,a5,0x1
    80002ee4:	02f767bb          	remw	a5,a4,a5
    80002ee8:	fc0792e3          	bnez	a5,80002eac <_ZL8producerPv+0x2c>
    80002eec:	fb9ff06f          	j	80002ea4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ef0:	0104b503          	ld	a0,16(s1)
    80002ef4:	ffffe097          	auipc	ra,0xffffe
    80002ef8:	674080e7          	jalr	1652(ra) # 80001568 <_Z10sem_signalP10_Semaphore>
}
    80002efc:	01813083          	ld	ra,24(sp)
    80002f00:	01013403          	ld	s0,16(sp)
    80002f04:	00813483          	ld	s1,8(sp)
    80002f08:	00013903          	ld	s2,0(sp)
    80002f0c:	02010113          	addi	sp,sp,32
    80002f10:	00008067          	ret

0000000080002f14 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f14:	fd010113          	addi	sp,sp,-48
    80002f18:	02113423          	sd	ra,40(sp)
    80002f1c:	02813023          	sd	s0,32(sp)
    80002f20:	00913c23          	sd	s1,24(sp)
    80002f24:	01213823          	sd	s2,16(sp)
    80002f28:	01313423          	sd	s3,8(sp)
    80002f2c:	03010413          	addi	s0,sp,48
    80002f30:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f34:	00000993          	li	s3,0
    80002f38:	01c0006f          	j	80002f54 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	514080e7          	jalr	1300(ra) # 80001450 <_Z15thread_dispatchv>
    80002f44:	0500006f          	j	80002f94 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f48:	00a00513          	li	a0,10
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	69c080e7          	jalr	1692(ra) # 800015e8 <_Z4putcc>
    while (!threadEnd) {
    80002f54:	00008797          	auipc	a5,0x8
    80002f58:	68c7a783          	lw	a5,1676(a5) # 8000b5e0 <_ZL9threadEnd>
    80002f5c:	06079063          	bnez	a5,80002fbc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f60:	00893503          	ld	a0,8(s2)
    80002f64:	00003097          	auipc	ra,0x3
    80002f68:	340080e7          	jalr	832(ra) # 800062a4 <_ZN6Buffer3getEv>
        i++;
    80002f6c:	0019849b          	addiw	s1,s3,1
    80002f70:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f74:	0ff57513          	andi	a0,a0,255
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	670080e7          	jalr	1648(ra) # 800015e8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f80:	00092703          	lw	a4,0(s2)
    80002f84:	0027179b          	slliw	a5,a4,0x2
    80002f88:	00e787bb          	addw	a5,a5,a4
    80002f8c:	02f4e7bb          	remw	a5,s1,a5
    80002f90:	fa0786e3          	beqz	a5,80002f3c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f94:	05000793          	li	a5,80
    80002f98:	02f4e4bb          	remw	s1,s1,a5
    80002f9c:	fa049ce3          	bnez	s1,80002f54 <_ZL8consumerPv+0x40>
    80002fa0:	fa9ff06f          	j	80002f48 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002fa4:	00893503          	ld	a0,8(s2)
    80002fa8:	00003097          	auipc	ra,0x3
    80002fac:	2fc080e7          	jalr	764(ra) # 800062a4 <_ZN6Buffer3getEv>
        putc(key);
    80002fb0:	0ff57513          	andi	a0,a0,255
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	634080e7          	jalr	1588(ra) # 800015e8 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fbc:	00893503          	ld	a0,8(s2)
    80002fc0:	00003097          	auipc	ra,0x3
    80002fc4:	370080e7          	jalr	880(ra) # 80006330 <_ZN6Buffer6getCntEv>
    80002fc8:	fca04ee3          	bgtz	a0,80002fa4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fcc:	01093503          	ld	a0,16(s2)
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	598080e7          	jalr	1432(ra) # 80001568 <_Z10sem_signalP10_Semaphore>
}
    80002fd8:	02813083          	ld	ra,40(sp)
    80002fdc:	02013403          	ld	s0,32(sp)
    80002fe0:	01813483          	ld	s1,24(sp)
    80002fe4:	01013903          	ld	s2,16(sp)
    80002fe8:	00813983          	ld	s3,8(sp)
    80002fec:	03010113          	addi	sp,sp,48
    80002ff0:	00008067          	ret

0000000080002ff4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002ff4:	f9010113          	addi	sp,sp,-112
    80002ff8:	06113423          	sd	ra,104(sp)
    80002ffc:	06813023          	sd	s0,96(sp)
    80003000:	04913c23          	sd	s1,88(sp)
    80003004:	05213823          	sd	s2,80(sp)
    80003008:	05313423          	sd	s3,72(sp)
    8000300c:	05413023          	sd	s4,64(sp)
    80003010:	03513c23          	sd	s5,56(sp)
    80003014:	03613823          	sd	s6,48(sp)
    80003018:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000301c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003020:	00006517          	auipc	a0,0x6
    80003024:	00050513          	mv	a0,a0
    80003028:	00002097          	auipc	ra,0x2
    8000302c:	220080e7          	jalr	544(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80003030:	01e00593          	li	a1,30
    80003034:	fa040493          	addi	s1,s0,-96
    80003038:	00048513          	mv	a0,s1
    8000303c:	00002097          	auipc	ra,0x2
    80003040:	294080e7          	jalr	660(ra) # 800052d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003044:	00048513          	mv	a0,s1
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	360080e7          	jalr	864(ra) # 800053a8 <_Z11stringToIntPKc>
    80003050:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003054:	00006517          	auipc	a0,0x6
    80003058:	fec50513          	addi	a0,a0,-20 # 80009040 <CONSOLE_STATUS+0x30>
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	1ec080e7          	jalr	492(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80003064:	01e00593          	li	a1,30
    80003068:	00048513          	mv	a0,s1
    8000306c:	00002097          	auipc	ra,0x2
    80003070:	264080e7          	jalr	612(ra) # 800052d0 <_Z9getStringPci>
    n = stringToInt(input);
    80003074:	00048513          	mv	a0,s1
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	330080e7          	jalr	816(ra) # 800053a8 <_Z11stringToIntPKc>
    80003080:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003084:	00006517          	auipc	a0,0x6
    80003088:	fdc50513          	addi	a0,a0,-36 # 80009060 <CONSOLE_STATUS+0x50>
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	1bc080e7          	jalr	444(ra) # 80005248 <_Z11printStringPKc>
    80003094:	00000613          	li	a2,0
    80003098:	00a00593          	li	a1,10
    8000309c:	00090513          	mv	a0,s2
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	358080e7          	jalr	856(ra) # 800053f8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800030a8:	00006517          	auipc	a0,0x6
    800030ac:	fd050513          	addi	a0,a0,-48 # 80009078 <CONSOLE_STATUS+0x68>
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	198080e7          	jalr	408(ra) # 80005248 <_Z11printStringPKc>
    800030b8:	00000613          	li	a2,0
    800030bc:	00a00593          	li	a1,10
    800030c0:	00048513          	mv	a0,s1
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	334080e7          	jalr	820(ra) # 800053f8 <_Z8printIntiii>
    printString(".\n");
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	fc450513          	addi	a0,a0,-60 # 80009090 <CONSOLE_STATUS+0x80>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	174080e7          	jalr	372(ra) # 80005248 <_Z11printStringPKc>
    if(threadNum > n) {
    800030dc:	0324c463          	blt	s1,s2,80003104 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030e0:	03205c63          	blez	s2,80003118 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030e4:	03800513          	li	a0,56
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	e74080e7          	jalr	-396(ra) # 80001f5c <_Znwm>
    800030f0:	00050a13          	mv	s4,a0
    800030f4:	00048593          	mv	a1,s1
    800030f8:	00003097          	auipc	ra,0x3
    800030fc:	080080e7          	jalr	128(ra) # 80006178 <_ZN6BufferC1Ei>
    80003100:	0300006f          	j	80003130 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003104:	00006517          	auipc	a0,0x6
    80003108:	f9450513          	addi	a0,a0,-108 # 80009098 <CONSOLE_STATUS+0x88>
    8000310c:	00002097          	auipc	ra,0x2
    80003110:	13c080e7          	jalr	316(ra) # 80005248 <_Z11printStringPKc>
        return;
    80003114:	0140006f          	j	80003128 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003118:	00006517          	auipc	a0,0x6
    8000311c:	fc050513          	addi	a0,a0,-64 # 800090d8 <CONSOLE_STATUS+0xc8>
    80003120:	00002097          	auipc	ra,0x2
    80003124:	128080e7          	jalr	296(ra) # 80005248 <_Z11printStringPKc>
        return;
    80003128:	000b0113          	mv	sp,s6
    8000312c:	1500006f          	j	8000327c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003130:	00000593          	li	a1,0
    80003134:	00008517          	auipc	a0,0x8
    80003138:	4b450513          	addi	a0,a0,1204 # 8000b5e8 <_ZL10waitForAll>
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	398080e7          	jalr	920(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
    thread_t threads[threadNum];
    80003144:	00391793          	slli	a5,s2,0x3
    80003148:	00f78793          	addi	a5,a5,15
    8000314c:	ff07f793          	andi	a5,a5,-16
    80003150:	40f10133          	sub	sp,sp,a5
    80003154:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003158:	0019071b          	addiw	a4,s2,1
    8000315c:	00171793          	slli	a5,a4,0x1
    80003160:	00e787b3          	add	a5,a5,a4
    80003164:	00379793          	slli	a5,a5,0x3
    80003168:	00f78793          	addi	a5,a5,15
    8000316c:	ff07f793          	andi	a5,a5,-16
    80003170:	40f10133          	sub	sp,sp,a5
    80003174:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003178:	00191613          	slli	a2,s2,0x1
    8000317c:	012607b3          	add	a5,a2,s2
    80003180:	00379793          	slli	a5,a5,0x3
    80003184:	00f987b3          	add	a5,s3,a5
    80003188:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000318c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003190:	00008717          	auipc	a4,0x8
    80003194:	45873703          	ld	a4,1112(a4) # 8000b5e8 <_ZL10waitForAll>
    80003198:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000319c:	00078613          	mv	a2,a5
    800031a0:	00000597          	auipc	a1,0x0
    800031a4:	d7458593          	addi	a1,a1,-652 # 80002f14 <_ZL8consumerPv>
    800031a8:	f9840513          	addi	a0,s0,-104
    800031ac:	ffffe097          	auipc	ra,0xffffe
    800031b0:	244080e7          	jalr	580(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031b4:	00000493          	li	s1,0
    800031b8:	0280006f          	j	800031e0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031bc:	00000597          	auipc	a1,0x0
    800031c0:	c1458593          	addi	a1,a1,-1004 # 80002dd0 <_ZL16producerKeyboardPv>
                      data + i);
    800031c4:	00179613          	slli	a2,a5,0x1
    800031c8:	00f60633          	add	a2,a2,a5
    800031cc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031d0:	00c98633          	add	a2,s3,a2
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	21c080e7          	jalr	540(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031dc:	0014849b          	addiw	s1,s1,1
    800031e0:	0524d263          	bge	s1,s2,80003224 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031e4:	00149793          	slli	a5,s1,0x1
    800031e8:	009787b3          	add	a5,a5,s1
    800031ec:	00379793          	slli	a5,a5,0x3
    800031f0:	00f987b3          	add	a5,s3,a5
    800031f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031f8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031fc:	00008717          	auipc	a4,0x8
    80003200:	3ec73703          	ld	a4,1004(a4) # 8000b5e8 <_ZL10waitForAll>
    80003204:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003208:	00048793          	mv	a5,s1
    8000320c:	00349513          	slli	a0,s1,0x3
    80003210:	00aa8533          	add	a0,s5,a0
    80003214:	fa9054e3          	blez	s1,800031bc <_Z22producerConsumer_C_APIv+0x1c8>
    80003218:	00000597          	auipc	a1,0x0
    8000321c:	c6858593          	addi	a1,a1,-920 # 80002e80 <_ZL8producerPv>
    80003220:	fa5ff06f          	j	800031c4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	22c080e7          	jalr	556(ra) # 80001450 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000322c:	00000493          	li	s1,0
    80003230:	00994e63          	blt	s2,s1,8000324c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003234:	00008517          	auipc	a0,0x8
    80003238:	3b453503          	ld	a0,948(a0) # 8000b5e8 <_ZL10waitForAll>
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	2fc080e7          	jalr	764(ra) # 80001538 <_Z8sem_waitP10_Semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80003244:	0014849b          	addiw	s1,s1,1
    80003248:	fe9ff06f          	j	80003230 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000324c:	00008517          	auipc	a0,0x8
    80003250:	39c53503          	ld	a0,924(a0) # 8000b5e8 <_ZL10waitForAll>
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	2b4080e7          	jalr	692(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
    delete buffer;
    8000325c:	000a0e63          	beqz	s4,80003278 <_Z22producerConsumer_C_APIv+0x284>
    80003260:	000a0513          	mv	a0,s4
    80003264:	00003097          	auipc	ra,0x3
    80003268:	154080e7          	jalr	340(ra) # 800063b8 <_ZN6BufferD1Ev>
    8000326c:	000a0513          	mv	a0,s4
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	d14080e7          	jalr	-748(ra) # 80001f84 <_ZdlPv>
    80003278:	000b0113          	mv	sp,s6

}
    8000327c:	f9040113          	addi	sp,s0,-112
    80003280:	06813083          	ld	ra,104(sp)
    80003284:	06013403          	ld	s0,96(sp)
    80003288:	05813483          	ld	s1,88(sp)
    8000328c:	05013903          	ld	s2,80(sp)
    80003290:	04813983          	ld	s3,72(sp)
    80003294:	04013a03          	ld	s4,64(sp)
    80003298:	03813a83          	ld	s5,56(sp)
    8000329c:	03013b03          	ld	s6,48(sp)
    800032a0:	07010113          	addi	sp,sp,112
    800032a4:	00008067          	ret
    800032a8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800032ac:	000a0513          	mv	a0,s4
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	cd4080e7          	jalr	-812(ra) # 80001f84 <_ZdlPv>
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00009097          	auipc	ra,0x9
    800032c0:	43c080e7          	jalr	1084(ra) # 8000c6f8 <_Unwind_Resume>

00000000800032c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    800032dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032e0:	00100793          	li	a5,1
    800032e4:	02a7f863          	bgeu	a5,a0,80003314 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032e8:	00a00793          	li	a5,10
    800032ec:	02f577b3          	remu	a5,a0,a5
    800032f0:	02078e63          	beqz	a5,8000332c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032f4:	fff48513          	addi	a0,s1,-1
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	fcc080e7          	jalr	-52(ra) # 800032c4 <_ZL9fibonaccim>
    80003300:	00050913          	mv	s2,a0
    80003304:	ffe48513          	addi	a0,s1,-2
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	fbc080e7          	jalr	-68(ra) # 800032c4 <_ZL9fibonaccim>
    80003310:	00a90533          	add	a0,s2,a0
}
    80003314:	01813083          	ld	ra,24(sp)
    80003318:	01013403          	ld	s0,16(sp)
    8000331c:	00813483          	ld	s1,8(sp)
    80003320:	00013903          	ld	s2,0(sp)
    80003324:	02010113          	addi	sp,sp,32
    80003328:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	124080e7          	jalr	292(ra) # 80001450 <_Z15thread_dispatchv>
    80003334:	fc1ff06f          	j	800032f4 <_ZL9fibonaccim+0x30>

0000000080003338 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003338:	fe010113          	addi	sp,sp,-32
    8000333c:	00113c23          	sd	ra,24(sp)
    80003340:	00813823          	sd	s0,16(sp)
    80003344:	00913423          	sd	s1,8(sp)
    80003348:	01213023          	sd	s2,0(sp)
    8000334c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003350:	00000913          	li	s2,0
    80003354:	0380006f          	j	8000338c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { }
            thread_dispatch();
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	0f8080e7          	jalr	248(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003360:	00148493          	addi	s1,s1,1
    80003364:	000027b7          	lui	a5,0x2
    80003368:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000336c:	0097ee63          	bltu	a5,s1,80003388 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { }
    80003370:	00000713          	li	a4,0
    80003374:	000077b7          	lui	a5,0x7
    80003378:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000337c:	fce7eee3          	bltu	a5,a4,80003358 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003380:	00170713          	addi	a4,a4,1
    80003384:	ff1ff06f          	j	80003374 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003388:	00190913          	addi	s2,s2,1
    8000338c:	00900793          	li	a5,9
    80003390:	0527e063          	bltu	a5,s2,800033d0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003394:	00006517          	auipc	a0,0x6
    80003398:	d7450513          	addi	a0,a0,-652 # 80009108 <CONSOLE_STATUS+0xf8>
    8000339c:	00002097          	auipc	ra,0x2
    800033a0:	eac080e7          	jalr	-340(ra) # 80005248 <_Z11printStringPKc>
    800033a4:	00000613          	li	a2,0
    800033a8:	00a00593          	li	a1,10
    800033ac:	0009051b          	sext.w	a0,s2
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	048080e7          	jalr	72(ra) # 800053f8 <_Z8printIntiii>
    800033b8:	00006517          	auipc	a0,0x6
    800033bc:	fa050513          	addi	a0,a0,-96 # 80009358 <CONSOLE_STATUS+0x348>
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	e88080e7          	jalr	-376(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033c8:	00000493          	li	s1,0
    800033cc:	f99ff06f          	j	80003364 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	d4050513          	addi	a0,a0,-704 # 80009110 <CONSOLE_STATUS+0x100>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	e70080e7          	jalr	-400(ra) # 80005248 <_Z11printStringPKc>
    finishedA = true;
    800033e0:	00100793          	li	a5,1
    800033e4:	00008717          	auipc	a4,0x8
    800033e8:	20f70623          	sb	a5,524(a4) # 8000b5f0 <_ZL9finishedA>
}
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	00013903          	ld	s2,0(sp)
    800033fc:	02010113          	addi	sp,sp,32
    80003400:	00008067          	ret

0000000080003404 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00813823          	sd	s0,16(sp)
    80003410:	00913423          	sd	s1,8(sp)
    80003414:	01213023          	sd	s2,0(sp)
    80003418:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000341c:	00000913          	li	s2,0
    80003420:	0380006f          	j	80003458 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { }
            thread_dispatch();
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	02c080e7          	jalr	44(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000342c:	00148493          	addi	s1,s1,1
    80003430:	000027b7          	lui	a5,0x2
    80003434:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003438:	0097ee63          	bltu	a5,s1,80003454 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { }
    8000343c:	00000713          	li	a4,0
    80003440:	000077b7          	lui	a5,0x7
    80003444:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003448:	fce7eee3          	bltu	a5,a4,80003424 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000344c:	00170713          	addi	a4,a4,1
    80003450:	ff1ff06f          	j	80003440 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003454:	00190913          	addi	s2,s2,1
    80003458:	00f00793          	li	a5,15
    8000345c:	0527e063          	bltu	a5,s2,8000349c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003460:	00006517          	auipc	a0,0x6
    80003464:	cc050513          	addi	a0,a0,-832 # 80009120 <CONSOLE_STATUS+0x110>
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	de0080e7          	jalr	-544(ra) # 80005248 <_Z11printStringPKc>
    80003470:	00000613          	li	a2,0
    80003474:	00a00593          	li	a1,10
    80003478:	0009051b          	sext.w	a0,s2
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	f7c080e7          	jalr	-132(ra) # 800053f8 <_Z8printIntiii>
    80003484:	00006517          	auipc	a0,0x6
    80003488:	ed450513          	addi	a0,a0,-300 # 80009358 <CONSOLE_STATUS+0x348>
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	dbc080e7          	jalr	-580(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003494:	00000493          	li	s1,0
    80003498:	f99ff06f          	j	80003430 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	c8c50513          	addi	a0,a0,-884 # 80009128 <CONSOLE_STATUS+0x118>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	da4080e7          	jalr	-604(ra) # 80005248 <_Z11printStringPKc>
    finishedB = true;
    800034ac:	00100793          	li	a5,1
    800034b0:	00008717          	auipc	a4,0x8
    800034b4:	14f700a3          	sb	a5,321(a4) # 8000b5f1 <_ZL9finishedB>
    thread_dispatch();
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	f98080e7          	jalr	-104(ra) # 80001450 <_Z15thread_dispatchv>
}
    800034c0:	01813083          	ld	ra,24(sp)
    800034c4:	01013403          	ld	s0,16(sp)
    800034c8:	00813483          	ld	s1,8(sp)
    800034cc:	00013903          	ld	s2,0(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret

00000000800034d8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	00813823          	sd	s0,16(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	01213023          	sd	s2,0(sp)
    800034ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034f0:	00000493          	li	s1,0
    800034f4:	0400006f          	j	80003534 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034f8:	00006517          	auipc	a0,0x6
    800034fc:	c4050513          	addi	a0,a0,-960 # 80009138 <CONSOLE_STATUS+0x128>
    80003500:	00002097          	auipc	ra,0x2
    80003504:	d48080e7          	jalr	-696(ra) # 80005248 <_Z11printStringPKc>
    80003508:	00000613          	li	a2,0
    8000350c:	00a00593          	li	a1,10
    80003510:	00048513          	mv	a0,s1
    80003514:	00002097          	auipc	ra,0x2
    80003518:	ee4080e7          	jalr	-284(ra) # 800053f8 <_Z8printIntiii>
    8000351c:	00006517          	auipc	a0,0x6
    80003520:	e3c50513          	addi	a0,a0,-452 # 80009358 <CONSOLE_STATUS+0x348>
    80003524:	00002097          	auipc	ra,0x2
    80003528:	d24080e7          	jalr	-732(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000352c:	0014849b          	addiw	s1,s1,1
    80003530:	0ff4f493          	andi	s1,s1,255
    80003534:	00200793          	li	a5,2
    80003538:	fc97f0e3          	bgeu	a5,s1,800034f8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	c0450513          	addi	a0,a0,-1020 # 80009140 <CONSOLE_STATUS+0x130>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	d04080e7          	jalr	-764(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000354c:	00700313          	li	t1,7
    thread_dispatch();
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	f00080e7          	jalr	-256(ra) # 80001450 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003558:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	bf450513          	addi	a0,a0,-1036 # 80009150 <CONSOLE_STATUS+0x140>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	ce4080e7          	jalr	-796(ra) # 80005248 <_Z11printStringPKc>
    8000356c:	00000613          	li	a2,0
    80003570:	00a00593          	li	a1,10
    80003574:	0009051b          	sext.w	a0,s2
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	e80080e7          	jalr	-384(ra) # 800053f8 <_Z8printIntiii>
    80003580:	00006517          	auipc	a0,0x6
    80003584:	dd850513          	addi	a0,a0,-552 # 80009358 <CONSOLE_STATUS+0x348>
    80003588:	00002097          	auipc	ra,0x2
    8000358c:	cc0080e7          	jalr	-832(ra) # 80005248 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003590:	00c00513          	li	a0,12
    80003594:	00000097          	auipc	ra,0x0
    80003598:	d30080e7          	jalr	-720(ra) # 800032c4 <_ZL9fibonaccim>
    8000359c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	bb850513          	addi	a0,a0,-1096 # 80009158 <CONSOLE_STATUS+0x148>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	ca0080e7          	jalr	-864(ra) # 80005248 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	0009051b          	sext.w	a0,s2
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	e3c080e7          	jalr	-452(ra) # 800053f8 <_Z8printIntiii>
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	d9450513          	addi	a0,a0,-620 # 80009358 <CONSOLE_STATUS+0x348>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	c7c080e7          	jalr	-900(ra) # 80005248 <_Z11printStringPKc>
    800035d4:	0400006f          	j	80003614 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035d8:	00006517          	auipc	a0,0x6
    800035dc:	b6050513          	addi	a0,a0,-1184 # 80009138 <CONSOLE_STATUS+0x128>
    800035e0:	00002097          	auipc	ra,0x2
    800035e4:	c68080e7          	jalr	-920(ra) # 80005248 <_Z11printStringPKc>
    800035e8:	00000613          	li	a2,0
    800035ec:	00a00593          	li	a1,10
    800035f0:	00048513          	mv	a0,s1
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	e04080e7          	jalr	-508(ra) # 800053f8 <_Z8printIntiii>
    800035fc:	00006517          	auipc	a0,0x6
    80003600:	d5c50513          	addi	a0,a0,-676 # 80009358 <CONSOLE_STATUS+0x348>
    80003604:	00002097          	auipc	ra,0x2
    80003608:	c44080e7          	jalr	-956(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000360c:	0014849b          	addiw	s1,s1,1
    80003610:	0ff4f493          	andi	s1,s1,255
    80003614:	00500793          	li	a5,5
    80003618:	fc97f0e3          	bgeu	a5,s1,800035d8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	af450513          	addi	a0,a0,-1292 # 80009110 <CONSOLE_STATUS+0x100>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	c24080e7          	jalr	-988(ra) # 80005248 <_Z11printStringPKc>
    finishedC = true;
    8000362c:	00100793          	li	a5,1
    80003630:	00008717          	auipc	a4,0x8
    80003634:	fcf70123          	sb	a5,-62(a4) # 8000b5f2 <_ZL9finishedC>
    thread_dispatch();
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	e18080e7          	jalr	-488(ra) # 80001450 <_Z15thread_dispatchv>
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003658:	fe010113          	addi	sp,sp,-32
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00913423          	sd	s1,8(sp)
    80003668:	01213023          	sd	s2,0(sp)
    8000366c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003670:	00a00493          	li	s1,10
    80003674:	0400006f          	j	800036b4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	af050513          	addi	a0,a0,-1296 # 80009168 <CONSOLE_STATUS+0x158>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	bc8080e7          	jalr	-1080(ra) # 80005248 <_Z11printStringPKc>
    80003688:	00000613          	li	a2,0
    8000368c:	00a00593          	li	a1,10
    80003690:	00048513          	mv	a0,s1
    80003694:	00002097          	auipc	ra,0x2
    80003698:	d64080e7          	jalr	-668(ra) # 800053f8 <_Z8printIntiii>
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	cbc50513          	addi	a0,a0,-836 # 80009358 <CONSOLE_STATUS+0x348>
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	ba4080e7          	jalr	-1116(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800036ac:	0014849b          	addiw	s1,s1,1
    800036b0:	0ff4f493          	andi	s1,s1,255
    800036b4:	00c00793          	li	a5,12
    800036b8:	fc97f0e3          	bgeu	a5,s1,80003678 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	ab450513          	addi	a0,a0,-1356 # 80009170 <CONSOLE_STATUS+0x160>
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	b84080e7          	jalr	-1148(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036cc:	00500313          	li	t1,5
    thread_dispatch();
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	d80080e7          	jalr	-640(ra) # 80001450 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036d8:	01000513          	li	a0,16
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	be8080e7          	jalr	-1048(ra) # 800032c4 <_ZL9fibonaccim>
    800036e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036e8:	00006517          	auipc	a0,0x6
    800036ec:	a9850513          	addi	a0,a0,-1384 # 80009180 <CONSOLE_STATUS+0x170>
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	b58080e7          	jalr	-1192(ra) # 80005248 <_Z11printStringPKc>
    800036f8:	00000613          	li	a2,0
    800036fc:	00a00593          	li	a1,10
    80003700:	0009051b          	sext.w	a0,s2
    80003704:	00002097          	auipc	ra,0x2
    80003708:	cf4080e7          	jalr	-780(ra) # 800053f8 <_Z8printIntiii>
    8000370c:	00006517          	auipc	a0,0x6
    80003710:	c4c50513          	addi	a0,a0,-948 # 80009358 <CONSOLE_STATUS+0x348>
    80003714:	00002097          	auipc	ra,0x2
    80003718:	b34080e7          	jalr	-1228(ra) # 80005248 <_Z11printStringPKc>
    8000371c:	0400006f          	j	8000375c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003720:	00006517          	auipc	a0,0x6
    80003724:	a4850513          	addi	a0,a0,-1464 # 80009168 <CONSOLE_STATUS+0x158>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	b20080e7          	jalr	-1248(ra) # 80005248 <_Z11printStringPKc>
    80003730:	00000613          	li	a2,0
    80003734:	00a00593          	li	a1,10
    80003738:	00048513          	mv	a0,s1
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	cbc080e7          	jalr	-836(ra) # 800053f8 <_Z8printIntiii>
    80003744:	00006517          	auipc	a0,0x6
    80003748:	c1450513          	addi	a0,a0,-1004 # 80009358 <CONSOLE_STATUS+0x348>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	afc080e7          	jalr	-1284(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003754:	0014849b          	addiw	s1,s1,1
    80003758:	0ff4f493          	andi	s1,s1,255
    8000375c:	00f00793          	li	a5,15
    80003760:	fc97f0e3          	bgeu	a5,s1,80003720 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003764:	00006517          	auipc	a0,0x6
    80003768:	a2c50513          	addi	a0,a0,-1492 # 80009190 <CONSOLE_STATUS+0x180>
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	adc080e7          	jalr	-1316(ra) # 80005248 <_Z11printStringPKc>
    finishedD = true;
    80003774:	00100793          	li	a5,1
    80003778:	00008717          	auipc	a4,0x8
    8000377c:	e6f70da3          	sb	a5,-389(a4) # 8000b5f3 <_ZL9finishedD>
    thread_dispatch();
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	cd0080e7          	jalr	-816(ra) # 80001450 <_Z15thread_dispatchv>
}
    80003788:	01813083          	ld	ra,24(sp)
    8000378c:	01013403          	ld	s0,16(sp)
    80003790:	00813483          	ld	s1,8(sp)
    80003794:	00013903          	ld	s2,0(sp)
    80003798:	02010113          	addi	sp,sp,32
    8000379c:	00008067          	ret

00000000800037a0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800037a0:	fc010113          	addi	sp,sp,-64
    800037a4:	02113c23          	sd	ra,56(sp)
    800037a8:	02813823          	sd	s0,48(sp)
    800037ac:	02913423          	sd	s1,40(sp)
    800037b0:	03213023          	sd	s2,32(sp)
    800037b4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037b8:	02000513          	li	a0,32
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	7a0080e7          	jalr	1952(ra) # 80001f5c <_Znwm>
    800037c4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	968080e7          	jalr	-1688(ra) # 80002130 <_ZN6ThreadC1Ev>
    800037d0:	00008797          	auipc	a5,0x8
    800037d4:	b9878793          	addi	a5,a5,-1128 # 8000b368 <_ZTV7WorkerA+0x10>
    800037d8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037dc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037e0:	00006517          	auipc	a0,0x6
    800037e4:	9c050513          	addi	a0,a0,-1600 # 800091a0 <CONSOLE_STATUS+0x190>
    800037e8:	00002097          	auipc	ra,0x2
    800037ec:	a60080e7          	jalr	-1440(ra) # 80005248 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037f0:	02000513          	li	a0,32
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	768080e7          	jalr	1896(ra) # 80001f5c <_Znwm>
    800037fc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	930080e7          	jalr	-1744(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003808:	00008797          	auipc	a5,0x8
    8000380c:	b8878793          	addi	a5,a5,-1144 # 8000b390 <_ZTV7WorkerB+0x10>
    80003810:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003814:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003818:	00006517          	auipc	a0,0x6
    8000381c:	9a050513          	addi	a0,a0,-1632 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003820:	00002097          	auipc	ra,0x2
    80003824:	a28080e7          	jalr	-1496(ra) # 80005248 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003828:	02000513          	li	a0,32
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	730080e7          	jalr	1840(ra) # 80001f5c <_Znwm>
    80003834:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	8f8080e7          	jalr	-1800(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003840:	00008797          	auipc	a5,0x8
    80003844:	b7878793          	addi	a5,a5,-1160 # 8000b3b8 <_ZTV7WorkerC+0x10>
    80003848:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000384c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003850:	00006517          	auipc	a0,0x6
    80003854:	98050513          	addi	a0,a0,-1664 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	9f0080e7          	jalr	-1552(ra) # 80005248 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003860:	02000513          	li	a0,32
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	6f8080e7          	jalr	1784(ra) # 80001f5c <_Znwm>
    8000386c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	8c0080e7          	jalr	-1856(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003878:	00008797          	auipc	a5,0x8
    8000387c:	b6878793          	addi	a5,a5,-1176 # 8000b3e0 <_ZTV7WorkerD+0x10>
    80003880:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003884:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003888:	00006517          	auipc	a0,0x6
    8000388c:	96050513          	addi	a0,a0,-1696 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003890:	00002097          	auipc	ra,0x2
    80003894:	9b8080e7          	jalr	-1608(ra) # 80005248 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003898:	00000493          	li	s1,0
    8000389c:	00300793          	li	a5,3
    800038a0:	0297c663          	blt	a5,s1,800038cc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800038a4:	00349793          	slli	a5,s1,0x3
    800038a8:	fe040713          	addi	a4,s0,-32
    800038ac:	00f707b3          	add	a5,a4,a5
    800038b0:	fe07b503          	ld	a0,-32(a5)
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	818080e7          	jalr	-2024(ra) # 800020cc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038bc:	0014849b          	addiw	s1,s1,1
    800038c0:	fddff06f          	j	8000389c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	7e0080e7          	jalr	2016(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038cc:	00008797          	auipc	a5,0x8
    800038d0:	d247c783          	lbu	a5,-732(a5) # 8000b5f0 <_ZL9finishedA>
    800038d4:	fe0788e3          	beqz	a5,800038c4 <_Z20Threads_CPP_API_testv+0x124>
    800038d8:	00008797          	auipc	a5,0x8
    800038dc:	d197c783          	lbu	a5,-743(a5) # 8000b5f1 <_ZL9finishedB>
    800038e0:	fe0782e3          	beqz	a5,800038c4 <_Z20Threads_CPP_API_testv+0x124>
    800038e4:	00008797          	auipc	a5,0x8
    800038e8:	d0e7c783          	lbu	a5,-754(a5) # 8000b5f2 <_ZL9finishedC>
    800038ec:	fc078ce3          	beqz	a5,800038c4 <_Z20Threads_CPP_API_testv+0x124>
    800038f0:	00008797          	auipc	a5,0x8
    800038f4:	d037c783          	lbu	a5,-765(a5) # 8000b5f3 <_ZL9finishedD>
    800038f8:	fc0786e3          	beqz	a5,800038c4 <_Z20Threads_CPP_API_testv+0x124>
    800038fc:	fc040493          	addi	s1,s0,-64
    80003900:	0080006f          	j	80003908 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003904:	00848493          	addi	s1,s1,8
    80003908:	fe040793          	addi	a5,s0,-32
    8000390c:	08f48663          	beq	s1,a5,80003998 <_Z20Threads_CPP_API_testv+0x1f8>
    80003910:	0004b503          	ld	a0,0(s1)
    80003914:	fe0508e3          	beqz	a0,80003904 <_Z20Threads_CPP_API_testv+0x164>
    80003918:	00053783          	ld	a5,0(a0)
    8000391c:	0087b783          	ld	a5,8(a5)
    80003920:	000780e7          	jalr	a5
    80003924:	fe1ff06f          	j	80003904 <_Z20Threads_CPP_API_testv+0x164>
    80003928:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000392c:	00048513          	mv	a0,s1
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	654080e7          	jalr	1620(ra) # 80001f84 <_ZdlPv>
    80003938:	00090513          	mv	a0,s2
    8000393c:	00009097          	auipc	ra,0x9
    80003940:	dbc080e7          	jalr	-580(ra) # 8000c6f8 <_Unwind_Resume>
    80003944:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003948:	00048513          	mv	a0,s1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	638080e7          	jalr	1592(ra) # 80001f84 <_ZdlPv>
    80003954:	00090513          	mv	a0,s2
    80003958:	00009097          	auipc	ra,0x9
    8000395c:	da0080e7          	jalr	-608(ra) # 8000c6f8 <_Unwind_Resume>
    80003960:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003964:	00048513          	mv	a0,s1
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	61c080e7          	jalr	1564(ra) # 80001f84 <_ZdlPv>
    80003970:	00090513          	mv	a0,s2
    80003974:	00009097          	auipc	ra,0x9
    80003978:	d84080e7          	jalr	-636(ra) # 8000c6f8 <_Unwind_Resume>
    8000397c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003980:	00048513          	mv	a0,s1
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	600080e7          	jalr	1536(ra) # 80001f84 <_ZdlPv>
    8000398c:	00090513          	mv	a0,s2
    80003990:	00009097          	auipc	ra,0x9
    80003994:	d68080e7          	jalr	-664(ra) # 8000c6f8 <_Unwind_Resume>
}
    80003998:	03813083          	ld	ra,56(sp)
    8000399c:	03013403          	ld	s0,48(sp)
    800039a0:	02813483          	ld	s1,40(sp)
    800039a4:	02013903          	ld	s2,32(sp)
    800039a8:	04010113          	addi	sp,sp,64
    800039ac:	00008067          	ret

00000000800039b0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00113423          	sd	ra,8(sp)
    800039b8:	00813023          	sd	s0,0(sp)
    800039bc:	01010413          	addi	s0,sp,16
    800039c0:	00008797          	auipc	a5,0x8
    800039c4:	9a878793          	addi	a5,a5,-1624 # 8000b368 <_ZTV7WorkerA+0x10>
    800039c8:	00f53023          	sd	a5,0(a0)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	5e0080e7          	jalr	1504(ra) # 80001fac <_ZN6ThreadD1Ev>
    800039d4:	00813083          	ld	ra,8(sp)
    800039d8:	00013403          	ld	s0,0(sp)
    800039dc:	01010113          	addi	sp,sp,16
    800039e0:	00008067          	ret

00000000800039e4 <_ZN7WorkerAD0Ev>:
    800039e4:	fe010113          	addi	sp,sp,-32
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	00813823          	sd	s0,16(sp)
    800039f0:	00913423          	sd	s1,8(sp)
    800039f4:	02010413          	addi	s0,sp,32
    800039f8:	00050493          	mv	s1,a0
    800039fc:	00008797          	auipc	a5,0x8
    80003a00:	96c78793          	addi	a5,a5,-1684 # 8000b368 <_ZTV7WorkerA+0x10>
    80003a04:	00f53023          	sd	a5,0(a0)
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	5a4080e7          	jalr	1444(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003a10:	00048513          	mv	a0,s1
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	570080e7          	jalr	1392(ra) # 80001f84 <_ZdlPv>
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret

0000000080003a30 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00113423          	sd	ra,8(sp)
    80003a38:	00813023          	sd	s0,0(sp)
    80003a3c:	01010413          	addi	s0,sp,16
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	95078793          	addi	a5,a5,-1712 # 8000b390 <_ZTV7WorkerB+0x10>
    80003a48:	00f53023          	sd	a5,0(a0)
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	560080e7          	jalr	1376(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003a54:	00813083          	ld	ra,8(sp)
    80003a58:	00013403          	ld	s0,0(sp)
    80003a5c:	01010113          	addi	sp,sp,16
    80003a60:	00008067          	ret

0000000080003a64 <_ZN7WorkerBD0Ev>:
    80003a64:	fe010113          	addi	sp,sp,-32
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00913423          	sd	s1,8(sp)
    80003a74:	02010413          	addi	s0,sp,32
    80003a78:	00050493          	mv	s1,a0
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	91478793          	addi	a5,a5,-1772 # 8000b390 <_ZTV7WorkerB+0x10>
    80003a84:	00f53023          	sd	a5,0(a0)
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	524080e7          	jalr	1316(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003a90:	00048513          	mv	a0,s1
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	4f0080e7          	jalr	1264(ra) # 80001f84 <_ZdlPv>
    80003a9c:	01813083          	ld	ra,24(sp)
    80003aa0:	01013403          	ld	s0,16(sp)
    80003aa4:	00813483          	ld	s1,8(sp)
    80003aa8:	02010113          	addi	sp,sp,32
    80003aac:	00008067          	ret

0000000080003ab0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ab0:	ff010113          	addi	sp,sp,-16
    80003ab4:	00113423          	sd	ra,8(sp)
    80003ab8:	00813023          	sd	s0,0(sp)
    80003abc:	01010413          	addi	s0,sp,16
    80003ac0:	00008797          	auipc	a5,0x8
    80003ac4:	8f878793          	addi	a5,a5,-1800 # 8000b3b8 <_ZTV7WorkerC+0x10>
    80003ac8:	00f53023          	sd	a5,0(a0)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	4e0080e7          	jalr	1248(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003ad4:	00813083          	ld	ra,8(sp)
    80003ad8:	00013403          	ld	s0,0(sp)
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret

0000000080003ae4 <_ZN7WorkerCD0Ev>:
    80003ae4:	fe010113          	addi	sp,sp,-32
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00913423          	sd	s1,8(sp)
    80003af4:	02010413          	addi	s0,sp,32
    80003af8:	00050493          	mv	s1,a0
    80003afc:	00008797          	auipc	a5,0x8
    80003b00:	8bc78793          	addi	a5,a5,-1860 # 8000b3b8 <_ZTV7WorkerC+0x10>
    80003b04:	00f53023          	sd	a5,0(a0)
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	4a4080e7          	jalr	1188(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003b10:	00048513          	mv	a0,s1
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	470080e7          	jalr	1136(ra) # 80001f84 <_ZdlPv>
    80003b1c:	01813083          	ld	ra,24(sp)
    80003b20:	01013403          	ld	s0,16(sp)
    80003b24:	00813483          	ld	s1,8(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00113423          	sd	ra,8(sp)
    80003b38:	00813023          	sd	s0,0(sp)
    80003b3c:	01010413          	addi	s0,sp,16
    80003b40:	00008797          	auipc	a5,0x8
    80003b44:	8a078793          	addi	a5,a5,-1888 # 8000b3e0 <_ZTV7WorkerD+0x10>
    80003b48:	00f53023          	sd	a5,0(a0)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	460080e7          	jalr	1120(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003b54:	00813083          	ld	ra,8(sp)
    80003b58:	00013403          	ld	s0,0(sp)
    80003b5c:	01010113          	addi	sp,sp,16
    80003b60:	00008067          	ret

0000000080003b64 <_ZN7WorkerDD0Ev>:
    80003b64:	fe010113          	addi	sp,sp,-32
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	00813823          	sd	s0,16(sp)
    80003b70:	00913423          	sd	s1,8(sp)
    80003b74:	02010413          	addi	s0,sp,32
    80003b78:	00050493          	mv	s1,a0
    80003b7c:	00008797          	auipc	a5,0x8
    80003b80:	86478793          	addi	a5,a5,-1948 # 8000b3e0 <_ZTV7WorkerD+0x10>
    80003b84:	00f53023          	sd	a5,0(a0)
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	424080e7          	jalr	1060(ra) # 80001fac <_ZN6ThreadD1Ev>
    80003b90:	00048513          	mv	a0,s1
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	3f0080e7          	jalr	1008(ra) # 80001f84 <_ZdlPv>
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN7WorkerA3runEv>:
    void run() override {
    80003bb0:	ff010113          	addi	sp,sp,-16
    80003bb4:	00113423          	sd	ra,8(sp)
    80003bb8:	00813023          	sd	s0,0(sp)
    80003bbc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003bc0:	00000593          	li	a1,0
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	774080e7          	jalr	1908(ra) # 80003338 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN7WorkerB3runEv>:
    void run() override {
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00113423          	sd	ra,8(sp)
    80003be4:	00813023          	sd	s0,0(sp)
    80003be8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bec:	00000593          	li	a1,0
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	814080e7          	jalr	-2028(ra) # 80003404 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bf8:	00813083          	ld	ra,8(sp)
    80003bfc:	00013403          	ld	s0,0(sp)
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret

0000000080003c08 <_ZN7WorkerC3runEv>:
    void run() override {
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00113423          	sd	ra,8(sp)
    80003c10:	00813023          	sd	s0,0(sp)
    80003c14:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c18:	00000593          	li	a1,0
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	8bc080e7          	jalr	-1860(ra) # 800034d8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c24:	00813083          	ld	ra,8(sp)
    80003c28:	00013403          	ld	s0,0(sp)
    80003c2c:	01010113          	addi	sp,sp,16
    80003c30:	00008067          	ret

0000000080003c34 <_ZN7WorkerD3runEv>:
    void run() override {
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	00813023          	sd	s0,0(sp)
    80003c40:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c44:	00000593          	li	a1,0
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	a10080e7          	jalr	-1520(ra) # 80003658 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c50:	00813083          	ld	ra,8(sp)
    80003c54:	00013403          	ld	s0,0(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret

0000000080003c60 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c60:	f8010113          	addi	sp,sp,-128
    80003c64:	06113c23          	sd	ra,120(sp)
    80003c68:	06813823          	sd	s0,112(sp)
    80003c6c:	06913423          	sd	s1,104(sp)
    80003c70:	07213023          	sd	s2,96(sp)
    80003c74:	05313c23          	sd	s3,88(sp)
    80003c78:	05413823          	sd	s4,80(sp)
    80003c7c:	05513423          	sd	s5,72(sp)
    80003c80:	05613023          	sd	s6,64(sp)
    80003c84:	03713c23          	sd	s7,56(sp)
    80003c88:	03813823          	sd	s8,48(sp)
    80003c8c:	03913423          	sd	s9,40(sp)
    80003c90:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c94:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c98:	00005517          	auipc	a0,0x5
    80003c9c:	38850513          	addi	a0,a0,904 # 80009020 <CONSOLE_STATUS+0x10>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	5a8080e7          	jalr	1448(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80003ca8:	01e00593          	li	a1,30
    80003cac:	f8040493          	addi	s1,s0,-128
    80003cb0:	00048513          	mv	a0,s1
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	61c080e7          	jalr	1564(ra) # 800052d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003cbc:	00048513          	mv	a0,s1
    80003cc0:	00001097          	auipc	ra,0x1
    80003cc4:	6e8080e7          	jalr	1768(ra) # 800053a8 <_Z11stringToIntPKc>
    80003cc8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ccc:	00005517          	auipc	a0,0x5
    80003cd0:	37450513          	addi	a0,a0,884 # 80009040 <CONSOLE_STATUS+0x30>
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	574080e7          	jalr	1396(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80003cdc:	01e00593          	li	a1,30
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	5ec080e7          	jalr	1516(ra) # 800052d0 <_Z9getStringPci>
    n = stringToInt(input);
    80003cec:	00048513          	mv	a0,s1
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	6b8080e7          	jalr	1720(ra) # 800053a8 <_Z11stringToIntPKc>
    80003cf8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	36450513          	addi	a0,a0,868 # 80009060 <CONSOLE_STATUS+0x50>
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	544080e7          	jalr	1348(ra) # 80005248 <_Z11printStringPKc>
    printInt(threadNum);
    80003d0c:	00000613          	li	a2,0
    80003d10:	00a00593          	li	a1,10
    80003d14:	00098513          	mv	a0,s3
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	6e0080e7          	jalr	1760(ra) # 800053f8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d20:	00005517          	auipc	a0,0x5
    80003d24:	35850513          	addi	a0,a0,856 # 80009078 <CONSOLE_STATUS+0x68>
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	520080e7          	jalr	1312(ra) # 80005248 <_Z11printStringPKc>
    printInt(n);
    80003d30:	00000613          	li	a2,0
    80003d34:	00a00593          	li	a1,10
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	6bc080e7          	jalr	1724(ra) # 800053f8 <_Z8printIntiii>
    printString(".\n");
    80003d44:	00005517          	auipc	a0,0x5
    80003d48:	34c50513          	addi	a0,a0,844 # 80009090 <CONSOLE_STATUS+0x80>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	4fc080e7          	jalr	1276(ra) # 80005248 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d54:	0334c463          	blt	s1,s3,80003d7c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d58:	03305c63          	blez	s3,80003d90 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d5c:	03800513          	li	a0,56
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	1fc080e7          	jalr	508(ra) # 80001f5c <_Znwm>
    80003d68:	00050a93          	mv	s5,a0
    80003d6c:	00048593          	mv	a1,s1
    80003d70:	00001097          	auipc	ra,0x1
    80003d74:	7a8080e7          	jalr	1960(ra) # 80005518 <_ZN9BufferCPPC1Ei>
    80003d78:	0300006f          	j	80003da8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	31c50513          	addi	a0,a0,796 # 80009098 <CONSOLE_STATUS+0x88>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	4c4080e7          	jalr	1220(ra) # 80005248 <_Z11printStringPKc>
        return;
    80003d8c:	0140006f          	j	80003da0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	34850513          	addi	a0,a0,840 # 800090d8 <CONSOLE_STATUS+0xc8>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	4b0080e7          	jalr	1200(ra) # 80005248 <_Z11printStringPKc>
        return;
    80003da0:	000c0113          	mv	sp,s8
    80003da4:	2140006f          	j	80003fb8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003da8:	01000513          	li	a0,16
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	1b0080e7          	jalr	432(ra) # 80001f5c <_Znwm>
    80003db4:	00050913          	mv	s2,a0
    80003db8:	00000593          	li	a1,0
    80003dbc:	ffffe097          	auipc	ra,0xffffe
    80003dc0:	3e4080e7          	jalr	996(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	8327be23          	sd	s2,-1988(a5) # 8000b600 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003dcc:	00399793          	slli	a5,s3,0x3
    80003dd0:	00f78793          	addi	a5,a5,15
    80003dd4:	ff07f793          	andi	a5,a5,-16
    80003dd8:	40f10133          	sub	sp,sp,a5
    80003ddc:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003de0:	0019871b          	addiw	a4,s3,1
    80003de4:	00171793          	slli	a5,a4,0x1
    80003de8:	00e787b3          	add	a5,a5,a4
    80003dec:	00379793          	slli	a5,a5,0x3
    80003df0:	00f78793          	addi	a5,a5,15
    80003df4:	ff07f793          	andi	a5,a5,-16
    80003df8:	40f10133          	sub	sp,sp,a5
    80003dfc:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003e00:	00199493          	slli	s1,s3,0x1
    80003e04:	013484b3          	add	s1,s1,s3
    80003e08:	00349493          	slli	s1,s1,0x3
    80003e0c:	009b04b3          	add	s1,s6,s1
    80003e10:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003e14:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003e18:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e1c:	02800513          	li	a0,40
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	13c080e7          	jalr	316(ra) # 80001f5c <_Znwm>
    80003e28:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	304080e7          	jalr	772(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003e34:	00007797          	auipc	a5,0x7
    80003e38:	62478793          	addi	a5,a5,1572 # 8000b458 <_ZTV8Consumer+0x10>
    80003e3c:	00fbb023          	sd	a5,0(s7)
    80003e40:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e44:	000b8513          	mv	a0,s7
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	284080e7          	jalr	644(ra) # 800020cc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e50:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e54:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e58:	00007797          	auipc	a5,0x7
    80003e5c:	7a87b783          	ld	a5,1960(a5) # 8000b600 <_ZL10waitForAll>
    80003e60:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e64:	02800513          	li	a0,40
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	0f4080e7          	jalr	244(ra) # 80001f5c <_Znwm>
    80003e70:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	2bc080e7          	jalr	700(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003e7c:	00007797          	auipc	a5,0x7
    80003e80:	58c78793          	addi	a5,a5,1420 # 8000b408 <_ZTV16ProducerKeyborad+0x10>
    80003e84:	00f4b023          	sd	a5,0(s1)
    80003e88:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e8c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e90:	00048513          	mv	a0,s1
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	238080e7          	jalr	568(ra) # 800020cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e9c:	00100913          	li	s2,1
    80003ea0:	0300006f          	j	80003ed0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ea4:	00007797          	auipc	a5,0x7
    80003ea8:	58c78793          	addi	a5,a5,1420 # 8000b430 <_ZTV8Producer+0x10>
    80003eac:	00fcb023          	sd	a5,0(s9)
    80003eb0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003eb4:	00391793          	slli	a5,s2,0x3
    80003eb8:	00fa07b3          	add	a5,s4,a5
    80003ebc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ec0:	000c8513          	mv	a0,s9
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	208080e7          	jalr	520(ra) # 800020cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ecc:	0019091b          	addiw	s2,s2,1
    80003ed0:	05395263          	bge	s2,s3,80003f14 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003ed4:	00191493          	slli	s1,s2,0x1
    80003ed8:	012484b3          	add	s1,s1,s2
    80003edc:	00349493          	slli	s1,s1,0x3
    80003ee0:	009b04b3          	add	s1,s6,s1
    80003ee4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ee8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003eec:	00007797          	auipc	a5,0x7
    80003ef0:	7147b783          	ld	a5,1812(a5) # 8000b600 <_ZL10waitForAll>
    80003ef4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ef8:	02800513          	li	a0,40
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	060080e7          	jalr	96(ra) # 80001f5c <_Znwm>
    80003f04:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	228080e7          	jalr	552(ra) # 80002130 <_ZN6ThreadC1Ev>
    80003f10:	f95ff06f          	j	80003ea4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	190080e7          	jalr	400(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f1c:	00000493          	li	s1,0
    80003f20:	0099ce63          	blt	s3,s1,80003f3c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f24:	00007517          	auipc	a0,0x7
    80003f28:	6dc53503          	ld	a0,1756(a0) # 8000b600 <_ZL10waitForAll>
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	2d8080e7          	jalr	728(ra) # 80002204 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f34:	0014849b          	addiw	s1,s1,1
    80003f38:	fe9ff06f          	j	80003f20 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f3c:	00007517          	auipc	a0,0x7
    80003f40:	6c453503          	ld	a0,1732(a0) # 8000b600 <_ZL10waitForAll>
    80003f44:	00050863          	beqz	a0,80003f54 <_Z20testConsumerProducerv+0x2f4>
    80003f48:	00053783          	ld	a5,0(a0)
    80003f4c:	0087b783          	ld	a5,8(a5)
    80003f50:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f54:	00000493          	li	s1,0
    80003f58:	0080006f          	j	80003f60 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f5c:	0014849b          	addiw	s1,s1,1
    80003f60:	0334d263          	bge	s1,s3,80003f84 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f64:	00349793          	slli	a5,s1,0x3
    80003f68:	00fa07b3          	add	a5,s4,a5
    80003f6c:	0007b503          	ld	a0,0(a5)
    80003f70:	fe0506e3          	beqz	a0,80003f5c <_Z20testConsumerProducerv+0x2fc>
    80003f74:	00053783          	ld	a5,0(a0)
    80003f78:	0087b783          	ld	a5,8(a5)
    80003f7c:	000780e7          	jalr	a5
    80003f80:	fddff06f          	j	80003f5c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f84:	000b8a63          	beqz	s7,80003f98 <_Z20testConsumerProducerv+0x338>
    80003f88:	000bb783          	ld	a5,0(s7)
    80003f8c:	0087b783          	ld	a5,8(a5)
    80003f90:	000b8513          	mv	a0,s7
    80003f94:	000780e7          	jalr	a5
    delete buffer;
    80003f98:	000a8e63          	beqz	s5,80003fb4 <_Z20testConsumerProducerv+0x354>
    80003f9c:	000a8513          	mv	a0,s5
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	870080e7          	jalr	-1936(ra) # 80005810 <_ZN9BufferCPPD1Ev>
    80003fa8:	000a8513          	mv	a0,s5
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	fd8080e7          	jalr	-40(ra) # 80001f84 <_ZdlPv>
    80003fb4:	000c0113          	mv	sp,s8
}
    80003fb8:	f8040113          	addi	sp,s0,-128
    80003fbc:	07813083          	ld	ra,120(sp)
    80003fc0:	07013403          	ld	s0,112(sp)
    80003fc4:	06813483          	ld	s1,104(sp)
    80003fc8:	06013903          	ld	s2,96(sp)
    80003fcc:	05813983          	ld	s3,88(sp)
    80003fd0:	05013a03          	ld	s4,80(sp)
    80003fd4:	04813a83          	ld	s5,72(sp)
    80003fd8:	04013b03          	ld	s6,64(sp)
    80003fdc:	03813b83          	ld	s7,56(sp)
    80003fe0:	03013c03          	ld	s8,48(sp)
    80003fe4:	02813c83          	ld	s9,40(sp)
    80003fe8:	08010113          	addi	sp,sp,128
    80003fec:	00008067          	ret
    80003ff0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003ff4:	000a8513          	mv	a0,s5
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	f8c080e7          	jalr	-116(ra) # 80001f84 <_ZdlPv>
    80004000:	00048513          	mv	a0,s1
    80004004:	00008097          	auipc	ra,0x8
    80004008:	6f4080e7          	jalr	1780(ra) # 8000c6f8 <_Unwind_Resume>
    8000400c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004010:	00090513          	mv	a0,s2
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	f70080e7          	jalr	-144(ra) # 80001f84 <_ZdlPv>
    8000401c:	00048513          	mv	a0,s1
    80004020:	00008097          	auipc	ra,0x8
    80004024:	6d8080e7          	jalr	1752(ra) # 8000c6f8 <_Unwind_Resume>
    80004028:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000402c:	000b8513          	mv	a0,s7
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	f54080e7          	jalr	-172(ra) # 80001f84 <_ZdlPv>
    80004038:	00048513          	mv	a0,s1
    8000403c:	00008097          	auipc	ra,0x8
    80004040:	6bc080e7          	jalr	1724(ra) # 8000c6f8 <_Unwind_Resume>
    80004044:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004048:	00048513          	mv	a0,s1
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	f38080e7          	jalr	-200(ra) # 80001f84 <_ZdlPv>
    80004054:	00090513          	mv	a0,s2
    80004058:	00008097          	auipc	ra,0x8
    8000405c:	6a0080e7          	jalr	1696(ra) # 8000c6f8 <_Unwind_Resume>
    80004060:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004064:	000c8513          	mv	a0,s9
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	f1c080e7          	jalr	-228(ra) # 80001f84 <_ZdlPv>
    80004070:	00048513          	mv	a0,s1
    80004074:	00008097          	auipc	ra,0x8
    80004078:	684080e7          	jalr	1668(ra) # 8000c6f8 <_Unwind_Resume>

000000008000407c <_ZN8Consumer3runEv>:
    void run() override {
    8000407c:	fd010113          	addi	sp,sp,-48
    80004080:	02113423          	sd	ra,40(sp)
    80004084:	02813023          	sd	s0,32(sp)
    80004088:	00913c23          	sd	s1,24(sp)
    8000408c:	01213823          	sd	s2,16(sp)
    80004090:	01313423          	sd	s3,8(sp)
    80004094:	03010413          	addi	s0,sp,48
    80004098:	00050913          	mv	s2,a0
        int i = 0;
    8000409c:	00000993          	li	s3,0
    800040a0:	0100006f          	j	800040b0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800040a4:	00a00513          	li	a0,10
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	21c080e7          	jalr	540(ra) # 800022c4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800040b0:	00007797          	auipc	a5,0x7
    800040b4:	5487a783          	lw	a5,1352(a5) # 8000b5f8 <_ZL9threadEnd>
    800040b8:	04079a63          	bnez	a5,8000410c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040bc:	02093783          	ld	a5,32(s2)
    800040c0:	0087b503          	ld	a0,8(a5)
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	638080e7          	jalr	1592(ra) # 800056fc <_ZN9BufferCPP3getEv>
            i++;
    800040cc:	0019849b          	addiw	s1,s3,1
    800040d0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040d4:	0ff57513          	andi	a0,a0,255
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	1ec080e7          	jalr	492(ra) # 800022c4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040e0:	05000793          	li	a5,80
    800040e4:	02f4e4bb          	remw	s1,s1,a5
    800040e8:	fc0494e3          	bnez	s1,800040b0 <_ZN8Consumer3runEv+0x34>
    800040ec:	fb9ff06f          	j	800040a4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040f0:	02093783          	ld	a5,32(s2)
    800040f4:	0087b503          	ld	a0,8(a5)
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	604080e7          	jalr	1540(ra) # 800056fc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004100:	0ff57513          	andi	a0,a0,255
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	1c0080e7          	jalr	448(ra) # 800022c4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000410c:	02093783          	ld	a5,32(s2)
    80004110:	0087b503          	ld	a0,8(a5)
    80004114:	00001097          	auipc	ra,0x1
    80004118:	674080e7          	jalr	1652(ra) # 80005788 <_ZN9BufferCPP6getCntEv>
    8000411c:	fca04ae3          	bgtz	a0,800040f0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004120:	02093783          	ld	a5,32(s2)
    80004124:	0107b503          	ld	a0,16(a5)
    80004128:	ffffe097          	auipc	ra,0xffffe
    8000412c:	0b0080e7          	jalr	176(ra) # 800021d8 <_ZN9Semaphore6signalEv>
    }
    80004130:	02813083          	ld	ra,40(sp)
    80004134:	02013403          	ld	s0,32(sp)
    80004138:	01813483          	ld	s1,24(sp)
    8000413c:	01013903          	ld	s2,16(sp)
    80004140:	00813983          	ld	s3,8(sp)
    80004144:	03010113          	addi	sp,sp,48
    80004148:	00008067          	ret

000000008000414c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000414c:	ff010113          	addi	sp,sp,-16
    80004150:	00113423          	sd	ra,8(sp)
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	01010413          	addi	s0,sp,16
    8000415c:	00007797          	auipc	a5,0x7
    80004160:	2fc78793          	addi	a5,a5,764 # 8000b458 <_ZTV8Consumer+0x10>
    80004164:	00f53023          	sd	a5,0(a0)
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	e44080e7          	jalr	-444(ra) # 80001fac <_ZN6ThreadD1Ev>
    80004170:	00813083          	ld	ra,8(sp)
    80004174:	00013403          	ld	s0,0(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN8ConsumerD0Ev>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00113c23          	sd	ra,24(sp)
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	00050493          	mv	s1,a0
    80004198:	00007797          	auipc	a5,0x7
    8000419c:	2c078793          	addi	a5,a5,704 # 8000b458 <_ZTV8Consumer+0x10>
    800041a0:	00f53023          	sd	a5,0(a0)
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	e08080e7          	jalr	-504(ra) # 80001fac <_ZN6ThreadD1Ev>
    800041ac:	00048513          	mv	a0,s1
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	dd4080e7          	jalr	-556(ra) # 80001f84 <_ZdlPv>
    800041b8:	01813083          	ld	ra,24(sp)
    800041bc:	01013403          	ld	s0,16(sp)
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041cc:	ff010113          	addi	sp,sp,-16
    800041d0:	00113423          	sd	ra,8(sp)
    800041d4:	00813023          	sd	s0,0(sp)
    800041d8:	01010413          	addi	s0,sp,16
    800041dc:	00007797          	auipc	a5,0x7
    800041e0:	22c78793          	addi	a5,a5,556 # 8000b408 <_ZTV16ProducerKeyborad+0x10>
    800041e4:	00f53023          	sd	a5,0(a0)
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	dc4080e7          	jalr	-572(ra) # 80001fac <_ZN6ThreadD1Ev>
    800041f0:	00813083          	ld	ra,8(sp)
    800041f4:	00013403          	ld	s0,0(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret

0000000080004200 <_ZN16ProducerKeyboradD0Ev>:
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00113c23          	sd	ra,24(sp)
    80004208:	00813823          	sd	s0,16(sp)
    8000420c:	00913423          	sd	s1,8(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00050493          	mv	s1,a0
    80004218:	00007797          	auipc	a5,0x7
    8000421c:	1f078793          	addi	a5,a5,496 # 8000b408 <_ZTV16ProducerKeyborad+0x10>
    80004220:	00f53023          	sd	a5,0(a0)
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	d88080e7          	jalr	-632(ra) # 80001fac <_ZN6ThreadD1Ev>
    8000422c:	00048513          	mv	a0,s1
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	d54080e7          	jalr	-684(ra) # 80001f84 <_ZdlPv>
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00008067          	ret

000000008000424c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000424c:	ff010113          	addi	sp,sp,-16
    80004250:	00113423          	sd	ra,8(sp)
    80004254:	00813023          	sd	s0,0(sp)
    80004258:	01010413          	addi	s0,sp,16
    8000425c:	00007797          	auipc	a5,0x7
    80004260:	1d478793          	addi	a5,a5,468 # 8000b430 <_ZTV8Producer+0x10>
    80004264:	00f53023          	sd	a5,0(a0)
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	d44080e7          	jalr	-700(ra) # 80001fac <_ZN6ThreadD1Ev>
    80004270:	00813083          	ld	ra,8(sp)
    80004274:	00013403          	ld	s0,0(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret

0000000080004280 <_ZN8ProducerD0Ev>:
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00113c23          	sd	ra,24(sp)
    80004288:	00813823          	sd	s0,16(sp)
    8000428c:	00913423          	sd	s1,8(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050493          	mv	s1,a0
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	19878793          	addi	a5,a5,408 # 8000b430 <_ZTV8Producer+0x10>
    800042a0:	00f53023          	sd	a5,0(a0)
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	d08080e7          	jalr	-760(ra) # 80001fac <_ZN6ThreadD1Ev>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	cd4080e7          	jalr	-812(ra) # 80001f84 <_ZdlPv>
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	02010113          	addi	sp,sp,32
    800042c8:	00008067          	ret

00000000800042cc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042cc:	fe010113          	addi	sp,sp,-32
    800042d0:	00113c23          	sd	ra,24(sp)
    800042d4:	00813823          	sd	s0,16(sp)
    800042d8:	00913423          	sd	s1,8(sp)
    800042dc:	02010413          	addi	s0,sp,32
    800042e0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	2d8080e7          	jalr	728(ra) # 800015bc <_Z4getcv>
    800042ec:	0005059b          	sext.w	a1,a0
    800042f0:	01b00793          	li	a5,27
    800042f4:	00f58c63          	beq	a1,a5,8000430c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042f8:	0204b783          	ld	a5,32(s1)
    800042fc:	0087b503          	ld	a0,8(a5)
    80004300:	00001097          	auipc	ra,0x1
    80004304:	36c080e7          	jalr	876(ra) # 8000566c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004308:	fddff06f          	j	800042e4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000430c:	00100793          	li	a5,1
    80004310:	00007717          	auipc	a4,0x7
    80004314:	2ef72423          	sw	a5,744(a4) # 8000b5f8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004318:	0204b783          	ld	a5,32(s1)
    8000431c:	02100593          	li	a1,33
    80004320:	0087b503          	ld	a0,8(a5)
    80004324:	00001097          	auipc	ra,0x1
    80004328:	348080e7          	jalr	840(ra) # 8000566c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000432c:	0204b783          	ld	a5,32(s1)
    80004330:	0107b503          	ld	a0,16(a5)
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	ea4080e7          	jalr	-348(ra) # 800021d8 <_ZN9Semaphore6signalEv>
    }
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <_ZN8Producer3runEv>:
    void run() override {
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	00813823          	sd	s0,16(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	01213023          	sd	s2,0(sp)
    80004364:	02010413          	addi	s0,sp,32
    80004368:	00050493          	mv	s1,a0
        int i = 0;
    8000436c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004370:	00007797          	auipc	a5,0x7
    80004374:	2887a783          	lw	a5,648(a5) # 8000b5f8 <_ZL9threadEnd>
    80004378:	04079263          	bnez	a5,800043bc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000437c:	0204b783          	ld	a5,32(s1)
    80004380:	0007a583          	lw	a1,0(a5)
    80004384:	0305859b          	addiw	a1,a1,48
    80004388:	0087b503          	ld	a0,8(a5)
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	2e0080e7          	jalr	736(ra) # 8000566c <_ZN9BufferCPP3putEi>
            i++;
    80004394:	0019071b          	addiw	a4,s2,1
    80004398:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000439c:	0204b783          	ld	a5,32(s1)
    800043a0:	0007a783          	lw	a5,0(a5)
    800043a4:	00e787bb          	addw	a5,a5,a4
    800043a8:	00500513          	li	a0,5
    800043ac:	02a7e53b          	remw	a0,a5,a0
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	dc4080e7          	jalr	-572(ra) # 80002174 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800043b8:	fb9ff06f          	j	80004370 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043bc:	0204b783          	ld	a5,32(s1)
    800043c0:	0107b503          	ld	a0,16(a5)
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	e14080e7          	jalr	-492(ra) # 800021d8 <_ZN9Semaphore6signalEv>
    }
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00013903          	ld	s2,0(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret

00000000800043e4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043e4:	fe010113          	addi	sp,sp,-32
    800043e8:	00113c23          	sd	ra,24(sp)
    800043ec:	00813823          	sd	s0,16(sp)
    800043f0:	00913423          	sd	s1,8(sp)
    800043f4:	01213023          	sd	s2,0(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004400:	00100793          	li	a5,1
    80004404:	02a7f863          	bgeu	a5,a0,80004434 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004408:	00a00793          	li	a5,10
    8000440c:	02f577b3          	remu	a5,a0,a5
    80004410:	02078e63          	beqz	a5,8000444c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004414:	fff48513          	addi	a0,s1,-1
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	fcc080e7          	jalr	-52(ra) # 800043e4 <_ZL9fibonaccim>
    80004420:	00050913          	mv	s2,a0
    80004424:	ffe48513          	addi	a0,s1,-2
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	fbc080e7          	jalr	-68(ra) # 800043e4 <_ZL9fibonaccim>
    80004430:	00a90533          	add	a0,s2,a0
}
    80004434:	01813083          	ld	ra,24(sp)
    80004438:	01013403          	ld	s0,16(sp)
    8000443c:	00813483          	ld	s1,8(sp)
    80004440:	00013903          	ld	s2,0(sp)
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000444c:	ffffd097          	auipc	ra,0xffffd
    80004450:	004080e7          	jalr	4(ra) # 80001450 <_Z15thread_dispatchv>
    80004454:	fc1ff06f          	j	80004414 <_ZL9fibonaccim+0x30>

0000000080004458 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004470:	00a00493          	li	s1,10
    80004474:	0400006f          	j	800044b4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	cf050513          	addi	a0,a0,-784 # 80009168 <CONSOLE_STATUS+0x158>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	dc8080e7          	jalr	-568(ra) # 80005248 <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	00048513          	mv	a0,s1
    80004494:	00001097          	auipc	ra,0x1
    80004498:	f64080e7          	jalr	-156(ra) # 800053f8 <_Z8printIntiii>
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	ebc50513          	addi	a0,a0,-324 # 80009358 <CONSOLE_STATUS+0x348>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	da4080e7          	jalr	-604(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	0ff4f493          	andi	s1,s1,255
    800044b4:	00c00793          	li	a5,12
    800044b8:	fc97f0e3          	bgeu	a5,s1,80004478 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	cb450513          	addi	a0,a0,-844 # 80009170 <CONSOLE_STATUS+0x160>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	d84080e7          	jalr	-636(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044cc:	00500313          	li	t1,5
    thread_dispatch();
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	f80080e7          	jalr	-128(ra) # 80001450 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044d8:	01000513          	li	a0,16
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	f08080e7          	jalr	-248(ra) # 800043e4 <_ZL9fibonaccim>
    800044e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	c9850513          	addi	a0,a0,-872 # 80009180 <CONSOLE_STATUS+0x170>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	d58080e7          	jalr	-680(ra) # 80005248 <_Z11printStringPKc>
    800044f8:	00000613          	li	a2,0
    800044fc:	00a00593          	li	a1,10
    80004500:	0009051b          	sext.w	a0,s2
    80004504:	00001097          	auipc	ra,0x1
    80004508:	ef4080e7          	jalr	-268(ra) # 800053f8 <_Z8printIntiii>
    8000450c:	00005517          	auipc	a0,0x5
    80004510:	e4c50513          	addi	a0,a0,-436 # 80009358 <CONSOLE_STATUS+0x348>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	d34080e7          	jalr	-716(ra) # 80005248 <_Z11printStringPKc>
    8000451c:	0400006f          	j	8000455c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004520:	00005517          	auipc	a0,0x5
    80004524:	c4850513          	addi	a0,a0,-952 # 80009168 <CONSOLE_STATUS+0x158>
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	d20080e7          	jalr	-736(ra) # 80005248 <_Z11printStringPKc>
    80004530:	00000613          	li	a2,0
    80004534:	00a00593          	li	a1,10
    80004538:	00048513          	mv	a0,s1
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	ebc080e7          	jalr	-324(ra) # 800053f8 <_Z8printIntiii>
    80004544:	00005517          	auipc	a0,0x5
    80004548:	e1450513          	addi	a0,a0,-492 # 80009358 <CONSOLE_STATUS+0x348>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	cfc080e7          	jalr	-772(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004554:	0014849b          	addiw	s1,s1,1
    80004558:	0ff4f493          	andi	s1,s1,255
    8000455c:	00f00793          	li	a5,15
    80004560:	fc97f0e3          	bgeu	a5,s1,80004520 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	c2c50513          	addi	a0,a0,-980 # 80009190 <CONSOLE_STATUS+0x180>
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	cdc080e7          	jalr	-804(ra) # 80005248 <_Z11printStringPKc>
    finishedD = true;
    80004574:	00100793          	li	a5,1
    80004578:	00007717          	auipc	a4,0x7
    8000457c:	08f70823          	sb	a5,144(a4) # 8000b608 <_ZL9finishedD>
    thread_dispatch();
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	ed0080e7          	jalr	-304(ra) # 80001450 <_Z15thread_dispatchv>
}
    80004588:	01813083          	ld	ra,24(sp)
    8000458c:	01013403          	ld	s0,16(sp)
    80004590:	00813483          	ld	s1,8(sp)
    80004594:	00013903          	ld	s2,0(sp)
    80004598:	02010113          	addi	sp,sp,32
    8000459c:	00008067          	ret

00000000800045a0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00813823          	sd	s0,16(sp)
    800045ac:	00913423          	sd	s1,8(sp)
    800045b0:	01213023          	sd	s2,0(sp)
    800045b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045b8:	00000493          	li	s1,0
    800045bc:	0400006f          	j	800045fc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045c0:	00005517          	auipc	a0,0x5
    800045c4:	b7850513          	addi	a0,a0,-1160 # 80009138 <CONSOLE_STATUS+0x128>
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	c80080e7          	jalr	-896(ra) # 80005248 <_Z11printStringPKc>
    800045d0:	00000613          	li	a2,0
    800045d4:	00a00593          	li	a1,10
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	e1c080e7          	jalr	-484(ra) # 800053f8 <_Z8printIntiii>
    800045e4:	00005517          	auipc	a0,0x5
    800045e8:	d7450513          	addi	a0,a0,-652 # 80009358 <CONSOLE_STATUS+0x348>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	c5c080e7          	jalr	-932(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045f4:	0014849b          	addiw	s1,s1,1
    800045f8:	0ff4f493          	andi	s1,s1,255
    800045fc:	00200793          	li	a5,2
    80004600:	fc97f0e3          	bgeu	a5,s1,800045c0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	b3c50513          	addi	a0,a0,-1220 # 80009140 <CONSOLE_STATUS+0x130>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	c3c080e7          	jalr	-964(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004614:	00700313          	li	t1,7
    thread_dispatch();
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	e38080e7          	jalr	-456(ra) # 80001450 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004620:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004624:	00005517          	auipc	a0,0x5
    80004628:	b2c50513          	addi	a0,a0,-1236 # 80009150 <CONSOLE_STATUS+0x140>
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	c1c080e7          	jalr	-996(ra) # 80005248 <_Z11printStringPKc>
    80004634:	00000613          	li	a2,0
    80004638:	00a00593          	li	a1,10
    8000463c:	0009051b          	sext.w	a0,s2
    80004640:	00001097          	auipc	ra,0x1
    80004644:	db8080e7          	jalr	-584(ra) # 800053f8 <_Z8printIntiii>
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	d1050513          	addi	a0,a0,-752 # 80009358 <CONSOLE_STATUS+0x348>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	bf8080e7          	jalr	-1032(ra) # 80005248 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004658:	00c00513          	li	a0,12
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	d88080e7          	jalr	-632(ra) # 800043e4 <_ZL9fibonaccim>
    80004664:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	af050513          	addi	a0,a0,-1296 # 80009158 <CONSOLE_STATUS+0x148>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	bd8080e7          	jalr	-1064(ra) # 80005248 <_Z11printStringPKc>
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	0009051b          	sext.w	a0,s2
    80004684:	00001097          	auipc	ra,0x1
    80004688:	d74080e7          	jalr	-652(ra) # 800053f8 <_Z8printIntiii>
    8000468c:	00005517          	auipc	a0,0x5
    80004690:	ccc50513          	addi	a0,a0,-820 # 80009358 <CONSOLE_STATUS+0x348>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	bb4080e7          	jalr	-1100(ra) # 80005248 <_Z11printStringPKc>
    8000469c:	0400006f          	j	800046dc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	a9850513          	addi	a0,a0,-1384 # 80009138 <CONSOLE_STATUS+0x128>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	ba0080e7          	jalr	-1120(ra) # 80005248 <_Z11printStringPKc>
    800046b0:	00000613          	li	a2,0
    800046b4:	00a00593          	li	a1,10
    800046b8:	00048513          	mv	a0,s1
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	d3c080e7          	jalr	-708(ra) # 800053f8 <_Z8printIntiii>
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	c9450513          	addi	a0,a0,-876 # 80009358 <CONSOLE_STATUS+0x348>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	b7c080e7          	jalr	-1156(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046d4:	0014849b          	addiw	s1,s1,1
    800046d8:	0ff4f493          	andi	s1,s1,255
    800046dc:	00500793          	li	a5,5
    800046e0:	fc97f0e3          	bgeu	a5,s1,800046a0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800046e4:	00005517          	auipc	a0,0x5
    800046e8:	a2c50513          	addi	a0,a0,-1492 # 80009110 <CONSOLE_STATUS+0x100>
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	b5c080e7          	jalr	-1188(ra) # 80005248 <_Z11printStringPKc>
    finishedC = true;
    800046f4:	00100793          	li	a5,1
    800046f8:	00007717          	auipc	a4,0x7
    800046fc:	f0f708a3          	sb	a5,-239(a4) # 8000b609 <_ZL9finishedC>
    thread_dispatch();
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	d50080e7          	jalr	-688(ra) # 80001450 <_Z15thread_dispatchv>
}
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	00013903          	ld	s2,0(sp)
    80004718:	02010113          	addi	sp,sp,32
    8000471c:	00008067          	ret

0000000080004720 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004720:	fe010113          	addi	sp,sp,-32
    80004724:	00113c23          	sd	ra,24(sp)
    80004728:	00813823          	sd	s0,16(sp)
    8000472c:	00913423          	sd	s1,8(sp)
    80004730:	01213023          	sd	s2,0(sp)
    80004734:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004738:	00000913          	li	s2,0
    8000473c:	0380006f          	j	80004774 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	d10080e7          	jalr	-752(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004748:	00148493          	addi	s1,s1,1
    8000474c:	000027b7          	lui	a5,0x2
    80004750:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004754:	0097ee63          	bltu	a5,s1,80004770 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004758:	00000713          	li	a4,0
    8000475c:	000077b7          	lui	a5,0x7
    80004760:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004764:	fce7eee3          	bltu	a5,a4,80004740 <_ZL11workerBodyBPv+0x20>
    80004768:	00170713          	addi	a4,a4,1
    8000476c:	ff1ff06f          	j	8000475c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004770:	00190913          	addi	s2,s2,1
    80004774:	00f00793          	li	a5,15
    80004778:	0527e063          	bltu	a5,s2,800047b8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	9a450513          	addi	a0,a0,-1628 # 80009120 <CONSOLE_STATUS+0x110>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	ac4080e7          	jalr	-1340(ra) # 80005248 <_Z11printStringPKc>
    8000478c:	00000613          	li	a2,0
    80004790:	00a00593          	li	a1,10
    80004794:	0009051b          	sext.w	a0,s2
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	c60080e7          	jalr	-928(ra) # 800053f8 <_Z8printIntiii>
    800047a0:	00005517          	auipc	a0,0x5
    800047a4:	bb850513          	addi	a0,a0,-1096 # 80009358 <CONSOLE_STATUS+0x348>
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	aa0080e7          	jalr	-1376(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047b0:	00000493          	li	s1,0
    800047b4:	f99ff06f          	j	8000474c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	97050513          	addi	a0,a0,-1680 # 80009128 <CONSOLE_STATUS+0x118>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	a88080e7          	jalr	-1400(ra) # 80005248 <_Z11printStringPKc>
    finishedB = true;
    800047c8:	00100793          	li	a5,1
    800047cc:	00007717          	auipc	a4,0x7
    800047d0:	e2f70f23          	sb	a5,-450(a4) # 8000b60a <_ZL9finishedB>
    thread_dispatch();
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	c7c080e7          	jalr	-900(ra) # 80001450 <_Z15thread_dispatchv>
}
    800047dc:	01813083          	ld	ra,24(sp)
    800047e0:	01013403          	ld	s0,16(sp)
    800047e4:	00813483          	ld	s1,8(sp)
    800047e8:	00013903          	ld	s2,0(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	01213023          	sd	s2,0(sp)
    80004808:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000480c:	00000913          	li	s2,0
    80004810:	0380006f          	j	80004848 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	c3c080e7          	jalr	-964(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000481c:	00148493          	addi	s1,s1,1
    80004820:	000027b7          	lui	a5,0x2
    80004824:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004828:	0097ee63          	bltu	a5,s1,80004844 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000482c:	00000713          	li	a4,0
    80004830:	000077b7          	lui	a5,0x7
    80004834:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004838:	fce7eee3          	bltu	a5,a4,80004814 <_ZL11workerBodyAPv+0x20>
    8000483c:	00170713          	addi	a4,a4,1
    80004840:	ff1ff06f          	j	80004830 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004844:	00190913          	addi	s2,s2,1
    80004848:	00900793          	li	a5,9
    8000484c:	0527e063          	bltu	a5,s2,8000488c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	8b850513          	addi	a0,a0,-1864 # 80009108 <CONSOLE_STATUS+0xf8>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	9f0080e7          	jalr	-1552(ra) # 80005248 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	0009051b          	sext.w	a0,s2
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	b8c080e7          	jalr	-1140(ra) # 800053f8 <_Z8printIntiii>
    80004874:	00005517          	auipc	a0,0x5
    80004878:	ae450513          	addi	a0,a0,-1308 # 80009358 <CONSOLE_STATUS+0x348>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	9cc080e7          	jalr	-1588(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004884:	00000493          	li	s1,0
    80004888:	f99ff06f          	j	80004820 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000488c:	00005517          	auipc	a0,0x5
    80004890:	88450513          	addi	a0,a0,-1916 # 80009110 <CONSOLE_STATUS+0x100>
    80004894:	00001097          	auipc	ra,0x1
    80004898:	9b4080e7          	jalr	-1612(ra) # 80005248 <_Z11printStringPKc>
    finishedA = true;
    8000489c:	00100793          	li	a5,1
    800048a0:	00007717          	auipc	a4,0x7
    800048a4:	d6f705a3          	sb	a5,-661(a4) # 8000b60b <_ZL9finishedA>
}
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	00013903          	ld	s2,0(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048c0:	fd010113          	addi	sp,sp,-48
    800048c4:	02113423          	sd	ra,40(sp)
    800048c8:	02813023          	sd	s0,32(sp)
    800048cc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048d0:	00000613          	li	a2,0
    800048d4:	00000597          	auipc	a1,0x0
    800048d8:	f2058593          	addi	a1,a1,-224 # 800047f4 <_ZL11workerBodyAPv>
    800048dc:	fd040513          	addi	a0,s0,-48
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	b10080e7          	jalr	-1264(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048e8:	00005517          	auipc	a0,0x5
    800048ec:	8b850513          	addi	a0,a0,-1864 # 800091a0 <CONSOLE_STATUS+0x190>
    800048f0:	00001097          	auipc	ra,0x1
    800048f4:	958080e7          	jalr	-1704(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048f8:	00000613          	li	a2,0
    800048fc:	00000597          	auipc	a1,0x0
    80004900:	e2458593          	addi	a1,a1,-476 # 80004720 <_ZL11workerBodyBPv>
    80004904:	fd840513          	addi	a0,s0,-40
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	ae8080e7          	jalr	-1304(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004910:	00005517          	auipc	a0,0x5
    80004914:	8a850513          	addi	a0,a0,-1880 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	930080e7          	jalr	-1744(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004920:	00000613          	li	a2,0
    80004924:	00000597          	auipc	a1,0x0
    80004928:	c7c58593          	addi	a1,a1,-900 # 800045a0 <_ZL11workerBodyCPv>
    8000492c:	fe040513          	addi	a0,s0,-32
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	ac0080e7          	jalr	-1344(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	89850513          	addi	a0,a0,-1896 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	908080e7          	jalr	-1784(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004948:	00000613          	li	a2,0
    8000494c:	00000597          	auipc	a1,0x0
    80004950:	b0c58593          	addi	a1,a1,-1268 # 80004458 <_ZL11workerBodyDPv>
    80004954:	fe840513          	addi	a0,s0,-24
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	a98080e7          	jalr	-1384(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	88850513          	addi	a0,a0,-1912 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	8e0080e7          	jalr	-1824(ra) # 80005248 <_Z11printStringPKc>
    80004970:	00c0006f          	j	8000497c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	adc080e7          	jalr	-1316(ra) # 80001450 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	c8f7c783          	lbu	a5,-881(a5) # 8000b60b <_ZL9finishedA>
    80004984:	fe0788e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    80004988:	00007797          	auipc	a5,0x7
    8000498c:	c827c783          	lbu	a5,-894(a5) # 8000b60a <_ZL9finishedB>
    80004990:	fe0782e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    80004994:	00007797          	auipc	a5,0x7
    80004998:	c757c783          	lbu	a5,-907(a5) # 8000b609 <_ZL9finishedC>
    8000499c:	fc078ce3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    800049a0:	00007797          	auipc	a5,0x7
    800049a4:	c687c783          	lbu	a5,-920(a5) # 8000b608 <_ZL9finishedD>
    800049a8:	fc0786e3          	beqz	a5,80004974 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800049ac:	02813083          	ld	ra,40(sp)
    800049b0:	02013403          	ld	s0,32(sp)
    800049b4:	03010113          	addi	sp,sp,48
    800049b8:	00008067          	ret

00000000800049bc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049bc:	fd010113          	addi	sp,sp,-48
    800049c0:	02113423          	sd	ra,40(sp)
    800049c4:	02813023          	sd	s0,32(sp)
    800049c8:	00913c23          	sd	s1,24(sp)
    800049cc:	01213823          	sd	s2,16(sp)
    800049d0:	01313423          	sd	s3,8(sp)
    800049d4:	03010413          	addi	s0,sp,48
    800049d8:	00050993          	mv	s3,a0
    800049dc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049e0:	00000913          	li	s2,0
    800049e4:	00c0006f          	j	800049f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	6bc080e7          	jalr	1724(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	bcc080e7          	jalr	-1076(ra) # 800015bc <_Z4getcv>
    800049f8:	0005059b          	sext.w	a1,a0
    800049fc:	01b00793          	li	a5,27
    80004a00:	02f58a63          	beq	a1,a5,80004a34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a04:	0084b503          	ld	a0,8(s1)
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	c64080e7          	jalr	-924(ra) # 8000566c <_ZN9BufferCPP3putEi>
        i++;
    80004a10:	0019071b          	addiw	a4,s2,1
    80004a14:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a18:	0004a683          	lw	a3,0(s1)
    80004a1c:	0026979b          	slliw	a5,a3,0x2
    80004a20:	00d787bb          	addw	a5,a5,a3
    80004a24:	0017979b          	slliw	a5,a5,0x1
    80004a28:	02f767bb          	remw	a5,a4,a5
    80004a2c:	fc0792e3          	bnez	a5,800049f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a30:	fb9ff06f          	j	800049e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a34:	00100793          	li	a5,1
    80004a38:	00007717          	auipc	a4,0x7
    80004a3c:	bcf72c23          	sw	a5,-1064(a4) # 8000b610 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a40:	0209b783          	ld	a5,32(s3)
    80004a44:	02100593          	li	a1,33
    80004a48:	0087b503          	ld	a0,8(a5)
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	c20080e7          	jalr	-992(ra) # 8000566c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a54:	0104b503          	ld	a0,16(s1)
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	780080e7          	jalr	1920(ra) # 800021d8 <_ZN9Semaphore6signalEv>
}
    80004a60:	02813083          	ld	ra,40(sp)
    80004a64:	02013403          	ld	s0,32(sp)
    80004a68:	01813483          	ld	s1,24(sp)
    80004a6c:	01013903          	ld	s2,16(sp)
    80004a70:	00813983          	ld	s3,8(sp)
    80004a74:	03010113          	addi	sp,sp,48
    80004a78:	00008067          	ret

0000000080004a7c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00113c23          	sd	ra,24(sp)
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00913423          	sd	s1,8(sp)
    80004a8c:	01213023          	sd	s2,0(sp)
    80004a90:	02010413          	addi	s0,sp,32
    80004a94:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a98:	00000913          	li	s2,0
    80004a9c:	00c0006f          	j	80004aa8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	604080e7          	jalr	1540(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004aa8:	00007797          	auipc	a5,0x7
    80004aac:	b687a783          	lw	a5,-1176(a5) # 8000b610 <_ZL9threadEnd>
    80004ab0:	02079e63          	bnez	a5,80004aec <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004ab4:	0004a583          	lw	a1,0(s1)
    80004ab8:	0305859b          	addiw	a1,a1,48
    80004abc:	0084b503          	ld	a0,8(s1)
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	bac080e7          	jalr	-1108(ra) # 8000566c <_ZN9BufferCPP3putEi>
        i++;
    80004ac8:	0019071b          	addiw	a4,s2,1
    80004acc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ad0:	0004a683          	lw	a3,0(s1)
    80004ad4:	0026979b          	slliw	a5,a3,0x2
    80004ad8:	00d787bb          	addw	a5,a5,a3
    80004adc:	0017979b          	slliw	a5,a5,0x1
    80004ae0:	02f767bb          	remw	a5,a4,a5
    80004ae4:	fc0792e3          	bnez	a5,80004aa8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004ae8:	fb9ff06f          	j	80004aa0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004aec:	0104b503          	ld	a0,16(s1)
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	6e8080e7          	jalr	1768(ra) # 800021d8 <_ZN9Semaphore6signalEv>
}
    80004af8:	01813083          	ld	ra,24(sp)
    80004afc:	01013403          	ld	s0,16(sp)
    80004b00:	00813483          	ld	s1,8(sp)
    80004b04:	00013903          	ld	s2,0(sp)
    80004b08:	02010113          	addi	sp,sp,32
    80004b0c:	00008067          	ret

0000000080004b10 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b10:	fd010113          	addi	sp,sp,-48
    80004b14:	02113423          	sd	ra,40(sp)
    80004b18:	02813023          	sd	s0,32(sp)
    80004b1c:	00913c23          	sd	s1,24(sp)
    80004b20:	01213823          	sd	s2,16(sp)
    80004b24:	01313423          	sd	s3,8(sp)
    80004b28:	01413023          	sd	s4,0(sp)
    80004b2c:	03010413          	addi	s0,sp,48
    80004b30:	00050993          	mv	s3,a0
    80004b34:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b38:	00000a13          	li	s4,0
    80004b3c:	01c0006f          	j	80004b58 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	564080e7          	jalr	1380(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    80004b48:	0500006f          	j	80004b98 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b4c:	00a00513          	li	a0,10
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	a98080e7          	jalr	-1384(ra) # 800015e8 <_Z4putcc>
    while (!threadEnd) {
    80004b58:	00007797          	auipc	a5,0x7
    80004b5c:	ab87a783          	lw	a5,-1352(a5) # 8000b610 <_ZL9threadEnd>
    80004b60:	06079263          	bnez	a5,80004bc4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b64:	00893503          	ld	a0,8(s2)
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	b94080e7          	jalr	-1132(ra) # 800056fc <_ZN9BufferCPP3getEv>
        i++;
    80004b70:	001a049b          	addiw	s1,s4,1
    80004b74:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b78:	0ff57513          	andi	a0,a0,255
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	a6c080e7          	jalr	-1428(ra) # 800015e8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b84:	00092703          	lw	a4,0(s2)
    80004b88:	0027179b          	slliw	a5,a4,0x2
    80004b8c:	00e787bb          	addw	a5,a5,a4
    80004b90:	02f4e7bb          	remw	a5,s1,a5
    80004b94:	fa0786e3          	beqz	a5,80004b40 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b98:	05000793          	li	a5,80
    80004b9c:	02f4e4bb          	remw	s1,s1,a5
    80004ba0:	fa049ce3          	bnez	s1,80004b58 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004ba4:	fa9ff06f          	j	80004b4c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004ba8:	0209b783          	ld	a5,32(s3)
    80004bac:	0087b503          	ld	a0,8(a5)
    80004bb0:	00001097          	auipc	ra,0x1
    80004bb4:	b4c080e7          	jalr	-1204(ra) # 800056fc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004bb8:	0ff57513          	andi	a0,a0,255
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	708080e7          	jalr	1800(ra) # 800022c4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004bc4:	0209b783          	ld	a5,32(s3)
    80004bc8:	0087b503          	ld	a0,8(a5)
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	bbc080e7          	jalr	-1092(ra) # 80005788 <_ZN9BufferCPP6getCntEv>
    80004bd4:	fca04ae3          	bgtz	a0,80004ba8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004bd8:	01093503          	ld	a0,16(s2)
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	5fc080e7          	jalr	1532(ra) # 800021d8 <_ZN9Semaphore6signalEv>
}
    80004be4:	02813083          	ld	ra,40(sp)
    80004be8:	02013403          	ld	s0,32(sp)
    80004bec:	01813483          	ld	s1,24(sp)
    80004bf0:	01013903          	ld	s2,16(sp)
    80004bf4:	00813983          	ld	s3,8(sp)
    80004bf8:	00013a03          	ld	s4,0(sp)
    80004bfc:	03010113          	addi	sp,sp,48
    80004c00:	00008067          	ret

0000000080004c04 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004c04:	f8010113          	addi	sp,sp,-128
    80004c08:	06113c23          	sd	ra,120(sp)
    80004c0c:	06813823          	sd	s0,112(sp)
    80004c10:	06913423          	sd	s1,104(sp)
    80004c14:	07213023          	sd	s2,96(sp)
    80004c18:	05313c23          	sd	s3,88(sp)
    80004c1c:	05413823          	sd	s4,80(sp)
    80004c20:	05513423          	sd	s5,72(sp)
    80004c24:	05613023          	sd	s6,64(sp)
    80004c28:	03713c23          	sd	s7,56(sp)
    80004c2c:	03813823          	sd	s8,48(sp)
    80004c30:	03913423          	sd	s9,40(sp)
    80004c34:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c38:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c3c:	00004517          	auipc	a0,0x4
    80004c40:	3e450513          	addi	a0,a0,996 # 80009020 <CONSOLE_STATUS+0x10>
    80004c44:	00000097          	auipc	ra,0x0
    80004c48:	604080e7          	jalr	1540(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80004c4c:	01e00593          	li	a1,30
    80004c50:	f8040493          	addi	s1,s0,-128
    80004c54:	00048513          	mv	a0,s1
    80004c58:	00000097          	auipc	ra,0x0
    80004c5c:	678080e7          	jalr	1656(ra) # 800052d0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c60:	00048513          	mv	a0,s1
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	744080e7          	jalr	1860(ra) # 800053a8 <_Z11stringToIntPKc>
    80004c6c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c70:	00004517          	auipc	a0,0x4
    80004c74:	3d050513          	addi	a0,a0,976 # 80009040 <CONSOLE_STATUS+0x30>
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	5d0080e7          	jalr	1488(ra) # 80005248 <_Z11printStringPKc>
    getString(input, 30);
    80004c80:	01e00593          	li	a1,30
    80004c84:	00048513          	mv	a0,s1
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	648080e7          	jalr	1608(ra) # 800052d0 <_Z9getStringPci>
    n = stringToInt(input);
    80004c90:	00048513          	mv	a0,s1
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	714080e7          	jalr	1812(ra) # 800053a8 <_Z11stringToIntPKc>
    80004c9c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	3c050513          	addi	a0,a0,960 # 80009060 <CONSOLE_STATUS+0x50>
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	5a0080e7          	jalr	1440(ra) # 80005248 <_Z11printStringPKc>
    80004cb0:	00000613          	li	a2,0
    80004cb4:	00a00593          	li	a1,10
    80004cb8:	00090513          	mv	a0,s2
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	73c080e7          	jalr	1852(ra) # 800053f8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004cc4:	00004517          	auipc	a0,0x4
    80004cc8:	3b450513          	addi	a0,a0,948 # 80009078 <CONSOLE_STATUS+0x68>
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	57c080e7          	jalr	1404(ra) # 80005248 <_Z11printStringPKc>
    80004cd4:	00000613          	li	a2,0
    80004cd8:	00a00593          	li	a1,10
    80004cdc:	00048513          	mv	a0,s1
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	718080e7          	jalr	1816(ra) # 800053f8 <_Z8printIntiii>
    printString(".\n");
    80004ce8:	00004517          	auipc	a0,0x4
    80004cec:	3a850513          	addi	a0,a0,936 # 80009090 <CONSOLE_STATUS+0x80>
    80004cf0:	00000097          	auipc	ra,0x0
    80004cf4:	558080e7          	jalr	1368(ra) # 80005248 <_Z11printStringPKc>
    if(threadNum > n) {
    80004cf8:	0324c463          	blt	s1,s2,80004d20 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cfc:	03205c63          	blez	s2,80004d34 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004d00:	03800513          	li	a0,56
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	258080e7          	jalr	600(ra) # 80001f5c <_Znwm>
    80004d0c:	00050a93          	mv	s5,a0
    80004d10:	00048593          	mv	a1,s1
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	804080e7          	jalr	-2044(ra) # 80005518 <_ZN9BufferCPPC1Ei>
    80004d1c:	0300006f          	j	80004d4c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d20:	00004517          	auipc	a0,0x4
    80004d24:	37850513          	addi	a0,a0,888 # 80009098 <CONSOLE_STATUS+0x88>
    80004d28:	00000097          	auipc	ra,0x0
    80004d2c:	520080e7          	jalr	1312(ra) # 80005248 <_Z11printStringPKc>
        return;
    80004d30:	0140006f          	j	80004d44 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d34:	00004517          	auipc	a0,0x4
    80004d38:	3a450513          	addi	a0,a0,932 # 800090d8 <CONSOLE_STATUS+0xc8>
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	50c080e7          	jalr	1292(ra) # 80005248 <_Z11printStringPKc>
        return;
    80004d44:	000b8113          	mv	sp,s7
    80004d48:	2380006f          	j	80004f80 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d4c:	01000513          	li	a0,16
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	20c080e7          	jalr	524(ra) # 80001f5c <_Znwm>
    80004d58:	00050493          	mv	s1,a0
    80004d5c:	00000593          	li	a1,0
    80004d60:	ffffd097          	auipc	ra,0xffffd
    80004d64:	440080e7          	jalr	1088(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    80004d68:	00007797          	auipc	a5,0x7
    80004d6c:	8a97b823          	sd	s1,-1872(a5) # 8000b618 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d70:	00391793          	slli	a5,s2,0x3
    80004d74:	00f78793          	addi	a5,a5,15
    80004d78:	ff07f793          	andi	a5,a5,-16
    80004d7c:	40f10133          	sub	sp,sp,a5
    80004d80:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d84:	0019071b          	addiw	a4,s2,1
    80004d88:	00171793          	slli	a5,a4,0x1
    80004d8c:	00e787b3          	add	a5,a5,a4
    80004d90:	00379793          	slli	a5,a5,0x3
    80004d94:	00f78793          	addi	a5,a5,15
    80004d98:	ff07f793          	andi	a5,a5,-16
    80004d9c:	40f10133          	sub	sp,sp,a5
    80004da0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004da4:	00191c13          	slli	s8,s2,0x1
    80004da8:	012c07b3          	add	a5,s8,s2
    80004dac:	00379793          	slli	a5,a5,0x3
    80004db0:	00fa07b3          	add	a5,s4,a5
    80004db4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004db8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004dbc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004dc0:	02800513          	li	a0,40
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	198080e7          	jalr	408(ra) # 80001f5c <_Znwm>
    80004dcc:	00050b13          	mv	s6,a0
    80004dd0:	012c0c33          	add	s8,s8,s2
    80004dd4:	003c1c13          	slli	s8,s8,0x3
    80004dd8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	354080e7          	jalr	852(ra) # 80002130 <_ZN6ThreadC1Ev>
    80004de4:	00006797          	auipc	a5,0x6
    80004de8:	6ec78793          	addi	a5,a5,1772 # 8000b4d0 <_ZTV12ConsumerSync+0x10>
    80004dec:	00fb3023          	sd	a5,0(s6)
    80004df0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004df4:	000b0513          	mv	a0,s6
    80004df8:	ffffd097          	auipc	ra,0xffffd
    80004dfc:	2d4080e7          	jalr	724(ra) # 800020cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e00:	00000493          	li	s1,0
    80004e04:	0380006f          	j	80004e3c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e08:	00006797          	auipc	a5,0x6
    80004e0c:	6a078793          	addi	a5,a5,1696 # 8000b4a8 <_ZTV12ProducerSync+0x10>
    80004e10:	00fcb023          	sd	a5,0(s9)
    80004e14:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004e18:	00349793          	slli	a5,s1,0x3
    80004e1c:	00f987b3          	add	a5,s3,a5
    80004e20:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e24:	00349793          	slli	a5,s1,0x3
    80004e28:	00f987b3          	add	a5,s3,a5
    80004e2c:	0007b503          	ld	a0,0(a5)
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	29c080e7          	jalr	668(ra) # 800020cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e38:	0014849b          	addiw	s1,s1,1
    80004e3c:	0b24d063          	bge	s1,s2,80004edc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e40:	00149793          	slli	a5,s1,0x1
    80004e44:	009787b3          	add	a5,a5,s1
    80004e48:	00379793          	slli	a5,a5,0x3
    80004e4c:	00fa07b3          	add	a5,s4,a5
    80004e50:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e54:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e58:	00006717          	auipc	a4,0x6
    80004e5c:	7c073703          	ld	a4,1984(a4) # 8000b618 <_ZL10waitForAll>
    80004e60:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e64:	02905863          	blez	s1,80004e94 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e68:	02800513          	li	a0,40
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	0f0080e7          	jalr	240(ra) # 80001f5c <_Znwm>
    80004e74:	00050c93          	mv	s9,a0
    80004e78:	00149c13          	slli	s8,s1,0x1
    80004e7c:	009c0c33          	add	s8,s8,s1
    80004e80:	003c1c13          	slli	s8,s8,0x3
    80004e84:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	2a8080e7          	jalr	680(ra) # 80002130 <_ZN6ThreadC1Ev>
    80004e90:	f79ff06f          	j	80004e08 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e94:	02800513          	li	a0,40
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	0c4080e7          	jalr	196(ra) # 80001f5c <_Znwm>
    80004ea0:	00050c93          	mv	s9,a0
    80004ea4:	00149c13          	slli	s8,s1,0x1
    80004ea8:	009c0c33          	add	s8,s8,s1
    80004eac:	003c1c13          	slli	s8,s8,0x3
    80004eb0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	27c080e7          	jalr	636(ra) # 80002130 <_ZN6ThreadC1Ev>
    80004ebc:	00006797          	auipc	a5,0x6
    80004ec0:	5c478793          	addi	a5,a5,1476 # 8000b480 <_ZTV16ProducerKeyboard+0x10>
    80004ec4:	00fcb023          	sd	a5,0(s9)
    80004ec8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ecc:	00349793          	slli	a5,s1,0x3
    80004ed0:	00f987b3          	add	a5,s3,a5
    80004ed4:	0197b023          	sd	s9,0(a5)
    80004ed8:	f4dff06f          	j	80004e24 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	1c8080e7          	jalr	456(ra) # 800020a4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ee4:	00000493          	li	s1,0
    80004ee8:	00994e63          	blt	s2,s1,80004f04 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004eec:	00006517          	auipc	a0,0x6
    80004ef0:	72c53503          	ld	a0,1836(a0) # 8000b618 <_ZL10waitForAll>
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	310080e7          	jalr	784(ra) # 80002204 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004efc:	0014849b          	addiw	s1,s1,1
    80004f00:	fe9ff06f          	j	80004ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004f04:	00000493          	li	s1,0
    80004f08:	0080006f          	j	80004f10 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004f0c:	0014849b          	addiw	s1,s1,1
    80004f10:	0324d263          	bge	s1,s2,80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004f14:	00349793          	slli	a5,s1,0x3
    80004f18:	00f987b3          	add	a5,s3,a5
    80004f1c:	0007b503          	ld	a0,0(a5)
    80004f20:	fe0506e3          	beqz	a0,80004f0c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f24:	00053783          	ld	a5,0(a0)
    80004f28:	0087b783          	ld	a5,8(a5)
    80004f2c:	000780e7          	jalr	a5
    80004f30:	fddff06f          	j	80004f0c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f34:	000b0a63          	beqz	s6,80004f48 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f38:	000b3783          	ld	a5,0(s6)
    80004f3c:	0087b783          	ld	a5,8(a5)
    80004f40:	000b0513          	mv	a0,s6
    80004f44:	000780e7          	jalr	a5
    delete waitForAll;
    80004f48:	00006517          	auipc	a0,0x6
    80004f4c:	6d053503          	ld	a0,1744(a0) # 8000b618 <_ZL10waitForAll>
    80004f50:	00050863          	beqz	a0,80004f60 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f54:	00053783          	ld	a5,0(a0)
    80004f58:	0087b783          	ld	a5,8(a5)
    80004f5c:	000780e7          	jalr	a5
    delete buffer;
    80004f60:	000a8e63          	beqz	s5,80004f7c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f64:	000a8513          	mv	a0,s5
    80004f68:	00001097          	auipc	ra,0x1
    80004f6c:	8a8080e7          	jalr	-1880(ra) # 80005810 <_ZN9BufferCPPD1Ev>
    80004f70:	000a8513          	mv	a0,s5
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	010080e7          	jalr	16(ra) # 80001f84 <_ZdlPv>
    80004f7c:	000b8113          	mv	sp,s7

}
    80004f80:	f8040113          	addi	sp,s0,-128
    80004f84:	07813083          	ld	ra,120(sp)
    80004f88:	07013403          	ld	s0,112(sp)
    80004f8c:	06813483          	ld	s1,104(sp)
    80004f90:	06013903          	ld	s2,96(sp)
    80004f94:	05813983          	ld	s3,88(sp)
    80004f98:	05013a03          	ld	s4,80(sp)
    80004f9c:	04813a83          	ld	s5,72(sp)
    80004fa0:	04013b03          	ld	s6,64(sp)
    80004fa4:	03813b83          	ld	s7,56(sp)
    80004fa8:	03013c03          	ld	s8,48(sp)
    80004fac:	02813c83          	ld	s9,40(sp)
    80004fb0:	08010113          	addi	sp,sp,128
    80004fb4:	00008067          	ret
    80004fb8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fbc:	000a8513          	mv	a0,s5
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	fc4080e7          	jalr	-60(ra) # 80001f84 <_ZdlPv>
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	00007097          	auipc	ra,0x7
    80004fd0:	72c080e7          	jalr	1836(ra) # 8000c6f8 <_Unwind_Resume>
    80004fd4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fd8:	00048513          	mv	a0,s1
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	fa8080e7          	jalr	-88(ra) # 80001f84 <_ZdlPv>
    80004fe4:	00090513          	mv	a0,s2
    80004fe8:	00007097          	auipc	ra,0x7
    80004fec:	710080e7          	jalr	1808(ra) # 8000c6f8 <_Unwind_Resume>
    80004ff0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004ff4:	000b0513          	mv	a0,s6
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	f8c080e7          	jalr	-116(ra) # 80001f84 <_ZdlPv>
    80005000:	00048513          	mv	a0,s1
    80005004:	00007097          	auipc	ra,0x7
    80005008:	6f4080e7          	jalr	1780(ra) # 8000c6f8 <_Unwind_Resume>
    8000500c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005010:	000c8513          	mv	a0,s9
    80005014:	ffffd097          	auipc	ra,0xffffd
    80005018:	f70080e7          	jalr	-144(ra) # 80001f84 <_ZdlPv>
    8000501c:	00048513          	mv	a0,s1
    80005020:	00007097          	auipc	ra,0x7
    80005024:	6d8080e7          	jalr	1752(ra) # 8000c6f8 <_Unwind_Resume>
    80005028:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000502c:	000c8513          	mv	a0,s9
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	f54080e7          	jalr	-172(ra) # 80001f84 <_ZdlPv>
    80005038:	00048513          	mv	a0,s1
    8000503c:	00007097          	auipc	ra,0x7
    80005040:	6bc080e7          	jalr	1724(ra) # 8000c6f8 <_Unwind_Resume>

0000000080005044 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005044:	ff010113          	addi	sp,sp,-16
    80005048:	00113423          	sd	ra,8(sp)
    8000504c:	00813023          	sd	s0,0(sp)
    80005050:	01010413          	addi	s0,sp,16
    80005054:	00006797          	auipc	a5,0x6
    80005058:	47c78793          	addi	a5,a5,1148 # 8000b4d0 <_ZTV12ConsumerSync+0x10>
    8000505c:	00f53023          	sd	a5,0(a0)
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	f4c080e7          	jalr	-180(ra) # 80001fac <_ZN6ThreadD1Ev>
    80005068:	00813083          	ld	ra,8(sp)
    8000506c:	00013403          	ld	s0,0(sp)
    80005070:	01010113          	addi	sp,sp,16
    80005074:	00008067          	ret

0000000080005078 <_ZN12ConsumerSyncD0Ev>:
    80005078:	fe010113          	addi	sp,sp,-32
    8000507c:	00113c23          	sd	ra,24(sp)
    80005080:	00813823          	sd	s0,16(sp)
    80005084:	00913423          	sd	s1,8(sp)
    80005088:	02010413          	addi	s0,sp,32
    8000508c:	00050493          	mv	s1,a0
    80005090:	00006797          	auipc	a5,0x6
    80005094:	44078793          	addi	a5,a5,1088 # 8000b4d0 <_ZTV12ConsumerSync+0x10>
    80005098:	00f53023          	sd	a5,0(a0)
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	f10080e7          	jalr	-240(ra) # 80001fac <_ZN6ThreadD1Ev>
    800050a4:	00048513          	mv	a0,s1
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	edc080e7          	jalr	-292(ra) # 80001f84 <_ZdlPv>
    800050b0:	01813083          	ld	ra,24(sp)
    800050b4:	01013403          	ld	s0,16(sp)
    800050b8:	00813483          	ld	s1,8(sp)
    800050bc:	02010113          	addi	sp,sp,32
    800050c0:	00008067          	ret

00000000800050c4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050c4:	ff010113          	addi	sp,sp,-16
    800050c8:	00113423          	sd	ra,8(sp)
    800050cc:	00813023          	sd	s0,0(sp)
    800050d0:	01010413          	addi	s0,sp,16
    800050d4:	00006797          	auipc	a5,0x6
    800050d8:	3d478793          	addi	a5,a5,980 # 8000b4a8 <_ZTV12ProducerSync+0x10>
    800050dc:	00f53023          	sd	a5,0(a0)
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	ecc080e7          	jalr	-308(ra) # 80001fac <_ZN6ThreadD1Ev>
    800050e8:	00813083          	ld	ra,8(sp)
    800050ec:	00013403          	ld	s0,0(sp)
    800050f0:	01010113          	addi	sp,sp,16
    800050f4:	00008067          	ret

00000000800050f8 <_ZN12ProducerSyncD0Ev>:
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00113c23          	sd	ra,24(sp)
    80005100:	00813823          	sd	s0,16(sp)
    80005104:	00913423          	sd	s1,8(sp)
    80005108:	02010413          	addi	s0,sp,32
    8000510c:	00050493          	mv	s1,a0
    80005110:	00006797          	auipc	a5,0x6
    80005114:	39878793          	addi	a5,a5,920 # 8000b4a8 <_ZTV12ProducerSync+0x10>
    80005118:	00f53023          	sd	a5,0(a0)
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	e90080e7          	jalr	-368(ra) # 80001fac <_ZN6ThreadD1Ev>
    80005124:	00048513          	mv	a0,s1
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	e5c080e7          	jalr	-420(ra) # 80001f84 <_ZdlPv>
    80005130:	01813083          	ld	ra,24(sp)
    80005134:	01013403          	ld	s0,16(sp)
    80005138:	00813483          	ld	s1,8(sp)
    8000513c:	02010113          	addi	sp,sp,32
    80005140:	00008067          	ret

0000000080005144 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005144:	ff010113          	addi	sp,sp,-16
    80005148:	00113423          	sd	ra,8(sp)
    8000514c:	00813023          	sd	s0,0(sp)
    80005150:	01010413          	addi	s0,sp,16
    80005154:	00006797          	auipc	a5,0x6
    80005158:	32c78793          	addi	a5,a5,812 # 8000b480 <_ZTV16ProducerKeyboard+0x10>
    8000515c:	00f53023          	sd	a5,0(a0)
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	e4c080e7          	jalr	-436(ra) # 80001fac <_ZN6ThreadD1Ev>
    80005168:	00813083          	ld	ra,8(sp)
    8000516c:	00013403          	ld	s0,0(sp)
    80005170:	01010113          	addi	sp,sp,16
    80005174:	00008067          	ret

0000000080005178 <_ZN16ProducerKeyboardD0Ev>:
    80005178:	fe010113          	addi	sp,sp,-32
    8000517c:	00113c23          	sd	ra,24(sp)
    80005180:	00813823          	sd	s0,16(sp)
    80005184:	00913423          	sd	s1,8(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00050493          	mv	s1,a0
    80005190:	00006797          	auipc	a5,0x6
    80005194:	2f078793          	addi	a5,a5,752 # 8000b480 <_ZTV16ProducerKeyboard+0x10>
    80005198:	00f53023          	sd	a5,0(a0)
    8000519c:	ffffd097          	auipc	ra,0xffffd
    800051a0:	e10080e7          	jalr	-496(ra) # 80001fac <_ZN6ThreadD1Ev>
    800051a4:	00048513          	mv	a0,s1
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	ddc080e7          	jalr	-548(ra) # 80001f84 <_ZdlPv>
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	00813483          	ld	s1,8(sp)
    800051bc:	02010113          	addi	sp,sp,32
    800051c0:	00008067          	ret

00000000800051c4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051c4:	ff010113          	addi	sp,sp,-16
    800051c8:	00113423          	sd	ra,8(sp)
    800051cc:	00813023          	sd	s0,0(sp)
    800051d0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051d4:	02053583          	ld	a1,32(a0)
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	7e4080e7          	jalr	2020(ra) # 800049bc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051e0:	00813083          	ld	ra,8(sp)
    800051e4:	00013403          	ld	s0,0(sp)
    800051e8:	01010113          	addi	sp,sp,16
    800051ec:	00008067          	ret

00000000800051f0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051f0:	ff010113          	addi	sp,sp,-16
    800051f4:	00113423          	sd	ra,8(sp)
    800051f8:	00813023          	sd	s0,0(sp)
    800051fc:	01010413          	addi	s0,sp,16
        producer(td);
    80005200:	02053583          	ld	a1,32(a0)
    80005204:	00000097          	auipc	ra,0x0
    80005208:	878080e7          	jalr	-1928(ra) # 80004a7c <_ZN12ProducerSync8producerEPv>
    }
    8000520c:	00813083          	ld	ra,8(sp)
    80005210:	00013403          	ld	s0,0(sp)
    80005214:	01010113          	addi	sp,sp,16
    80005218:	00008067          	ret

000000008000521c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000521c:	ff010113          	addi	sp,sp,-16
    80005220:	00113423          	sd	ra,8(sp)
    80005224:	00813023          	sd	s0,0(sp)
    80005228:	01010413          	addi	s0,sp,16
        consumer(td);
    8000522c:	02053583          	ld	a1,32(a0)
    80005230:	00000097          	auipc	ra,0x0
    80005234:	8e0080e7          	jalr	-1824(ra) # 80004b10 <_ZN12ConsumerSync8consumerEPv>
    }
    80005238:	00813083          	ld	ra,8(sp)
    8000523c:	00013403          	ld	s0,0(sp)
    80005240:	01010113          	addi	sp,sp,16
    80005244:	00008067          	ret

0000000080005248 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005248:	fe010113          	addi	sp,sp,-32
    8000524c:	00113c23          	sd	ra,24(sp)
    80005250:	00813823          	sd	s0,16(sp)
    80005254:	00913423          	sd	s1,8(sp)
    80005258:	02010413          	addi	s0,sp,32
    8000525c:	00050493          	mv	s1,a0
    LOCK();
    80005260:	00100613          	li	a2,1
    80005264:	00000593          	li	a1,0
    80005268:	00006517          	auipc	a0,0x6
    8000526c:	3b850513          	addi	a0,a0,952 # 8000b620 <lockPrint>
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	0fc080e7          	jalr	252(ra) # 8000136c <copy_and_swap>
    80005278:	00050863          	beqz	a0,80005288 <_Z11printStringPKc+0x40>
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	1d4080e7          	jalr	468(ra) # 80001450 <_Z15thread_dispatchv>
    80005284:	fddff06f          	j	80005260 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005288:	0004c503          	lbu	a0,0(s1)
    8000528c:	00050a63          	beqz	a0,800052a0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	358080e7          	jalr	856(ra) # 800015e8 <_Z4putcc>
        string++;
    80005298:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000529c:	fedff06f          	j	80005288 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800052a0:	00000613          	li	a2,0
    800052a4:	00100593          	li	a1,1
    800052a8:	00006517          	auipc	a0,0x6
    800052ac:	37850513          	addi	a0,a0,888 # 8000b620 <lockPrint>
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	0bc080e7          	jalr	188(ra) # 8000136c <copy_and_swap>
    800052b8:	fe0514e3          	bnez	a0,800052a0 <_Z11printStringPKc+0x58>
}
    800052bc:	01813083          	ld	ra,24(sp)
    800052c0:	01013403          	ld	s0,16(sp)
    800052c4:	00813483          	ld	s1,8(sp)
    800052c8:	02010113          	addi	sp,sp,32
    800052cc:	00008067          	ret

00000000800052d0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052d0:	fd010113          	addi	sp,sp,-48
    800052d4:	02113423          	sd	ra,40(sp)
    800052d8:	02813023          	sd	s0,32(sp)
    800052dc:	00913c23          	sd	s1,24(sp)
    800052e0:	01213823          	sd	s2,16(sp)
    800052e4:	01313423          	sd	s3,8(sp)
    800052e8:	01413023          	sd	s4,0(sp)
    800052ec:	03010413          	addi	s0,sp,48
    800052f0:	00050993          	mv	s3,a0
    800052f4:	00058a13          	mv	s4,a1
    LOCK();
    800052f8:	00100613          	li	a2,1
    800052fc:	00000593          	li	a1,0
    80005300:	00006517          	auipc	a0,0x6
    80005304:	32050513          	addi	a0,a0,800 # 8000b620 <lockPrint>
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	064080e7          	jalr	100(ra) # 8000136c <copy_and_swap>
    80005310:	00050863          	beqz	a0,80005320 <_Z9getStringPci+0x50>
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	13c080e7          	jalr	316(ra) # 80001450 <_Z15thread_dispatchv>
    8000531c:	fddff06f          	j	800052f8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005320:	00000913          	li	s2,0
    80005324:	00090493          	mv	s1,s2
    80005328:	0019091b          	addiw	s2,s2,1
    8000532c:	03495a63          	bge	s2,s4,80005360 <_Z9getStringPci+0x90>
        cc = getc();
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	28c080e7          	jalr	652(ra) # 800015bc <_Z4getcv>
        if(cc < 1)
    80005338:	02050463          	beqz	a0,80005360 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000533c:	009984b3          	add	s1,s3,s1
    80005340:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005344:	00a00793          	li	a5,10
    80005348:	00f50a63          	beq	a0,a5,8000535c <_Z9getStringPci+0x8c>
    8000534c:	00d00793          	li	a5,13
    80005350:	fcf51ae3          	bne	a0,a5,80005324 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005354:	00090493          	mv	s1,s2
    80005358:	0080006f          	j	80005360 <_Z9getStringPci+0x90>
    8000535c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005360:	009984b3          	add	s1,s3,s1
    80005364:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005368:	00000613          	li	a2,0
    8000536c:	00100593          	li	a1,1
    80005370:	00006517          	auipc	a0,0x6
    80005374:	2b050513          	addi	a0,a0,688 # 8000b620 <lockPrint>
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	ff4080e7          	jalr	-12(ra) # 8000136c <copy_and_swap>
    80005380:	fe0514e3          	bnez	a0,80005368 <_Z9getStringPci+0x98>
    return buf;
}
    80005384:	00098513          	mv	a0,s3
    80005388:	02813083          	ld	ra,40(sp)
    8000538c:	02013403          	ld	s0,32(sp)
    80005390:	01813483          	ld	s1,24(sp)
    80005394:	01013903          	ld	s2,16(sp)
    80005398:	00813983          	ld	s3,8(sp)
    8000539c:	00013a03          	ld	s4,0(sp)
    800053a0:	03010113          	addi	sp,sp,48
    800053a4:	00008067          	ret

00000000800053a8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800053a8:	ff010113          	addi	sp,sp,-16
    800053ac:	00813423          	sd	s0,8(sp)
    800053b0:	01010413          	addi	s0,sp,16
    800053b4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053b8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053bc:	0006c603          	lbu	a2,0(a3)
    800053c0:	fd06071b          	addiw	a4,a2,-48
    800053c4:	0ff77713          	andi	a4,a4,255
    800053c8:	00900793          	li	a5,9
    800053cc:	02e7e063          	bltu	a5,a4,800053ec <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053d0:	0025179b          	slliw	a5,a0,0x2
    800053d4:	00a787bb          	addw	a5,a5,a0
    800053d8:	0017979b          	slliw	a5,a5,0x1
    800053dc:	00168693          	addi	a3,a3,1
    800053e0:	00c787bb          	addw	a5,a5,a2
    800053e4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053e8:	fd5ff06f          	j	800053bc <_Z11stringToIntPKc+0x14>
    return n;
}
    800053ec:	00813403          	ld	s0,8(sp)
    800053f0:	01010113          	addi	sp,sp,16
    800053f4:	00008067          	ret

00000000800053f8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053f8:	fc010113          	addi	sp,sp,-64
    800053fc:	02113c23          	sd	ra,56(sp)
    80005400:	02813823          	sd	s0,48(sp)
    80005404:	02913423          	sd	s1,40(sp)
    80005408:	03213023          	sd	s2,32(sp)
    8000540c:	01313c23          	sd	s3,24(sp)
    80005410:	04010413          	addi	s0,sp,64
    80005414:	00050493          	mv	s1,a0
    80005418:	00058913          	mv	s2,a1
    8000541c:	00060993          	mv	s3,a2
    LOCK();
    80005420:	00100613          	li	a2,1
    80005424:	00000593          	li	a1,0
    80005428:	00006517          	auipc	a0,0x6
    8000542c:	1f850513          	addi	a0,a0,504 # 8000b620 <lockPrint>
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	f3c080e7          	jalr	-196(ra) # 8000136c <copy_and_swap>
    80005438:	00050863          	beqz	a0,80005448 <_Z8printIntiii+0x50>
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	014080e7          	jalr	20(ra) # 80001450 <_Z15thread_dispatchv>
    80005444:	fddff06f          	j	80005420 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005448:	00098463          	beqz	s3,80005450 <_Z8printIntiii+0x58>
    8000544c:	0804c463          	bltz	s1,800054d4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005450:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005454:	00000593          	li	a1,0
    }

    i = 0;
    80005458:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000545c:	0009079b          	sext.w	a5,s2
    80005460:	0325773b          	remuw	a4,a0,s2
    80005464:	00048613          	mv	a2,s1
    80005468:	0014849b          	addiw	s1,s1,1
    8000546c:	02071693          	slli	a3,a4,0x20
    80005470:	0206d693          	srli	a3,a3,0x20
    80005474:	00006717          	auipc	a4,0x6
    80005478:	07470713          	addi	a4,a4,116 # 8000b4e8 <digits>
    8000547c:	00d70733          	add	a4,a4,a3
    80005480:	00074683          	lbu	a3,0(a4)
    80005484:	fd040713          	addi	a4,s0,-48
    80005488:	00c70733          	add	a4,a4,a2
    8000548c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005490:	0005071b          	sext.w	a4,a0
    80005494:	0325553b          	divuw	a0,a0,s2
    80005498:	fcf772e3          	bgeu	a4,a5,8000545c <_Z8printIntiii+0x64>
    if(neg)
    8000549c:	00058c63          	beqz	a1,800054b4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800054a0:	fd040793          	addi	a5,s0,-48
    800054a4:	009784b3          	add	s1,a5,s1
    800054a8:	02d00793          	li	a5,45
    800054ac:	fef48823          	sb	a5,-16(s1)
    800054b0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054b4:	fff4849b          	addiw	s1,s1,-1
    800054b8:	0204c463          	bltz	s1,800054e0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054bc:	fd040793          	addi	a5,s0,-48
    800054c0:	009787b3          	add	a5,a5,s1
    800054c4:	ff07c503          	lbu	a0,-16(a5)
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	120080e7          	jalr	288(ra) # 800015e8 <_Z4putcc>
    800054d0:	fe5ff06f          	j	800054b4 <_Z8printIntiii+0xbc>
        x = -xx;
    800054d4:	4090053b          	negw	a0,s1
        neg = 1;
    800054d8:	00100593          	li	a1,1
        x = -xx;
    800054dc:	f7dff06f          	j	80005458 <_Z8printIntiii+0x60>

    UNLOCK();
    800054e0:	00000613          	li	a2,0
    800054e4:	00100593          	li	a1,1
    800054e8:	00006517          	auipc	a0,0x6
    800054ec:	13850513          	addi	a0,a0,312 # 8000b620 <lockPrint>
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	e7c080e7          	jalr	-388(ra) # 8000136c <copy_and_swap>
    800054f8:	fe0514e3          	bnez	a0,800054e0 <_Z8printIntiii+0xe8>
    800054fc:	03813083          	ld	ra,56(sp)
    80005500:	03013403          	ld	s0,48(sp)
    80005504:	02813483          	ld	s1,40(sp)
    80005508:	02013903          	ld	s2,32(sp)
    8000550c:	01813983          	ld	s3,24(sp)
    80005510:	04010113          	addi	sp,sp,64
    80005514:	00008067          	ret

0000000080005518 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005518:	fd010113          	addi	sp,sp,-48
    8000551c:	02113423          	sd	ra,40(sp)
    80005520:	02813023          	sd	s0,32(sp)
    80005524:	00913c23          	sd	s1,24(sp)
    80005528:	01213823          	sd	s2,16(sp)
    8000552c:	01313423          	sd	s3,8(sp)
    80005530:	03010413          	addi	s0,sp,48
    80005534:	00050493          	mv	s1,a0
    80005538:	00058913          	mv	s2,a1
    8000553c:	0015879b          	addiw	a5,a1,1
    80005540:	0007851b          	sext.w	a0,a5
    80005544:	00f4a023          	sw	a5,0(s1)
    80005548:	0004a823          	sw	zero,16(s1)
    8000554c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005550:	00251513          	slli	a0,a0,0x2
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	e38080e7          	jalr	-456(ra) # 8000138c <_Z9mem_allocm>
    8000555c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005560:	01000513          	li	a0,16
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	9f8080e7          	jalr	-1544(ra) # 80001f5c <_Znwm>
    8000556c:	00050993          	mv	s3,a0
    80005570:	00000593          	li	a1,0
    80005574:	ffffd097          	auipc	ra,0xffffd
    80005578:	c2c080e7          	jalr	-980(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    8000557c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005580:	01000513          	li	a0,16
    80005584:	ffffd097          	auipc	ra,0xffffd
    80005588:	9d8080e7          	jalr	-1576(ra) # 80001f5c <_Znwm>
    8000558c:	00050993          	mv	s3,a0
    80005590:	00090593          	mv	a1,s2
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	c0c080e7          	jalr	-1012(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    8000559c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800055a0:	01000513          	li	a0,16
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	9b8080e7          	jalr	-1608(ra) # 80001f5c <_Znwm>
    800055ac:	00050913          	mv	s2,a0
    800055b0:	00100593          	li	a1,1
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	bec080e7          	jalr	-1044(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    800055bc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055c0:	01000513          	li	a0,16
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	998080e7          	jalr	-1640(ra) # 80001f5c <_Znwm>
    800055cc:	00050913          	mv	s2,a0
    800055d0:	00100593          	li	a1,1
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	bcc080e7          	jalr	-1076(ra) # 800021a0 <_ZN9SemaphoreC1Ej>
    800055dc:	0324b823          	sd	s2,48(s1)
}
    800055e0:	02813083          	ld	ra,40(sp)
    800055e4:	02013403          	ld	s0,32(sp)
    800055e8:	01813483          	ld	s1,24(sp)
    800055ec:	01013903          	ld	s2,16(sp)
    800055f0:	00813983          	ld	s3,8(sp)
    800055f4:	03010113          	addi	sp,sp,48
    800055f8:	00008067          	ret
    800055fc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005600:	00098513          	mv	a0,s3
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	980080e7          	jalr	-1664(ra) # 80001f84 <_ZdlPv>
    8000560c:	00048513          	mv	a0,s1
    80005610:	00007097          	auipc	ra,0x7
    80005614:	0e8080e7          	jalr	232(ra) # 8000c6f8 <_Unwind_Resume>
    80005618:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000561c:	00098513          	mv	a0,s3
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	964080e7          	jalr	-1692(ra) # 80001f84 <_ZdlPv>
    80005628:	00048513          	mv	a0,s1
    8000562c:	00007097          	auipc	ra,0x7
    80005630:	0cc080e7          	jalr	204(ra) # 8000c6f8 <_Unwind_Resume>
    80005634:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005638:	00090513          	mv	a0,s2
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	948080e7          	jalr	-1720(ra) # 80001f84 <_ZdlPv>
    80005644:	00048513          	mv	a0,s1
    80005648:	00007097          	auipc	ra,0x7
    8000564c:	0b0080e7          	jalr	176(ra) # 8000c6f8 <_Unwind_Resume>
    80005650:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005654:	00090513          	mv	a0,s2
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	92c080e7          	jalr	-1748(ra) # 80001f84 <_ZdlPv>
    80005660:	00048513          	mv	a0,s1
    80005664:	00007097          	auipc	ra,0x7
    80005668:	094080e7          	jalr	148(ra) # 8000c6f8 <_Unwind_Resume>

000000008000566c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00113c23          	sd	ra,24(sp)
    80005674:	00813823          	sd	s0,16(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	01213023          	sd	s2,0(sp)
    80005680:	02010413          	addi	s0,sp,32
    80005684:	00050493          	mv	s1,a0
    80005688:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000568c:	01853503          	ld	a0,24(a0)
    80005690:	ffffd097          	auipc	ra,0xffffd
    80005694:	b74080e7          	jalr	-1164(ra) # 80002204 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005698:	0304b503          	ld	a0,48(s1)
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	b68080e7          	jalr	-1176(ra) # 80002204 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056a4:	0084b783          	ld	a5,8(s1)
    800056a8:	0144a703          	lw	a4,20(s1)
    800056ac:	00271713          	slli	a4,a4,0x2
    800056b0:	00e787b3          	add	a5,a5,a4
    800056b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056b8:	0144a783          	lw	a5,20(s1)
    800056bc:	0017879b          	addiw	a5,a5,1
    800056c0:	0004a703          	lw	a4,0(s1)
    800056c4:	02e7e7bb          	remw	a5,a5,a4
    800056c8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056cc:	0304b503          	ld	a0,48(s1)
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	b08080e7          	jalr	-1272(ra) # 800021d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056d8:	0204b503          	ld	a0,32(s1)
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	afc080e7          	jalr	-1284(ra) # 800021d8 <_ZN9Semaphore6signalEv>

}
    800056e4:	01813083          	ld	ra,24(sp)
    800056e8:	01013403          	ld	s0,16(sp)
    800056ec:	00813483          	ld	s1,8(sp)
    800056f0:	00013903          	ld	s2,0(sp)
    800056f4:	02010113          	addi	sp,sp,32
    800056f8:	00008067          	ret

00000000800056fc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	01213023          	sd	s2,0(sp)
    80005710:	02010413          	addi	s0,sp,32
    80005714:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005718:	02053503          	ld	a0,32(a0)
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	ae8080e7          	jalr	-1304(ra) # 80002204 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005724:	0284b503          	ld	a0,40(s1)
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	adc080e7          	jalr	-1316(ra) # 80002204 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005730:	0084b703          	ld	a4,8(s1)
    80005734:	0104a783          	lw	a5,16(s1)
    80005738:	00279693          	slli	a3,a5,0x2
    8000573c:	00d70733          	add	a4,a4,a3
    80005740:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005744:	0017879b          	addiw	a5,a5,1
    80005748:	0004a703          	lw	a4,0(s1)
    8000574c:	02e7e7bb          	remw	a5,a5,a4
    80005750:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005754:	0284b503          	ld	a0,40(s1)
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	a80080e7          	jalr	-1408(ra) # 800021d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005760:	0184b503          	ld	a0,24(s1)
    80005764:	ffffd097          	auipc	ra,0xffffd
    80005768:	a74080e7          	jalr	-1420(ra) # 800021d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000576c:	00090513          	mv	a0,s2
    80005770:	01813083          	ld	ra,24(sp)
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	00813483          	ld	s1,8(sp)
    8000577c:	00013903          	ld	s2,0(sp)
    80005780:	02010113          	addi	sp,sp,32
    80005784:	00008067          	ret

0000000080005788 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005788:	fe010113          	addi	sp,sp,-32
    8000578c:	00113c23          	sd	ra,24(sp)
    80005790:	00813823          	sd	s0,16(sp)
    80005794:	00913423          	sd	s1,8(sp)
    80005798:	01213023          	sd	s2,0(sp)
    8000579c:	02010413          	addi	s0,sp,32
    800057a0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800057a4:	02853503          	ld	a0,40(a0)
    800057a8:	ffffd097          	auipc	ra,0xffffd
    800057ac:	a5c080e7          	jalr	-1444(ra) # 80002204 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057b0:	0304b503          	ld	a0,48(s1)
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	a50080e7          	jalr	-1456(ra) # 80002204 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057bc:	0144a783          	lw	a5,20(s1)
    800057c0:	0104a903          	lw	s2,16(s1)
    800057c4:	0327ce63          	blt	a5,s2,80005800 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057cc:	0304b503          	ld	a0,48(s1)
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	a08080e7          	jalr	-1528(ra) # 800021d8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057d8:	0284b503          	ld	a0,40(s1)
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	9fc080e7          	jalr	-1540(ra) # 800021d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057e4:	00090513          	mv	a0,s2
    800057e8:	01813083          	ld	ra,24(sp)
    800057ec:	01013403          	ld	s0,16(sp)
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	00013903          	ld	s2,0(sp)
    800057f8:	02010113          	addi	sp,sp,32
    800057fc:	00008067          	ret
        ret = cap - head + tail;
    80005800:	0004a703          	lw	a4,0(s1)
    80005804:	4127093b          	subw	s2,a4,s2
    80005808:	00f9093b          	addw	s2,s2,a5
    8000580c:	fc1ff06f          	j	800057cc <_ZN9BufferCPP6getCntEv+0x44>

0000000080005810 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005810:	fe010113          	addi	sp,sp,-32
    80005814:	00113c23          	sd	ra,24(sp)
    80005818:	00813823          	sd	s0,16(sp)
    8000581c:	00913423          	sd	s1,8(sp)
    80005820:	02010413          	addi	s0,sp,32
    80005824:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005828:	00a00513          	li	a0,10
    8000582c:	ffffd097          	auipc	ra,0xffffd
    80005830:	a98080e7          	jalr	-1384(ra) # 800022c4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005834:	00004517          	auipc	a0,0x4
    80005838:	9cc50513          	addi	a0,a0,-1588 # 80009200 <CONSOLE_STATUS+0x1f0>
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	a0c080e7          	jalr	-1524(ra) # 80005248 <_Z11printStringPKc>
    while (getCnt()) {
    80005844:	00048513          	mv	a0,s1
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	f40080e7          	jalr	-192(ra) # 80005788 <_ZN9BufferCPP6getCntEv>
    80005850:	02050c63          	beqz	a0,80005888 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005854:	0084b783          	ld	a5,8(s1)
    80005858:	0104a703          	lw	a4,16(s1)
    8000585c:	00271713          	slli	a4,a4,0x2
    80005860:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005864:	0007c503          	lbu	a0,0(a5)
    80005868:	ffffd097          	auipc	ra,0xffffd
    8000586c:	a5c080e7          	jalr	-1444(ra) # 800022c4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005870:	0104a783          	lw	a5,16(s1)
    80005874:	0017879b          	addiw	a5,a5,1
    80005878:	0004a703          	lw	a4,0(s1)
    8000587c:	02e7e7bb          	remw	a5,a5,a4
    80005880:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005884:	fc1ff06f          	j	80005844 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005888:	02100513          	li	a0,33
    8000588c:	ffffd097          	auipc	ra,0xffffd
    80005890:	a38080e7          	jalr	-1480(ra) # 800022c4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005894:	00a00513          	li	a0,10
    80005898:	ffffd097          	auipc	ra,0xffffd
    8000589c:	a2c080e7          	jalr	-1492(ra) # 800022c4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800058a0:	0084b503          	ld	a0,8(s1)
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	b1c080e7          	jalr	-1252(ra) # 800013c0 <_Z8mem_freePv>
    delete itemAvailable;
    800058ac:	0204b503          	ld	a0,32(s1)
    800058b0:	00050863          	beqz	a0,800058c0 <_ZN9BufferCPPD1Ev+0xb0>
    800058b4:	00053783          	ld	a5,0(a0)
    800058b8:	0087b783          	ld	a5,8(a5)
    800058bc:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058c0:	0184b503          	ld	a0,24(s1)
    800058c4:	00050863          	beqz	a0,800058d4 <_ZN9BufferCPPD1Ev+0xc4>
    800058c8:	00053783          	ld	a5,0(a0)
    800058cc:	0087b783          	ld	a5,8(a5)
    800058d0:	000780e7          	jalr	a5
    delete mutexTail;
    800058d4:	0304b503          	ld	a0,48(s1)
    800058d8:	00050863          	beqz	a0,800058e8 <_ZN9BufferCPPD1Ev+0xd8>
    800058dc:	00053783          	ld	a5,0(a0)
    800058e0:	0087b783          	ld	a5,8(a5)
    800058e4:	000780e7          	jalr	a5
    delete mutexHead;
    800058e8:	0284b503          	ld	a0,40(s1)
    800058ec:	00050863          	beqz	a0,800058fc <_ZN9BufferCPPD1Ev+0xec>
    800058f0:	00053783          	ld	a5,0(a0)
    800058f4:	0087b783          	ld	a5,8(a5)
    800058f8:	000780e7          	jalr	a5
}
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	00813483          	ld	s1,8(sp)
    80005908:	02010113          	addi	sp,sp,32
    8000590c:	00008067          	ret

0000000080005910 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005910:	fe010113          	addi	sp,sp,-32
    80005914:	00113c23          	sd	ra,24(sp)
    80005918:	00813823          	sd	s0,16(sp)
    8000591c:	00913423          	sd	s1,8(sp)
    80005920:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005924:	00004517          	auipc	a0,0x4
    80005928:	8f450513          	addi	a0,a0,-1804 # 80009218 <CONSOLE_STATUS+0x208>
    8000592c:	00000097          	auipc	ra,0x0
    80005930:	91c080e7          	jalr	-1764(ra) # 80005248 <_Z11printStringPKc>
    int test = getc() - '0';
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	c88080e7          	jalr	-888(ra) # 800015bc <_Z4getcv>
    8000593c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	c7c080e7          	jalr	-900(ra) # 800015bc <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005948:	00700793          	li	a5,7
    8000594c:	1097e263          	bltu	a5,s1,80005a50 <_Z8userMainv+0x140>
    80005950:	00249493          	slli	s1,s1,0x2
    80005954:	00004717          	auipc	a4,0x4
    80005958:	b1c70713          	addi	a4,a4,-1252 # 80009470 <CONSOLE_STATUS+0x460>
    8000595c:	00e484b3          	add	s1,s1,a4
    80005960:	0004a783          	lw	a5,0(s1)
    80005964:	00e787b3          	add	a5,a5,a4
    80005968:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000596c:	fffff097          	auipc	ra,0xfffff
    80005970:	f54080e7          	jalr	-172(ra) # 800048c0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	8c450513          	addi	a0,a0,-1852 # 80009238 <CONSOLE_STATUS+0x228>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	8cc080e7          	jalr	-1844(ra) # 80005248 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005984:	01813083          	ld	ra,24(sp)
    80005988:	01013403          	ld	s0,16(sp)
    8000598c:	00813483          	ld	s1,8(sp)
    80005990:	02010113          	addi	sp,sp,32
    80005994:	00008067          	ret
            Threads_CPP_API_test();
    80005998:	ffffe097          	auipc	ra,0xffffe
    8000599c:	e08080e7          	jalr	-504(ra) # 800037a0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800059a0:	00004517          	auipc	a0,0x4
    800059a4:	8d850513          	addi	a0,a0,-1832 # 80009278 <CONSOLE_STATUS+0x268>
    800059a8:	00000097          	auipc	ra,0x0
    800059ac:	8a0080e7          	jalr	-1888(ra) # 80005248 <_Z11printStringPKc>
            break;
    800059b0:	fd5ff06f          	j	80005984 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800059b4:	ffffd097          	auipc	ra,0xffffd
    800059b8:	640080e7          	jalr	1600(ra) # 80002ff4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800059bc:	00004517          	auipc	a0,0x4
    800059c0:	8fc50513          	addi	a0,a0,-1796 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	884080e7          	jalr	-1916(ra) # 80005248 <_Z11printStringPKc>
            break;
    800059cc:	fb9ff06f          	j	80005984 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800059d0:	fffff097          	auipc	ra,0xfffff
    800059d4:	234080e7          	jalr	564(ra) # 80004c04 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	93050513          	addi	a0,a0,-1744 # 80009308 <CONSOLE_STATUS+0x2f8>
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	868080e7          	jalr	-1944(ra) # 80005248 <_Z11printStringPKc>
            break;
    800059e8:	f9dff06f          	j	80005984 <_Z8userMainv+0x74>
            testSleeping();
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	11c080e7          	jalr	284(ra) # 80005b08 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	96c50513          	addi	a0,a0,-1684 # 80009360 <CONSOLE_STATUS+0x350>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	84c080e7          	jalr	-1972(ra) # 80005248 <_Z11printStringPKc>
            break;
    80005a04:	f81ff06f          	j	80005984 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005a08:	ffffe097          	auipc	ra,0xffffe
    80005a0c:	258080e7          	jalr	600(ra) # 80003c60 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005a10:	00004517          	auipc	a0,0x4
    80005a14:	98050513          	addi	a0,a0,-1664 # 80009390 <CONSOLE_STATUS+0x380>
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	830080e7          	jalr	-2000(ra) # 80005248 <_Z11printStringPKc>
            break;
    80005a20:	f65ff06f          	j	80005984 <_Z8userMainv+0x74>
            System_Mode_test();
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	658080e7          	jalr	1624(ra) # 8000607c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005a2c:	00004517          	auipc	a0,0x4
    80005a30:	9a450513          	addi	a0,a0,-1628 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	814080e7          	jalr	-2028(ra) # 80005248 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	9b450513          	addi	a0,a0,-1612 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	804080e7          	jalr	-2044(ra) # 80005248 <_Z11printStringPKc>
            break;
    80005a4c:	f39ff06f          	j	80005984 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	9f850513          	addi	a0,a0,-1544 # 80009448 <CONSOLE_STATUS+0x438>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	7f0080e7          	jalr	2032(ra) # 80005248 <_Z11printStringPKc>
    80005a60:	f25ff06f          	j	80005984 <_Z8userMainv+0x74>

0000000080005a64 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a64:	fe010113          	addi	sp,sp,-32
    80005a68:	00113c23          	sd	ra,24(sp)
    80005a6c:	00813823          	sd	s0,16(sp)
    80005a70:	00913423          	sd	s1,8(sp)
    80005a74:	01213023          	sd	s2,0(sp)
    80005a78:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a7c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a80:	00600493          	li	s1,6
    while (--i > 0) {
    80005a84:	fff4849b          	addiw	s1,s1,-1
    80005a88:	04905463          	blez	s1,80005ad0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a8c:	00004517          	auipc	a0,0x4
    80005a90:	a0450513          	addi	a0,a0,-1532 # 80009490 <CONSOLE_STATUS+0x480>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	7b4080e7          	jalr	1972(ra) # 80005248 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a9c:	00000613          	li	a2,0
    80005aa0:	00a00593          	li	a1,10
    80005aa4:	0009051b          	sext.w	a0,s2
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	950080e7          	jalr	-1712(ra) # 800053f8 <_Z8printIntiii>
        printString(" !\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	9e850513          	addi	a0,a0,-1560 # 80009498 <CONSOLE_STATUS+0x488>
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	790080e7          	jalr	1936(ra) # 80005248 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ac0:	00090513          	mv	a0,s2
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	b4c080e7          	jalr	-1204(ra) # 80001610 <_Z10time_sleepm>
    while (--i > 0) {
    80005acc:	fb9ff06f          	j	80005a84 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005ad0:	00a00793          	li	a5,10
    80005ad4:	02f95933          	divu	s2,s2,a5
    80005ad8:	fff90913          	addi	s2,s2,-1
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	b4c78793          	addi	a5,a5,-1204 # 8000b628 <_ZL8finished>
    80005ae4:	01278933          	add	s2,a5,s2
    80005ae8:	00100793          	li	a5,1
    80005aec:	00f90023          	sb	a5,0(s2)
}
    80005af0:	01813083          	ld	ra,24(sp)
    80005af4:	01013403          	ld	s0,16(sp)
    80005af8:	00813483          	ld	s1,8(sp)
    80005afc:	00013903          	ld	s2,0(sp)
    80005b00:	02010113          	addi	sp,sp,32
    80005b04:	00008067          	ret

0000000080005b08 <_Z12testSleepingv>:

void testSleeping() {
    80005b08:	fc010113          	addi	sp,sp,-64
    80005b0c:	02113c23          	sd	ra,56(sp)
    80005b10:	02813823          	sd	s0,48(sp)
    80005b14:	02913423          	sd	s1,40(sp)
    80005b18:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005b1c:	00a00793          	li	a5,10
    80005b20:	fcf43823          	sd	a5,-48(s0)
    80005b24:	01400793          	li	a5,20
    80005b28:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b2c:	00000493          	li	s1,0
    80005b30:	02c0006f          	j	80005b5c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b34:	00349793          	slli	a5,s1,0x3
    80005b38:	fd040613          	addi	a2,s0,-48
    80005b3c:	00f60633          	add	a2,a2,a5
    80005b40:	00000597          	auipc	a1,0x0
    80005b44:	f2458593          	addi	a1,a1,-220 # 80005a64 <_ZL9sleepyRunPv>
    80005b48:	fc040513          	addi	a0,s0,-64
    80005b4c:	00f50533          	add	a0,a0,a5
    80005b50:	ffffc097          	auipc	ra,0xffffc
    80005b54:	8a0080e7          	jalr	-1888(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b58:	0014849b          	addiw	s1,s1,1
    80005b5c:	00100793          	li	a5,1
    80005b60:	fc97dae3          	bge	a5,s1,80005b34 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b64:	00006797          	auipc	a5,0x6
    80005b68:	ac47c783          	lbu	a5,-1340(a5) # 8000b628 <_ZL8finished>
    80005b6c:	fe078ce3          	beqz	a5,80005b64 <_Z12testSleepingv+0x5c>
    80005b70:	00006797          	auipc	a5,0x6
    80005b74:	ab97c783          	lbu	a5,-1351(a5) # 8000b629 <_ZL8finished+0x1>
    80005b78:	fe0786e3          	beqz	a5,80005b64 <_Z12testSleepingv+0x5c>
}
    80005b7c:	03813083          	ld	ra,56(sp)
    80005b80:	03013403          	ld	s0,48(sp)
    80005b84:	02813483          	ld	s1,40(sp)
    80005b88:	04010113          	addi	sp,sp,64
    80005b8c:	00008067          	ret

0000000080005b90 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b90:	fe010113          	addi	sp,sp,-32
    80005b94:	00113c23          	sd	ra,24(sp)
    80005b98:	00813823          	sd	s0,16(sp)
    80005b9c:	00913423          	sd	s1,8(sp)
    80005ba0:	01213023          	sd	s2,0(sp)
    80005ba4:	02010413          	addi	s0,sp,32
    80005ba8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005bac:	00100793          	li	a5,1
    80005bb0:	02a7f863          	bgeu	a5,a0,80005be0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005bb4:	00a00793          	li	a5,10
    80005bb8:	02f577b3          	remu	a5,a0,a5
    80005bbc:	02078e63          	beqz	a5,80005bf8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005bc0:	fff48513          	addi	a0,s1,-1
    80005bc4:	00000097          	auipc	ra,0x0
    80005bc8:	fcc080e7          	jalr	-52(ra) # 80005b90 <_ZL9fibonaccim>
    80005bcc:	00050913          	mv	s2,a0
    80005bd0:	ffe48513          	addi	a0,s1,-2
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	fbc080e7          	jalr	-68(ra) # 80005b90 <_ZL9fibonaccim>
    80005bdc:	00a90533          	add	a0,s2,a0
}
    80005be0:	01813083          	ld	ra,24(sp)
    80005be4:	01013403          	ld	s0,16(sp)
    80005be8:	00813483          	ld	s1,8(sp)
    80005bec:	00013903          	ld	s2,0(sp)
    80005bf0:	02010113          	addi	sp,sp,32
    80005bf4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	858080e7          	jalr	-1960(ra) # 80001450 <_Z15thread_dispatchv>
    80005c00:	fc1ff06f          	j	80005bc0 <_ZL9fibonaccim+0x30>

0000000080005c04 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005c04:	fe010113          	addi	sp,sp,-32
    80005c08:	00113c23          	sd	ra,24(sp)
    80005c0c:	00813823          	sd	s0,16(sp)
    80005c10:	00913423          	sd	s1,8(sp)
    80005c14:	01213023          	sd	s2,0(sp)
    80005c18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005c1c:	00a00493          	li	s1,10
    80005c20:	0400006f          	j	80005c60 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c24:	00003517          	auipc	a0,0x3
    80005c28:	54450513          	addi	a0,a0,1348 # 80009168 <CONSOLE_STATUS+0x158>
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	61c080e7          	jalr	1564(ra) # 80005248 <_Z11printStringPKc>
    80005c34:	00000613          	li	a2,0
    80005c38:	00a00593          	li	a1,10
    80005c3c:	00048513          	mv	a0,s1
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	7b8080e7          	jalr	1976(ra) # 800053f8 <_Z8printIntiii>
    80005c48:	00003517          	auipc	a0,0x3
    80005c4c:	71050513          	addi	a0,a0,1808 # 80009358 <CONSOLE_STATUS+0x348>
    80005c50:	fffff097          	auipc	ra,0xfffff
    80005c54:	5f8080e7          	jalr	1528(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c58:	0014849b          	addiw	s1,s1,1
    80005c5c:	0ff4f493          	andi	s1,s1,255
    80005c60:	00c00793          	li	a5,12
    80005c64:	fc97f0e3          	bgeu	a5,s1,80005c24 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c68:	00003517          	auipc	a0,0x3
    80005c6c:	50850513          	addi	a0,a0,1288 # 80009170 <CONSOLE_STATUS+0x160>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	5d8080e7          	jalr	1496(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c78:	00500313          	li	t1,5
    thread_dispatch();
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	7d4080e7          	jalr	2004(ra) # 80001450 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c84:	01000513          	li	a0,16
    80005c88:	00000097          	auipc	ra,0x0
    80005c8c:	f08080e7          	jalr	-248(ra) # 80005b90 <_ZL9fibonaccim>
    80005c90:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c94:	00003517          	auipc	a0,0x3
    80005c98:	4ec50513          	addi	a0,a0,1260 # 80009180 <CONSOLE_STATUS+0x170>
    80005c9c:	fffff097          	auipc	ra,0xfffff
    80005ca0:	5ac080e7          	jalr	1452(ra) # 80005248 <_Z11printStringPKc>
    80005ca4:	00000613          	li	a2,0
    80005ca8:	00a00593          	li	a1,10
    80005cac:	0009051b          	sext.w	a0,s2
    80005cb0:	fffff097          	auipc	ra,0xfffff
    80005cb4:	748080e7          	jalr	1864(ra) # 800053f8 <_Z8printIntiii>
    80005cb8:	00003517          	auipc	a0,0x3
    80005cbc:	6a050513          	addi	a0,a0,1696 # 80009358 <CONSOLE_STATUS+0x348>
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	588080e7          	jalr	1416(ra) # 80005248 <_Z11printStringPKc>
    80005cc8:	0400006f          	j	80005d08 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ccc:	00003517          	auipc	a0,0x3
    80005cd0:	49c50513          	addi	a0,a0,1180 # 80009168 <CONSOLE_STATUS+0x158>
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	574080e7          	jalr	1396(ra) # 80005248 <_Z11printStringPKc>
    80005cdc:	00000613          	li	a2,0
    80005ce0:	00a00593          	li	a1,10
    80005ce4:	00048513          	mv	a0,s1
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	710080e7          	jalr	1808(ra) # 800053f8 <_Z8printIntiii>
    80005cf0:	00003517          	auipc	a0,0x3
    80005cf4:	66850513          	addi	a0,a0,1640 # 80009358 <CONSOLE_STATUS+0x348>
    80005cf8:	fffff097          	auipc	ra,0xfffff
    80005cfc:	550080e7          	jalr	1360(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005d00:	0014849b          	addiw	s1,s1,1
    80005d04:	0ff4f493          	andi	s1,s1,255
    80005d08:	00f00793          	li	a5,15
    80005d0c:	fc97f0e3          	bgeu	a5,s1,80005ccc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005d10:	00003517          	auipc	a0,0x3
    80005d14:	48050513          	addi	a0,a0,1152 # 80009190 <CONSOLE_STATUS+0x180>
    80005d18:	fffff097          	auipc	ra,0xfffff
    80005d1c:	530080e7          	jalr	1328(ra) # 80005248 <_Z11printStringPKc>
    finishedD = true;
    80005d20:	00100793          	li	a5,1
    80005d24:	00006717          	auipc	a4,0x6
    80005d28:	90f70323          	sb	a5,-1786(a4) # 8000b62a <_ZL9finishedD>
    thread_dispatch();
    80005d2c:	ffffb097          	auipc	ra,0xffffb
    80005d30:	724080e7          	jalr	1828(ra) # 80001450 <_Z15thread_dispatchv>
}
    80005d34:	01813083          	ld	ra,24(sp)
    80005d38:	01013403          	ld	s0,16(sp)
    80005d3c:	00813483          	ld	s1,8(sp)
    80005d40:	00013903          	ld	s2,0(sp)
    80005d44:	02010113          	addi	sp,sp,32
    80005d48:	00008067          	ret

0000000080005d4c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d4c:	fe010113          	addi	sp,sp,-32
    80005d50:	00113c23          	sd	ra,24(sp)
    80005d54:	00813823          	sd	s0,16(sp)
    80005d58:	00913423          	sd	s1,8(sp)
    80005d5c:	01213023          	sd	s2,0(sp)
    80005d60:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d64:	00000493          	li	s1,0
    80005d68:	0400006f          	j	80005da8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	3cc50513          	addi	a0,a0,972 # 80009138 <CONSOLE_STATUS+0x128>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	4d4080e7          	jalr	1236(ra) # 80005248 <_Z11printStringPKc>
    80005d7c:	00000613          	li	a2,0
    80005d80:	00a00593          	li	a1,10
    80005d84:	00048513          	mv	a0,s1
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	670080e7          	jalr	1648(ra) # 800053f8 <_Z8printIntiii>
    80005d90:	00003517          	auipc	a0,0x3
    80005d94:	5c850513          	addi	a0,a0,1480 # 80009358 <CONSOLE_STATUS+0x348>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	4b0080e7          	jalr	1200(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005da0:	0014849b          	addiw	s1,s1,1
    80005da4:	0ff4f493          	andi	s1,s1,255
    80005da8:	00200793          	li	a5,2
    80005dac:	fc97f0e3          	bgeu	a5,s1,80005d6c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005db0:	00003517          	auipc	a0,0x3
    80005db4:	39050513          	addi	a0,a0,912 # 80009140 <CONSOLE_STATUS+0x130>
    80005db8:	fffff097          	auipc	ra,0xfffff
    80005dbc:	490080e7          	jalr	1168(ra) # 80005248 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005dc0:	00700313          	li	t1,7
    thread_dispatch();
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	68c080e7          	jalr	1676(ra) # 80001450 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005dcc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005dd0:	00003517          	auipc	a0,0x3
    80005dd4:	38050513          	addi	a0,a0,896 # 80009150 <CONSOLE_STATUS+0x140>
    80005dd8:	fffff097          	auipc	ra,0xfffff
    80005ddc:	470080e7          	jalr	1136(ra) # 80005248 <_Z11printStringPKc>
    80005de0:	00000613          	li	a2,0
    80005de4:	00a00593          	li	a1,10
    80005de8:	0009051b          	sext.w	a0,s2
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	60c080e7          	jalr	1548(ra) # 800053f8 <_Z8printIntiii>
    80005df4:	00003517          	auipc	a0,0x3
    80005df8:	56450513          	addi	a0,a0,1380 # 80009358 <CONSOLE_STATUS+0x348>
    80005dfc:	fffff097          	auipc	ra,0xfffff
    80005e00:	44c080e7          	jalr	1100(ra) # 80005248 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005e04:	00c00513          	li	a0,12
    80005e08:	00000097          	auipc	ra,0x0
    80005e0c:	d88080e7          	jalr	-632(ra) # 80005b90 <_ZL9fibonaccim>
    80005e10:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	34450513          	addi	a0,a0,836 # 80009158 <CONSOLE_STATUS+0x148>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	42c080e7          	jalr	1068(ra) # 80005248 <_Z11printStringPKc>
    80005e24:	00000613          	li	a2,0
    80005e28:	00a00593          	li	a1,10
    80005e2c:	0009051b          	sext.w	a0,s2
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	5c8080e7          	jalr	1480(ra) # 800053f8 <_Z8printIntiii>
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	52050513          	addi	a0,a0,1312 # 80009358 <CONSOLE_STATUS+0x348>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	408080e7          	jalr	1032(ra) # 80005248 <_Z11printStringPKc>
    80005e48:	0400006f          	j	80005e88 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	2ec50513          	addi	a0,a0,748 # 80009138 <CONSOLE_STATUS+0x128>
    80005e54:	fffff097          	auipc	ra,0xfffff
    80005e58:	3f4080e7          	jalr	1012(ra) # 80005248 <_Z11printStringPKc>
    80005e5c:	00000613          	li	a2,0
    80005e60:	00a00593          	li	a1,10
    80005e64:	00048513          	mv	a0,s1
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	590080e7          	jalr	1424(ra) # 800053f8 <_Z8printIntiii>
    80005e70:	00003517          	auipc	a0,0x3
    80005e74:	4e850513          	addi	a0,a0,1256 # 80009358 <CONSOLE_STATUS+0x348>
    80005e78:	fffff097          	auipc	ra,0xfffff
    80005e7c:	3d0080e7          	jalr	976(ra) # 80005248 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e80:	0014849b          	addiw	s1,s1,1
    80005e84:	0ff4f493          	andi	s1,s1,255
    80005e88:	00500793          	li	a5,5
    80005e8c:	fc97f0e3          	bgeu	a5,s1,80005e4c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e90:	00003517          	auipc	a0,0x3
    80005e94:	28050513          	addi	a0,a0,640 # 80009110 <CONSOLE_STATUS+0x100>
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	3b0080e7          	jalr	944(ra) # 80005248 <_Z11printStringPKc>
    finishedC = true;
    80005ea0:	00100793          	li	a5,1
    80005ea4:	00005717          	auipc	a4,0x5
    80005ea8:	78f703a3          	sb	a5,1927(a4) # 8000b62b <_ZL9finishedC>
    thread_dispatch();
    80005eac:	ffffb097          	auipc	ra,0xffffb
    80005eb0:	5a4080e7          	jalr	1444(ra) # 80001450 <_Z15thread_dispatchv>
}
    80005eb4:	01813083          	ld	ra,24(sp)
    80005eb8:	01013403          	ld	s0,16(sp)
    80005ebc:	00813483          	ld	s1,8(sp)
    80005ec0:	00013903          	ld	s2,0(sp)
    80005ec4:	02010113          	addi	sp,sp,32
    80005ec8:	00008067          	ret

0000000080005ecc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ecc:	fe010113          	addi	sp,sp,-32
    80005ed0:	00113c23          	sd	ra,24(sp)
    80005ed4:	00813823          	sd	s0,16(sp)
    80005ed8:	00913423          	sd	s1,8(sp)
    80005edc:	01213023          	sd	s2,0(sp)
    80005ee0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005ee4:	00000913          	li	s2,0
    80005ee8:	0400006f          	j	80005f28 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005eec:	ffffb097          	auipc	ra,0xffffb
    80005ef0:	564080e7          	jalr	1380(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ef4:	00148493          	addi	s1,s1,1
    80005ef8:	000027b7          	lui	a5,0x2
    80005efc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f00:	0097ee63          	bltu	a5,s1,80005f1c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f04:	00000713          	li	a4,0
    80005f08:	000077b7          	lui	a5,0x7
    80005f0c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f10:	fce7eee3          	bltu	a5,a4,80005eec <_ZL11workerBodyBPv+0x20>
    80005f14:	00170713          	addi	a4,a4,1
    80005f18:	ff1ff06f          	j	80005f08 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005f1c:	00a00793          	li	a5,10
    80005f20:	04f90663          	beq	s2,a5,80005f6c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005f24:	00190913          	addi	s2,s2,1
    80005f28:	00f00793          	li	a5,15
    80005f2c:	0527e463          	bltu	a5,s2,80005f74 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	1f050513          	addi	a0,a0,496 # 80009120 <CONSOLE_STATUS+0x110>
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	310080e7          	jalr	784(ra) # 80005248 <_Z11printStringPKc>
    80005f40:	00000613          	li	a2,0
    80005f44:	00a00593          	li	a1,10
    80005f48:	0009051b          	sext.w	a0,s2
    80005f4c:	fffff097          	auipc	ra,0xfffff
    80005f50:	4ac080e7          	jalr	1196(ra) # 800053f8 <_Z8printIntiii>
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	40450513          	addi	a0,a0,1028 # 80009358 <CONSOLE_STATUS+0x348>
    80005f5c:	fffff097          	auipc	ra,0xfffff
    80005f60:	2ec080e7          	jalr	748(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f64:	00000493          	li	s1,0
    80005f68:	f91ff06f          	j	80005ef8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f6c:	14102ff3          	csrr	t6,sepc
    80005f70:	fb5ff06f          	j	80005f24 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f74:	00003517          	auipc	a0,0x3
    80005f78:	1b450513          	addi	a0,a0,436 # 80009128 <CONSOLE_STATUS+0x118>
    80005f7c:	fffff097          	auipc	ra,0xfffff
    80005f80:	2cc080e7          	jalr	716(ra) # 80005248 <_Z11printStringPKc>
    finishedB = true;
    80005f84:	00100793          	li	a5,1
    80005f88:	00005717          	auipc	a4,0x5
    80005f8c:	6af70223          	sb	a5,1700(a4) # 8000b62c <_ZL9finishedB>
    thread_dispatch();
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	4c0080e7          	jalr	1216(ra) # 80001450 <_Z15thread_dispatchv>
}
    80005f98:	01813083          	ld	ra,24(sp)
    80005f9c:	01013403          	ld	s0,16(sp)
    80005fa0:	00813483          	ld	s1,8(sp)
    80005fa4:	00013903          	ld	s2,0(sp)
    80005fa8:	02010113          	addi	sp,sp,32
    80005fac:	00008067          	ret

0000000080005fb0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005fb0:	fe010113          	addi	sp,sp,-32
    80005fb4:	00113c23          	sd	ra,24(sp)
    80005fb8:	00813823          	sd	s0,16(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	01213023          	sd	s2,0(sp)
    80005fc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005fc8:	00000913          	li	s2,0
    80005fcc:	0380006f          	j	80006004 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	480080e7          	jalr	1152(ra) # 80001450 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fd8:	00148493          	addi	s1,s1,1
    80005fdc:	000027b7          	lui	a5,0x2
    80005fe0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fe4:	0097ee63          	bltu	a5,s1,80006000 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fe8:	00000713          	li	a4,0
    80005fec:	000077b7          	lui	a5,0x7
    80005ff0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ff4:	fce7eee3          	bltu	a5,a4,80005fd0 <_ZL11workerBodyAPv+0x20>
    80005ff8:	00170713          	addi	a4,a4,1
    80005ffc:	ff1ff06f          	j	80005fec <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006000:	00190913          	addi	s2,s2,1
    80006004:	00900793          	li	a5,9
    80006008:	0527e063          	bltu	a5,s2,80006048 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	0fc50513          	addi	a0,a0,252 # 80009108 <CONSOLE_STATUS+0xf8>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	234080e7          	jalr	564(ra) # 80005248 <_Z11printStringPKc>
    8000601c:	00000613          	li	a2,0
    80006020:	00a00593          	li	a1,10
    80006024:	0009051b          	sext.w	a0,s2
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	3d0080e7          	jalr	976(ra) # 800053f8 <_Z8printIntiii>
    80006030:	00003517          	auipc	a0,0x3
    80006034:	32850513          	addi	a0,a0,808 # 80009358 <CONSOLE_STATUS+0x348>
    80006038:	fffff097          	auipc	ra,0xfffff
    8000603c:	210080e7          	jalr	528(ra) # 80005248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006040:	00000493          	li	s1,0
    80006044:	f99ff06f          	j	80005fdc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006048:	00003517          	auipc	a0,0x3
    8000604c:	0c850513          	addi	a0,a0,200 # 80009110 <CONSOLE_STATUS+0x100>
    80006050:	fffff097          	auipc	ra,0xfffff
    80006054:	1f8080e7          	jalr	504(ra) # 80005248 <_Z11printStringPKc>
    finishedA = true;
    80006058:	00100793          	li	a5,1
    8000605c:	00005717          	auipc	a4,0x5
    80006060:	5cf708a3          	sb	a5,1489(a4) # 8000b62d <_ZL9finishedA>
}
    80006064:	01813083          	ld	ra,24(sp)
    80006068:	01013403          	ld	s0,16(sp)
    8000606c:	00813483          	ld	s1,8(sp)
    80006070:	00013903          	ld	s2,0(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret

000000008000607c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000607c:	fd010113          	addi	sp,sp,-48
    80006080:	02113423          	sd	ra,40(sp)
    80006084:	02813023          	sd	s0,32(sp)
    80006088:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000608c:	00000613          	li	a2,0
    80006090:	00000597          	auipc	a1,0x0
    80006094:	f2058593          	addi	a1,a1,-224 # 80005fb0 <_ZL11workerBodyAPv>
    80006098:	fd040513          	addi	a0,s0,-48
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	354080e7          	jalr	852(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800060a4:	00003517          	auipc	a0,0x3
    800060a8:	0fc50513          	addi	a0,a0,252 # 800091a0 <CONSOLE_STATUS+0x190>
    800060ac:	fffff097          	auipc	ra,0xfffff
    800060b0:	19c080e7          	jalr	412(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800060b4:	00000613          	li	a2,0
    800060b8:	00000597          	auipc	a1,0x0
    800060bc:	e1458593          	addi	a1,a1,-492 # 80005ecc <_ZL11workerBodyBPv>
    800060c0:	fd840513          	addi	a0,s0,-40
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	32c080e7          	jalr	812(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	0ec50513          	addi	a0,a0,236 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	174080e7          	jalr	372(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800060dc:	00000613          	li	a2,0
    800060e0:	00000597          	auipc	a1,0x0
    800060e4:	c6c58593          	addi	a1,a1,-916 # 80005d4c <_ZL11workerBodyCPv>
    800060e8:	fe040513          	addi	a0,s0,-32
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	304080e7          	jalr	772(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	0dc50513          	addi	a0,a0,220 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	14c080e7          	jalr	332(ra) # 80005248 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006104:	00000613          	li	a2,0
    80006108:	00000597          	auipc	a1,0x0
    8000610c:	afc58593          	addi	a1,a1,-1284 # 80005c04 <_ZL11workerBodyDPv>
    80006110:	fe840513          	addi	a0,s0,-24
    80006114:	ffffb097          	auipc	ra,0xffffb
    80006118:	2dc080e7          	jalr	732(ra) # 800013f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000611c:	00003517          	auipc	a0,0x3
    80006120:	0cc50513          	addi	a0,a0,204 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80006124:	fffff097          	auipc	ra,0xfffff
    80006128:	124080e7          	jalr	292(ra) # 80005248 <_Z11printStringPKc>
    8000612c:	00c0006f          	j	80006138 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	320080e7          	jalr	800(ra) # 80001450 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006138:	00005797          	auipc	a5,0x5
    8000613c:	4f57c783          	lbu	a5,1269(a5) # 8000b62d <_ZL9finishedA>
    80006140:	fe0788e3          	beqz	a5,80006130 <_Z16System_Mode_testv+0xb4>
    80006144:	00005797          	auipc	a5,0x5
    80006148:	4e87c783          	lbu	a5,1256(a5) # 8000b62c <_ZL9finishedB>
    8000614c:	fe0782e3          	beqz	a5,80006130 <_Z16System_Mode_testv+0xb4>
    80006150:	00005797          	auipc	a5,0x5
    80006154:	4db7c783          	lbu	a5,1243(a5) # 8000b62b <_ZL9finishedC>
    80006158:	fc078ce3          	beqz	a5,80006130 <_Z16System_Mode_testv+0xb4>
    8000615c:	00005797          	auipc	a5,0x5
    80006160:	4ce7c783          	lbu	a5,1230(a5) # 8000b62a <_ZL9finishedD>
    80006164:	fc0786e3          	beqz	a5,80006130 <_Z16System_Mode_testv+0xb4>
    }

}
    80006168:	02813083          	ld	ra,40(sp)
    8000616c:	02013403          	ld	s0,32(sp)
    80006170:	03010113          	addi	sp,sp,48
    80006174:	00008067          	ret

0000000080006178 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006178:	fe010113          	addi	sp,sp,-32
    8000617c:	00113c23          	sd	ra,24(sp)
    80006180:	00813823          	sd	s0,16(sp)
    80006184:	00913423          	sd	s1,8(sp)
    80006188:	01213023          	sd	s2,0(sp)
    8000618c:	02010413          	addi	s0,sp,32
    80006190:	00050493          	mv	s1,a0
    80006194:	00058913          	mv	s2,a1
    80006198:	0015879b          	addiw	a5,a1,1
    8000619c:	0007851b          	sext.w	a0,a5
    800061a0:	00f4a023          	sw	a5,0(s1)
    800061a4:	0004a823          	sw	zero,16(s1)
    800061a8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800061ac:	00251513          	slli	a0,a0,0x2
    800061b0:	ffffb097          	auipc	ra,0xffffb
    800061b4:	1dc080e7          	jalr	476(ra) # 8000138c <_Z9mem_allocm>
    800061b8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800061bc:	00000593          	li	a1,0
    800061c0:	02048513          	addi	a0,s1,32
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	310080e7          	jalr	784(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
    sem_open(&spaceAvailable, _cap);
    800061cc:	00090593          	mv	a1,s2
    800061d0:	01848513          	addi	a0,s1,24
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	300080e7          	jalr	768(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
    sem_open(&mutexHead, 1);
    800061dc:	00100593          	li	a1,1
    800061e0:	02848513          	addi	a0,s1,40
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	2f0080e7          	jalr	752(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
    sem_open(&mutexTail, 1);
    800061ec:	00100593          	li	a1,1
    800061f0:	03048513          	addi	a0,s1,48
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	2e0080e7          	jalr	736(ra) # 800014d4 <_Z8sem_openPP10_Semaphorej>
}
    800061fc:	01813083          	ld	ra,24(sp)
    80006200:	01013403          	ld	s0,16(sp)
    80006204:	00813483          	ld	s1,8(sp)
    80006208:	00013903          	ld	s2,0(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret

0000000080006214 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006214:	fe010113          	addi	sp,sp,-32
    80006218:	00113c23          	sd	ra,24(sp)
    8000621c:	00813823          	sd	s0,16(sp)
    80006220:	00913423          	sd	s1,8(sp)
    80006224:	01213023          	sd	s2,0(sp)
    80006228:	02010413          	addi	s0,sp,32
    8000622c:	00050493          	mv	s1,a0
    80006230:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006234:	01853503          	ld	a0,24(a0)
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	300080e7          	jalr	768(ra) # 80001538 <_Z8sem_waitP10_Semaphore>

    sem_wait(mutexTail);
    80006240:	0304b503          	ld	a0,48(s1)
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	2f4080e7          	jalr	756(ra) # 80001538 <_Z8sem_waitP10_Semaphore>
    buffer[tail] = val;
    8000624c:	0084b783          	ld	a5,8(s1)
    80006250:	0144a703          	lw	a4,20(s1)
    80006254:	00271713          	slli	a4,a4,0x2
    80006258:	00e787b3          	add	a5,a5,a4
    8000625c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006260:	0144a783          	lw	a5,20(s1)
    80006264:	0017879b          	addiw	a5,a5,1
    80006268:	0004a703          	lw	a4,0(s1)
    8000626c:	02e7e7bb          	remw	a5,a5,a4
    80006270:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006274:	0304b503          	ld	a0,48(s1)
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	2f0080e7          	jalr	752(ra) # 80001568 <_Z10sem_signalP10_Semaphore>

    sem_signal(itemAvailable);
    80006280:	0204b503          	ld	a0,32(s1)
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	2e4080e7          	jalr	740(ra) # 80001568 <_Z10sem_signalP10_Semaphore>

}
    8000628c:	01813083          	ld	ra,24(sp)
    80006290:	01013403          	ld	s0,16(sp)
    80006294:	00813483          	ld	s1,8(sp)
    80006298:	00013903          	ld	s2,0(sp)
    8000629c:	02010113          	addi	sp,sp,32
    800062a0:	00008067          	ret

00000000800062a4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800062a4:	fe010113          	addi	sp,sp,-32
    800062a8:	00113c23          	sd	ra,24(sp)
    800062ac:	00813823          	sd	s0,16(sp)
    800062b0:	00913423          	sd	s1,8(sp)
    800062b4:	01213023          	sd	s2,0(sp)
    800062b8:	02010413          	addi	s0,sp,32
    800062bc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800062c0:	02053503          	ld	a0,32(a0)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	274080e7          	jalr	628(ra) # 80001538 <_Z8sem_waitP10_Semaphore>

    sem_wait(mutexHead);
    800062cc:	0284b503          	ld	a0,40(s1)
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	268080e7          	jalr	616(ra) # 80001538 <_Z8sem_waitP10_Semaphore>

    int ret = buffer[head];
    800062d8:	0084b703          	ld	a4,8(s1)
    800062dc:	0104a783          	lw	a5,16(s1)
    800062e0:	00279693          	slli	a3,a5,0x2
    800062e4:	00d70733          	add	a4,a4,a3
    800062e8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062ec:	0017879b          	addiw	a5,a5,1
    800062f0:	0004a703          	lw	a4,0(s1)
    800062f4:	02e7e7bb          	remw	a5,a5,a4
    800062f8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062fc:	0284b503          	ld	a0,40(s1)
    80006300:	ffffb097          	auipc	ra,0xffffb
    80006304:	268080e7          	jalr	616(ra) # 80001568 <_Z10sem_signalP10_Semaphore>

    sem_signal(spaceAvailable);
    80006308:	0184b503          	ld	a0,24(s1)
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	25c080e7          	jalr	604(ra) # 80001568 <_Z10sem_signalP10_Semaphore>

    return ret;
}
    80006314:	00090513          	mv	a0,s2
    80006318:	01813083          	ld	ra,24(sp)
    8000631c:	01013403          	ld	s0,16(sp)
    80006320:	00813483          	ld	s1,8(sp)
    80006324:	00013903          	ld	s2,0(sp)
    80006328:	02010113          	addi	sp,sp,32
    8000632c:	00008067          	ret

0000000080006330 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006330:	fe010113          	addi	sp,sp,-32
    80006334:	00113c23          	sd	ra,24(sp)
    80006338:	00813823          	sd	s0,16(sp)
    8000633c:	00913423          	sd	s1,8(sp)
    80006340:	01213023          	sd	s2,0(sp)
    80006344:	02010413          	addi	s0,sp,32
    80006348:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000634c:	02853503          	ld	a0,40(a0)
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	1e8080e7          	jalr	488(ra) # 80001538 <_Z8sem_waitP10_Semaphore>
    sem_wait(mutexTail);
    80006358:	0304b503          	ld	a0,48(s1)
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	1dc080e7          	jalr	476(ra) # 80001538 <_Z8sem_waitP10_Semaphore>

    if (tail >= head) {
    80006364:	0144a783          	lw	a5,20(s1)
    80006368:	0104a903          	lw	s2,16(s1)
    8000636c:	0327ce63          	blt	a5,s2,800063a8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006370:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006374:	0304b503          	ld	a0,48(s1)
    80006378:	ffffb097          	auipc	ra,0xffffb
    8000637c:	1f0080e7          	jalr	496(ra) # 80001568 <_Z10sem_signalP10_Semaphore>
    sem_signal(mutexHead);
    80006380:	0284b503          	ld	a0,40(s1)
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	1e4080e7          	jalr	484(ra) # 80001568 <_Z10sem_signalP10_Semaphore>

    return ret;
}
    8000638c:	00090513          	mv	a0,s2
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	01013403          	ld	s0,16(sp)
    80006398:	00813483          	ld	s1,8(sp)
    8000639c:	00013903          	ld	s2,0(sp)
    800063a0:	02010113          	addi	sp,sp,32
    800063a4:	00008067          	ret
        ret = cap - head + tail;
    800063a8:	0004a703          	lw	a4,0(s1)
    800063ac:	4127093b          	subw	s2,a4,s2
    800063b0:	00f9093b          	addw	s2,s2,a5
    800063b4:	fc1ff06f          	j	80006374 <_ZN6Buffer6getCntEv+0x44>

00000000800063b8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800063b8:	fe010113          	addi	sp,sp,-32
    800063bc:	00113c23          	sd	ra,24(sp)
    800063c0:	00813823          	sd	s0,16(sp)
    800063c4:	00913423          	sd	s1,8(sp)
    800063c8:	02010413          	addi	s0,sp,32
    800063cc:	00050493          	mv	s1,a0
    putc('\n');
    800063d0:	00a00513          	li	a0,10
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	214080e7          	jalr	532(ra) # 800015e8 <_Z4putcc>
    printString("Buffer deleted!\n");
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	e2450513          	addi	a0,a0,-476 # 80009200 <CONSOLE_STATUS+0x1f0>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	e64080e7          	jalr	-412(ra) # 80005248 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063ec:	00048513          	mv	a0,s1
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	f40080e7          	jalr	-192(ra) # 80006330 <_ZN6Buffer6getCntEv>
    800063f8:	02a05c63          	blez	a0,80006430 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063fc:	0084b783          	ld	a5,8(s1)
    80006400:	0104a703          	lw	a4,16(s1)
    80006404:	00271713          	slli	a4,a4,0x2
    80006408:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000640c:	0007c503          	lbu	a0,0(a5)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	1d8080e7          	jalr	472(ra) # 800015e8 <_Z4putcc>
        head = (head + 1) % cap;
    80006418:	0104a783          	lw	a5,16(s1)
    8000641c:	0017879b          	addiw	a5,a5,1
    80006420:	0004a703          	lw	a4,0(s1)
    80006424:	02e7e7bb          	remw	a5,a5,a4
    80006428:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000642c:	fc1ff06f          	j	800063ec <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006430:	02100513          	li	a0,33
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	1b4080e7          	jalr	436(ra) # 800015e8 <_Z4putcc>
    putc('\n');
    8000643c:	00a00513          	li	a0,10
    80006440:	ffffb097          	auipc	ra,0xffffb
    80006444:	1a8080e7          	jalr	424(ra) # 800015e8 <_Z4putcc>
    mem_free(buffer);
    80006448:	0084b503          	ld	a0,8(s1)
    8000644c:	ffffb097          	auipc	ra,0xffffb
    80006450:	f74080e7          	jalr	-140(ra) # 800013c0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006454:	0204b503          	ld	a0,32(s1)
    80006458:	ffffb097          	auipc	ra,0xffffb
    8000645c:	0b0080e7          	jalr	176(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
    sem_close(spaceAvailable);
    80006460:	0184b503          	ld	a0,24(s1)
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	0a4080e7          	jalr	164(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
    sem_close(mutexTail);
    8000646c:	0304b503          	ld	a0,48(s1)
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	098080e7          	jalr	152(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
    sem_close(mutexHead);
    80006478:	0284b503          	ld	a0,40(s1)
    8000647c:	ffffb097          	auipc	ra,0xffffb
    80006480:	08c080e7          	jalr	140(ra) # 80001508 <_Z9sem_closeP10_Semaphore>
}
    80006484:	01813083          	ld	ra,24(sp)
    80006488:	01013403          	ld	s0,16(sp)
    8000648c:	00813483          	ld	s1,8(sp)
    80006490:	02010113          	addi	sp,sp,32
    80006494:	00008067          	ret

0000000080006498 <start>:
    80006498:	ff010113          	addi	sp,sp,-16
    8000649c:	00813423          	sd	s0,8(sp)
    800064a0:	01010413          	addi	s0,sp,16
    800064a4:	300027f3          	csrr	a5,mstatus
    800064a8:	ffffe737          	lui	a4,0xffffe
    800064ac:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f6f>
    800064b0:	00e7f7b3          	and	a5,a5,a4
    800064b4:	00001737          	lui	a4,0x1
    800064b8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064bc:	00e7e7b3          	or	a5,a5,a4
    800064c0:	30079073          	csrw	mstatus,a5
    800064c4:	00000797          	auipc	a5,0x0
    800064c8:	16078793          	addi	a5,a5,352 # 80006624 <system_main>
    800064cc:	34179073          	csrw	mepc,a5
    800064d0:	00000793          	li	a5,0
    800064d4:	18079073          	csrw	satp,a5
    800064d8:	000107b7          	lui	a5,0x10
    800064dc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800064e0:	30279073          	csrw	medeleg,a5
    800064e4:	30379073          	csrw	mideleg,a5
    800064e8:	104027f3          	csrr	a5,sie
    800064ec:	2227e793          	ori	a5,a5,546
    800064f0:	10479073          	csrw	sie,a5
    800064f4:	fff00793          	li	a5,-1
    800064f8:	00a7d793          	srli	a5,a5,0xa
    800064fc:	3b079073          	csrw	pmpaddr0,a5
    80006500:	00f00793          	li	a5,15
    80006504:	3a079073          	csrw	pmpcfg0,a5
    80006508:	f14027f3          	csrr	a5,mhartid
    8000650c:	0200c737          	lui	a4,0x200c
    80006510:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006514:	0007869b          	sext.w	a3,a5
    80006518:	00269713          	slli	a4,a3,0x2
    8000651c:	000f4637          	lui	a2,0xf4
    80006520:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006524:	00d70733          	add	a4,a4,a3
    80006528:	0037979b          	slliw	a5,a5,0x3
    8000652c:	020046b7          	lui	a3,0x2004
    80006530:	00d787b3          	add	a5,a5,a3
    80006534:	00c585b3          	add	a1,a1,a2
    80006538:	00371693          	slli	a3,a4,0x3
    8000653c:	00005717          	auipc	a4,0x5
    80006540:	0f470713          	addi	a4,a4,244 # 8000b630 <timer_scratch>
    80006544:	00b7b023          	sd	a1,0(a5)
    80006548:	00d70733          	add	a4,a4,a3
    8000654c:	00f73c23          	sd	a5,24(a4)
    80006550:	02c73023          	sd	a2,32(a4)
    80006554:	34071073          	csrw	mscratch,a4
    80006558:	00000797          	auipc	a5,0x0
    8000655c:	6e878793          	addi	a5,a5,1768 # 80006c40 <timervec>
    80006560:	30579073          	csrw	mtvec,a5
    80006564:	300027f3          	csrr	a5,mstatus
    80006568:	0087e793          	ori	a5,a5,8
    8000656c:	30079073          	csrw	mstatus,a5
    80006570:	304027f3          	csrr	a5,mie
    80006574:	0807e793          	ori	a5,a5,128
    80006578:	30479073          	csrw	mie,a5
    8000657c:	f14027f3          	csrr	a5,mhartid
    80006580:	0007879b          	sext.w	a5,a5
    80006584:	00078213          	mv	tp,a5
    80006588:	30200073          	mret
    8000658c:	00813403          	ld	s0,8(sp)
    80006590:	01010113          	addi	sp,sp,16
    80006594:	00008067          	ret

0000000080006598 <timerinit>:
    80006598:	ff010113          	addi	sp,sp,-16
    8000659c:	00813423          	sd	s0,8(sp)
    800065a0:	01010413          	addi	s0,sp,16
    800065a4:	f14027f3          	csrr	a5,mhartid
    800065a8:	0200c737          	lui	a4,0x200c
    800065ac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065b0:	0007869b          	sext.w	a3,a5
    800065b4:	00269713          	slli	a4,a3,0x2
    800065b8:	000f4637          	lui	a2,0xf4
    800065bc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065c0:	00d70733          	add	a4,a4,a3
    800065c4:	0037979b          	slliw	a5,a5,0x3
    800065c8:	020046b7          	lui	a3,0x2004
    800065cc:	00d787b3          	add	a5,a5,a3
    800065d0:	00c585b3          	add	a1,a1,a2
    800065d4:	00371693          	slli	a3,a4,0x3
    800065d8:	00005717          	auipc	a4,0x5
    800065dc:	05870713          	addi	a4,a4,88 # 8000b630 <timer_scratch>
    800065e0:	00b7b023          	sd	a1,0(a5)
    800065e4:	00d70733          	add	a4,a4,a3
    800065e8:	00f73c23          	sd	a5,24(a4)
    800065ec:	02c73023          	sd	a2,32(a4)
    800065f0:	34071073          	csrw	mscratch,a4
    800065f4:	00000797          	auipc	a5,0x0
    800065f8:	64c78793          	addi	a5,a5,1612 # 80006c40 <timervec>
    800065fc:	30579073          	csrw	mtvec,a5
    80006600:	300027f3          	csrr	a5,mstatus
    80006604:	0087e793          	ori	a5,a5,8
    80006608:	30079073          	csrw	mstatus,a5
    8000660c:	304027f3          	csrr	a5,mie
    80006610:	0807e793          	ori	a5,a5,128
    80006614:	30479073          	csrw	mie,a5
    80006618:	00813403          	ld	s0,8(sp)
    8000661c:	01010113          	addi	sp,sp,16
    80006620:	00008067          	ret

0000000080006624 <system_main>:
    80006624:	fe010113          	addi	sp,sp,-32
    80006628:	00813823          	sd	s0,16(sp)
    8000662c:	00913423          	sd	s1,8(sp)
    80006630:	00113c23          	sd	ra,24(sp)
    80006634:	02010413          	addi	s0,sp,32
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	0c4080e7          	jalr	196(ra) # 800066fc <cpuid>
    80006640:	00005497          	auipc	s1,0x5
    80006644:	f3048493          	addi	s1,s1,-208 # 8000b570 <started>
    80006648:	02050263          	beqz	a0,8000666c <system_main+0x48>
    8000664c:	0004a783          	lw	a5,0(s1)
    80006650:	0007879b          	sext.w	a5,a5
    80006654:	fe078ce3          	beqz	a5,8000664c <system_main+0x28>
    80006658:	0ff0000f          	fence
    8000665c:	00003517          	auipc	a0,0x3
    80006660:	e7450513          	addi	a0,a0,-396 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006664:	00001097          	auipc	ra,0x1
    80006668:	a78080e7          	jalr	-1416(ra) # 800070dc <panic>
    8000666c:	00001097          	auipc	ra,0x1
    80006670:	9cc080e7          	jalr	-1588(ra) # 80007038 <consoleinit>
    80006674:	00001097          	auipc	ra,0x1
    80006678:	158080e7          	jalr	344(ra) # 800077cc <printfinit>
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	cdc50513          	addi	a0,a0,-804 # 80009358 <CONSOLE_STATUS+0x348>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	ab4080e7          	jalr	-1356(ra) # 80007138 <__printf>
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	e1450513          	addi	a0,a0,-492 # 800094a0 <CONSOLE_STATUS+0x490>
    80006694:	00001097          	auipc	ra,0x1
    80006698:	aa4080e7          	jalr	-1372(ra) # 80007138 <__printf>
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	cbc50513          	addi	a0,a0,-836 # 80009358 <CONSOLE_STATUS+0x348>
    800066a4:	00001097          	auipc	ra,0x1
    800066a8:	a94080e7          	jalr	-1388(ra) # 80007138 <__printf>
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	4ac080e7          	jalr	1196(ra) # 80007b58 <kinit>
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	148080e7          	jalr	328(ra) # 800067fc <trapinit>
    800066bc:	00000097          	auipc	ra,0x0
    800066c0:	16c080e7          	jalr	364(ra) # 80006828 <trapinithart>
    800066c4:	00000097          	auipc	ra,0x0
    800066c8:	5bc080e7          	jalr	1468(ra) # 80006c80 <plicinit>
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	5dc080e7          	jalr	1500(ra) # 80006ca8 <plicinithart>
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	078080e7          	jalr	120(ra) # 8000674c <userinit>
    800066dc:	0ff0000f          	fence
    800066e0:	00100793          	li	a5,1
    800066e4:	00003517          	auipc	a0,0x3
    800066e8:	dd450513          	addi	a0,a0,-556 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800066ec:	00f4a023          	sw	a5,0(s1)
    800066f0:	00001097          	auipc	ra,0x1
    800066f4:	a48080e7          	jalr	-1464(ra) # 80007138 <__printf>
    800066f8:	0000006f          	j	800066f8 <system_main+0xd4>

00000000800066fc <cpuid>:
    800066fc:	ff010113          	addi	sp,sp,-16
    80006700:	00813423          	sd	s0,8(sp)
    80006704:	01010413          	addi	s0,sp,16
    80006708:	00020513          	mv	a0,tp
    8000670c:	00813403          	ld	s0,8(sp)
    80006710:	0005051b          	sext.w	a0,a0
    80006714:	01010113          	addi	sp,sp,16
    80006718:	00008067          	ret

000000008000671c <mycpu>:
    8000671c:	ff010113          	addi	sp,sp,-16
    80006720:	00813423          	sd	s0,8(sp)
    80006724:	01010413          	addi	s0,sp,16
    80006728:	00020793          	mv	a5,tp
    8000672c:	00813403          	ld	s0,8(sp)
    80006730:	0007879b          	sext.w	a5,a5
    80006734:	00779793          	slli	a5,a5,0x7
    80006738:	00006517          	auipc	a0,0x6
    8000673c:	f2850513          	addi	a0,a0,-216 # 8000c660 <cpus>
    80006740:	00f50533          	add	a0,a0,a5
    80006744:	01010113          	addi	sp,sp,16
    80006748:	00008067          	ret

000000008000674c <userinit>:
    8000674c:	ff010113          	addi	sp,sp,-16
    80006750:	00813423          	sd	s0,8(sp)
    80006754:	01010413          	addi	s0,sp,16
    80006758:	00813403          	ld	s0,8(sp)
    8000675c:	01010113          	addi	sp,sp,16
    80006760:	ffffb317          	auipc	t1,0xffffb
    80006764:	22030067          	jr	544(t1) # 80001980 <main>

0000000080006768 <either_copyout>:
    80006768:	ff010113          	addi	sp,sp,-16
    8000676c:	00813023          	sd	s0,0(sp)
    80006770:	00113423          	sd	ra,8(sp)
    80006774:	01010413          	addi	s0,sp,16
    80006778:	02051663          	bnez	a0,800067a4 <either_copyout+0x3c>
    8000677c:	00058513          	mv	a0,a1
    80006780:	00060593          	mv	a1,a2
    80006784:	0006861b          	sext.w	a2,a3
    80006788:	00002097          	auipc	ra,0x2
    8000678c:	c5c080e7          	jalr	-932(ra) # 800083e4 <__memmove>
    80006790:	00813083          	ld	ra,8(sp)
    80006794:	00013403          	ld	s0,0(sp)
    80006798:	00000513          	li	a0,0
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	d5450513          	addi	a0,a0,-684 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	930080e7          	jalr	-1744(ra) # 800070dc <panic>

00000000800067b4 <either_copyin>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813023          	sd	s0,0(sp)
    800067bc:	00113423          	sd	ra,8(sp)
    800067c0:	01010413          	addi	s0,sp,16
    800067c4:	02059463          	bnez	a1,800067ec <either_copyin+0x38>
    800067c8:	00060593          	mv	a1,a2
    800067cc:	0006861b          	sext.w	a2,a3
    800067d0:	00002097          	auipc	ra,0x2
    800067d4:	c14080e7          	jalr	-1004(ra) # 800083e4 <__memmove>
    800067d8:	00813083          	ld	ra,8(sp)
    800067dc:	00013403          	ld	s0,0(sp)
    800067e0:	00000513          	li	a0,0
    800067e4:	01010113          	addi	sp,sp,16
    800067e8:	00008067          	ret
    800067ec:	00003517          	auipc	a0,0x3
    800067f0:	d3450513          	addi	a0,a0,-716 # 80009520 <CONSOLE_STATUS+0x510>
    800067f4:	00001097          	auipc	ra,0x1
    800067f8:	8e8080e7          	jalr	-1816(ra) # 800070dc <panic>

00000000800067fc <trapinit>:
    800067fc:	ff010113          	addi	sp,sp,-16
    80006800:	00813423          	sd	s0,8(sp)
    80006804:	01010413          	addi	s0,sp,16
    80006808:	00813403          	ld	s0,8(sp)
    8000680c:	00003597          	auipc	a1,0x3
    80006810:	d3c58593          	addi	a1,a1,-708 # 80009548 <CONSOLE_STATUS+0x538>
    80006814:	00006517          	auipc	a0,0x6
    80006818:	ecc50513          	addi	a0,a0,-308 # 8000c6e0 <tickslock>
    8000681c:	01010113          	addi	sp,sp,16
    80006820:	00001317          	auipc	t1,0x1
    80006824:	5c830067          	jr	1480(t1) # 80007de8 <initlock>

0000000080006828 <trapinithart>:
    80006828:	ff010113          	addi	sp,sp,-16
    8000682c:	00813423          	sd	s0,8(sp)
    80006830:	01010413          	addi	s0,sp,16
    80006834:	00000797          	auipc	a5,0x0
    80006838:	2fc78793          	addi	a5,a5,764 # 80006b30 <kernelvec>
    8000683c:	10579073          	csrw	stvec,a5
    80006840:	00813403          	ld	s0,8(sp)
    80006844:	01010113          	addi	sp,sp,16
    80006848:	00008067          	ret

000000008000684c <usertrap>:
    8000684c:	ff010113          	addi	sp,sp,-16
    80006850:	00813423          	sd	s0,8(sp)
    80006854:	01010413          	addi	s0,sp,16
    80006858:	00813403          	ld	s0,8(sp)
    8000685c:	01010113          	addi	sp,sp,16
    80006860:	00008067          	ret

0000000080006864 <usertrapret>:
    80006864:	ff010113          	addi	sp,sp,-16
    80006868:	00813423          	sd	s0,8(sp)
    8000686c:	01010413          	addi	s0,sp,16
    80006870:	00813403          	ld	s0,8(sp)
    80006874:	01010113          	addi	sp,sp,16
    80006878:	00008067          	ret

000000008000687c <kerneltrap>:
    8000687c:	fe010113          	addi	sp,sp,-32
    80006880:	00813823          	sd	s0,16(sp)
    80006884:	00113c23          	sd	ra,24(sp)
    80006888:	00913423          	sd	s1,8(sp)
    8000688c:	02010413          	addi	s0,sp,32
    80006890:	142025f3          	csrr	a1,scause
    80006894:	100027f3          	csrr	a5,sstatus
    80006898:	0027f793          	andi	a5,a5,2
    8000689c:	10079c63          	bnez	a5,800069b4 <kerneltrap+0x138>
    800068a0:	142027f3          	csrr	a5,scause
    800068a4:	0207ce63          	bltz	a5,800068e0 <kerneltrap+0x64>
    800068a8:	00003517          	auipc	a0,0x3
    800068ac:	ce850513          	addi	a0,a0,-792 # 80009590 <CONSOLE_STATUS+0x580>
    800068b0:	00001097          	auipc	ra,0x1
    800068b4:	888080e7          	jalr	-1912(ra) # 80007138 <__printf>
    800068b8:	141025f3          	csrr	a1,sepc
    800068bc:	14302673          	csrr	a2,stval
    800068c0:	00003517          	auipc	a0,0x3
    800068c4:	ce050513          	addi	a0,a0,-800 # 800095a0 <CONSOLE_STATUS+0x590>
    800068c8:	00001097          	auipc	ra,0x1
    800068cc:	870080e7          	jalr	-1936(ra) # 80007138 <__printf>
    800068d0:	00003517          	auipc	a0,0x3
    800068d4:	ce850513          	addi	a0,a0,-792 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	804080e7          	jalr	-2044(ra) # 800070dc <panic>
    800068e0:	0ff7f713          	andi	a4,a5,255
    800068e4:	00900693          	li	a3,9
    800068e8:	04d70063          	beq	a4,a3,80006928 <kerneltrap+0xac>
    800068ec:	fff00713          	li	a4,-1
    800068f0:	03f71713          	slli	a4,a4,0x3f
    800068f4:	00170713          	addi	a4,a4,1
    800068f8:	fae798e3          	bne	a5,a4,800068a8 <kerneltrap+0x2c>
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	e00080e7          	jalr	-512(ra) # 800066fc <cpuid>
    80006904:	06050663          	beqz	a0,80006970 <kerneltrap+0xf4>
    80006908:	144027f3          	csrr	a5,sip
    8000690c:	ffd7f793          	andi	a5,a5,-3
    80006910:	14479073          	csrw	sip,a5
    80006914:	01813083          	ld	ra,24(sp)
    80006918:	01013403          	ld	s0,16(sp)
    8000691c:	00813483          	ld	s1,8(sp)
    80006920:	02010113          	addi	sp,sp,32
    80006924:	00008067          	ret
    80006928:	00000097          	auipc	ra,0x0
    8000692c:	3cc080e7          	jalr	972(ra) # 80006cf4 <plic_claim>
    80006930:	00a00793          	li	a5,10
    80006934:	00050493          	mv	s1,a0
    80006938:	06f50863          	beq	a0,a5,800069a8 <kerneltrap+0x12c>
    8000693c:	fc050ce3          	beqz	a0,80006914 <kerneltrap+0x98>
    80006940:	00050593          	mv	a1,a0
    80006944:	00003517          	auipc	a0,0x3
    80006948:	c2c50513          	addi	a0,a0,-980 # 80009570 <CONSOLE_STATUS+0x560>
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	7ec080e7          	jalr	2028(ra) # 80007138 <__printf>
    80006954:	01013403          	ld	s0,16(sp)
    80006958:	01813083          	ld	ra,24(sp)
    8000695c:	00048513          	mv	a0,s1
    80006960:	00813483          	ld	s1,8(sp)
    80006964:	02010113          	addi	sp,sp,32
    80006968:	00000317          	auipc	t1,0x0
    8000696c:	3c430067          	jr	964(t1) # 80006d2c <plic_complete>
    80006970:	00006517          	auipc	a0,0x6
    80006974:	d7050513          	addi	a0,a0,-656 # 8000c6e0 <tickslock>
    80006978:	00001097          	auipc	ra,0x1
    8000697c:	494080e7          	jalr	1172(ra) # 80007e0c <acquire>
    80006980:	00005717          	auipc	a4,0x5
    80006984:	bf470713          	addi	a4,a4,-1036 # 8000b574 <ticks>
    80006988:	00072783          	lw	a5,0(a4)
    8000698c:	00006517          	auipc	a0,0x6
    80006990:	d5450513          	addi	a0,a0,-684 # 8000c6e0 <tickslock>
    80006994:	0017879b          	addiw	a5,a5,1
    80006998:	00f72023          	sw	a5,0(a4)
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	53c080e7          	jalr	1340(ra) # 80007ed8 <release>
    800069a4:	f65ff06f          	j	80006908 <kerneltrap+0x8c>
    800069a8:	00001097          	auipc	ra,0x1
    800069ac:	098080e7          	jalr	152(ra) # 80007a40 <uartintr>
    800069b0:	fa5ff06f          	j	80006954 <kerneltrap+0xd8>
    800069b4:	00003517          	auipc	a0,0x3
    800069b8:	b9c50513          	addi	a0,a0,-1124 # 80009550 <CONSOLE_STATUS+0x540>
    800069bc:	00000097          	auipc	ra,0x0
    800069c0:	720080e7          	jalr	1824(ra) # 800070dc <panic>

00000000800069c4 <clockintr>:
    800069c4:	fe010113          	addi	sp,sp,-32
    800069c8:	00813823          	sd	s0,16(sp)
    800069cc:	00913423          	sd	s1,8(sp)
    800069d0:	00113c23          	sd	ra,24(sp)
    800069d4:	02010413          	addi	s0,sp,32
    800069d8:	00006497          	auipc	s1,0x6
    800069dc:	d0848493          	addi	s1,s1,-760 # 8000c6e0 <tickslock>
    800069e0:	00048513          	mv	a0,s1
    800069e4:	00001097          	auipc	ra,0x1
    800069e8:	428080e7          	jalr	1064(ra) # 80007e0c <acquire>
    800069ec:	00005717          	auipc	a4,0x5
    800069f0:	b8870713          	addi	a4,a4,-1144 # 8000b574 <ticks>
    800069f4:	00072783          	lw	a5,0(a4)
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	00048513          	mv	a0,s1
    80006a04:	0017879b          	addiw	a5,a5,1
    80006a08:	00813483          	ld	s1,8(sp)
    80006a0c:	00f72023          	sw	a5,0(a4)
    80006a10:	02010113          	addi	sp,sp,32
    80006a14:	00001317          	auipc	t1,0x1
    80006a18:	4c430067          	jr	1220(t1) # 80007ed8 <release>

0000000080006a1c <devintr>:
    80006a1c:	142027f3          	csrr	a5,scause
    80006a20:	00000513          	li	a0,0
    80006a24:	0007c463          	bltz	a5,80006a2c <devintr+0x10>
    80006a28:	00008067          	ret
    80006a2c:	fe010113          	addi	sp,sp,-32
    80006a30:	00813823          	sd	s0,16(sp)
    80006a34:	00113c23          	sd	ra,24(sp)
    80006a38:	00913423          	sd	s1,8(sp)
    80006a3c:	02010413          	addi	s0,sp,32
    80006a40:	0ff7f713          	andi	a4,a5,255
    80006a44:	00900693          	li	a3,9
    80006a48:	04d70c63          	beq	a4,a3,80006aa0 <devintr+0x84>
    80006a4c:	fff00713          	li	a4,-1
    80006a50:	03f71713          	slli	a4,a4,0x3f
    80006a54:	00170713          	addi	a4,a4,1
    80006a58:	00e78c63          	beq	a5,a4,80006a70 <devintr+0x54>
    80006a5c:	01813083          	ld	ra,24(sp)
    80006a60:	01013403          	ld	s0,16(sp)
    80006a64:	00813483          	ld	s1,8(sp)
    80006a68:	02010113          	addi	sp,sp,32
    80006a6c:	00008067          	ret
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	c8c080e7          	jalr	-884(ra) # 800066fc <cpuid>
    80006a78:	06050663          	beqz	a0,80006ae4 <devintr+0xc8>
    80006a7c:	144027f3          	csrr	a5,sip
    80006a80:	ffd7f793          	andi	a5,a5,-3
    80006a84:	14479073          	csrw	sip,a5
    80006a88:	01813083          	ld	ra,24(sp)
    80006a8c:	01013403          	ld	s0,16(sp)
    80006a90:	00813483          	ld	s1,8(sp)
    80006a94:	00200513          	li	a0,2
    80006a98:	02010113          	addi	sp,sp,32
    80006a9c:	00008067          	ret
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	254080e7          	jalr	596(ra) # 80006cf4 <plic_claim>
    80006aa8:	00a00793          	li	a5,10
    80006aac:	00050493          	mv	s1,a0
    80006ab0:	06f50663          	beq	a0,a5,80006b1c <devintr+0x100>
    80006ab4:	00100513          	li	a0,1
    80006ab8:	fa0482e3          	beqz	s1,80006a5c <devintr+0x40>
    80006abc:	00048593          	mv	a1,s1
    80006ac0:	00003517          	auipc	a0,0x3
    80006ac4:	ab050513          	addi	a0,a0,-1360 # 80009570 <CONSOLE_STATUS+0x560>
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	670080e7          	jalr	1648(ra) # 80007138 <__printf>
    80006ad0:	00048513          	mv	a0,s1
    80006ad4:	00000097          	auipc	ra,0x0
    80006ad8:	258080e7          	jalr	600(ra) # 80006d2c <plic_complete>
    80006adc:	00100513          	li	a0,1
    80006ae0:	f7dff06f          	j	80006a5c <devintr+0x40>
    80006ae4:	00006517          	auipc	a0,0x6
    80006ae8:	bfc50513          	addi	a0,a0,-1028 # 8000c6e0 <tickslock>
    80006aec:	00001097          	auipc	ra,0x1
    80006af0:	320080e7          	jalr	800(ra) # 80007e0c <acquire>
    80006af4:	00005717          	auipc	a4,0x5
    80006af8:	a8070713          	addi	a4,a4,-1408 # 8000b574 <ticks>
    80006afc:	00072783          	lw	a5,0(a4)
    80006b00:	00006517          	auipc	a0,0x6
    80006b04:	be050513          	addi	a0,a0,-1056 # 8000c6e0 <tickslock>
    80006b08:	0017879b          	addiw	a5,a5,1
    80006b0c:	00f72023          	sw	a5,0(a4)
    80006b10:	00001097          	auipc	ra,0x1
    80006b14:	3c8080e7          	jalr	968(ra) # 80007ed8 <release>
    80006b18:	f65ff06f          	j	80006a7c <devintr+0x60>
    80006b1c:	00001097          	auipc	ra,0x1
    80006b20:	f24080e7          	jalr	-220(ra) # 80007a40 <uartintr>
    80006b24:	fadff06f          	j	80006ad0 <devintr+0xb4>
	...

0000000080006b30 <kernelvec>:
    80006b30:	f0010113          	addi	sp,sp,-256
    80006b34:	00113023          	sd	ra,0(sp)
    80006b38:	00213423          	sd	sp,8(sp)
    80006b3c:	00313823          	sd	gp,16(sp)
    80006b40:	00413c23          	sd	tp,24(sp)
    80006b44:	02513023          	sd	t0,32(sp)
    80006b48:	02613423          	sd	t1,40(sp)
    80006b4c:	02713823          	sd	t2,48(sp)
    80006b50:	02813c23          	sd	s0,56(sp)
    80006b54:	04913023          	sd	s1,64(sp)
    80006b58:	04a13423          	sd	a0,72(sp)
    80006b5c:	04b13823          	sd	a1,80(sp)
    80006b60:	04c13c23          	sd	a2,88(sp)
    80006b64:	06d13023          	sd	a3,96(sp)
    80006b68:	06e13423          	sd	a4,104(sp)
    80006b6c:	06f13823          	sd	a5,112(sp)
    80006b70:	07013c23          	sd	a6,120(sp)
    80006b74:	09113023          	sd	a7,128(sp)
    80006b78:	09213423          	sd	s2,136(sp)
    80006b7c:	09313823          	sd	s3,144(sp)
    80006b80:	09413c23          	sd	s4,152(sp)
    80006b84:	0b513023          	sd	s5,160(sp)
    80006b88:	0b613423          	sd	s6,168(sp)
    80006b8c:	0b713823          	sd	s7,176(sp)
    80006b90:	0b813c23          	sd	s8,184(sp)
    80006b94:	0d913023          	sd	s9,192(sp)
    80006b98:	0da13423          	sd	s10,200(sp)
    80006b9c:	0db13823          	sd	s11,208(sp)
    80006ba0:	0dc13c23          	sd	t3,216(sp)
    80006ba4:	0fd13023          	sd	t4,224(sp)
    80006ba8:	0fe13423          	sd	t5,232(sp)
    80006bac:	0ff13823          	sd	t6,240(sp)
    80006bb0:	ccdff0ef          	jal	ra,8000687c <kerneltrap>
    80006bb4:	00013083          	ld	ra,0(sp)
    80006bb8:	00813103          	ld	sp,8(sp)
    80006bbc:	01013183          	ld	gp,16(sp)
    80006bc0:	02013283          	ld	t0,32(sp)
    80006bc4:	02813303          	ld	t1,40(sp)
    80006bc8:	03013383          	ld	t2,48(sp)
    80006bcc:	03813403          	ld	s0,56(sp)
    80006bd0:	04013483          	ld	s1,64(sp)
    80006bd4:	04813503          	ld	a0,72(sp)
    80006bd8:	05013583          	ld	a1,80(sp)
    80006bdc:	05813603          	ld	a2,88(sp)
    80006be0:	06013683          	ld	a3,96(sp)
    80006be4:	06813703          	ld	a4,104(sp)
    80006be8:	07013783          	ld	a5,112(sp)
    80006bec:	07813803          	ld	a6,120(sp)
    80006bf0:	08013883          	ld	a7,128(sp)
    80006bf4:	08813903          	ld	s2,136(sp)
    80006bf8:	09013983          	ld	s3,144(sp)
    80006bfc:	09813a03          	ld	s4,152(sp)
    80006c00:	0a013a83          	ld	s5,160(sp)
    80006c04:	0a813b03          	ld	s6,168(sp)
    80006c08:	0b013b83          	ld	s7,176(sp)
    80006c0c:	0b813c03          	ld	s8,184(sp)
    80006c10:	0c013c83          	ld	s9,192(sp)
    80006c14:	0c813d03          	ld	s10,200(sp)
    80006c18:	0d013d83          	ld	s11,208(sp)
    80006c1c:	0d813e03          	ld	t3,216(sp)
    80006c20:	0e013e83          	ld	t4,224(sp)
    80006c24:	0e813f03          	ld	t5,232(sp)
    80006c28:	0f013f83          	ld	t6,240(sp)
    80006c2c:	10010113          	addi	sp,sp,256
    80006c30:	10200073          	sret
    80006c34:	00000013          	nop
    80006c38:	00000013          	nop
    80006c3c:	00000013          	nop

0000000080006c40 <timervec>:
    80006c40:	34051573          	csrrw	a0,mscratch,a0
    80006c44:	00b53023          	sd	a1,0(a0)
    80006c48:	00c53423          	sd	a2,8(a0)
    80006c4c:	00d53823          	sd	a3,16(a0)
    80006c50:	01853583          	ld	a1,24(a0)
    80006c54:	02053603          	ld	a2,32(a0)
    80006c58:	0005b683          	ld	a3,0(a1)
    80006c5c:	00c686b3          	add	a3,a3,a2
    80006c60:	00d5b023          	sd	a3,0(a1)
    80006c64:	00200593          	li	a1,2
    80006c68:	14459073          	csrw	sip,a1
    80006c6c:	01053683          	ld	a3,16(a0)
    80006c70:	00853603          	ld	a2,8(a0)
    80006c74:	00053583          	ld	a1,0(a0)
    80006c78:	34051573          	csrrw	a0,mscratch,a0
    80006c7c:	30200073          	mret

0000000080006c80 <plicinit>:
    80006c80:	ff010113          	addi	sp,sp,-16
    80006c84:	00813423          	sd	s0,8(sp)
    80006c88:	01010413          	addi	s0,sp,16
    80006c8c:	00813403          	ld	s0,8(sp)
    80006c90:	0c0007b7          	lui	a5,0xc000
    80006c94:	00100713          	li	a4,1
    80006c98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c9c:	00e7a223          	sw	a4,4(a5)
    80006ca0:	01010113          	addi	sp,sp,16
    80006ca4:	00008067          	ret

0000000080006ca8 <plicinithart>:
    80006ca8:	ff010113          	addi	sp,sp,-16
    80006cac:	00813023          	sd	s0,0(sp)
    80006cb0:	00113423          	sd	ra,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	00000097          	auipc	ra,0x0
    80006cbc:	a44080e7          	jalr	-1468(ra) # 800066fc <cpuid>
    80006cc0:	0085171b          	slliw	a4,a0,0x8
    80006cc4:	0c0027b7          	lui	a5,0xc002
    80006cc8:	00e787b3          	add	a5,a5,a4
    80006ccc:	40200713          	li	a4,1026
    80006cd0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006cd4:	00813083          	ld	ra,8(sp)
    80006cd8:	00013403          	ld	s0,0(sp)
    80006cdc:	00d5151b          	slliw	a0,a0,0xd
    80006ce0:	0c2017b7          	lui	a5,0xc201
    80006ce4:	00a78533          	add	a0,a5,a0
    80006ce8:	00052023          	sw	zero,0(a0)
    80006cec:	01010113          	addi	sp,sp,16
    80006cf0:	00008067          	ret

0000000080006cf4 <plic_claim>:
    80006cf4:	ff010113          	addi	sp,sp,-16
    80006cf8:	00813023          	sd	s0,0(sp)
    80006cfc:	00113423          	sd	ra,8(sp)
    80006d00:	01010413          	addi	s0,sp,16
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	9f8080e7          	jalr	-1544(ra) # 800066fc <cpuid>
    80006d0c:	00813083          	ld	ra,8(sp)
    80006d10:	00013403          	ld	s0,0(sp)
    80006d14:	00d5151b          	slliw	a0,a0,0xd
    80006d18:	0c2017b7          	lui	a5,0xc201
    80006d1c:	00a78533          	add	a0,a5,a0
    80006d20:	00452503          	lw	a0,4(a0)
    80006d24:	01010113          	addi	sp,sp,16
    80006d28:	00008067          	ret

0000000080006d2c <plic_complete>:
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00813823          	sd	s0,16(sp)
    80006d34:	00913423          	sd	s1,8(sp)
    80006d38:	00113c23          	sd	ra,24(sp)
    80006d3c:	02010413          	addi	s0,sp,32
    80006d40:	00050493          	mv	s1,a0
    80006d44:	00000097          	auipc	ra,0x0
    80006d48:	9b8080e7          	jalr	-1608(ra) # 800066fc <cpuid>
    80006d4c:	01813083          	ld	ra,24(sp)
    80006d50:	01013403          	ld	s0,16(sp)
    80006d54:	00d5179b          	slliw	a5,a0,0xd
    80006d58:	0c201737          	lui	a4,0xc201
    80006d5c:	00f707b3          	add	a5,a4,a5
    80006d60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d64:	00813483          	ld	s1,8(sp)
    80006d68:	02010113          	addi	sp,sp,32
    80006d6c:	00008067          	ret

0000000080006d70 <consolewrite>:
    80006d70:	fb010113          	addi	sp,sp,-80
    80006d74:	04813023          	sd	s0,64(sp)
    80006d78:	04113423          	sd	ra,72(sp)
    80006d7c:	02913c23          	sd	s1,56(sp)
    80006d80:	03213823          	sd	s2,48(sp)
    80006d84:	03313423          	sd	s3,40(sp)
    80006d88:	03413023          	sd	s4,32(sp)
    80006d8c:	01513c23          	sd	s5,24(sp)
    80006d90:	05010413          	addi	s0,sp,80
    80006d94:	06c05c63          	blez	a2,80006e0c <consolewrite+0x9c>
    80006d98:	00060993          	mv	s3,a2
    80006d9c:	00050a13          	mv	s4,a0
    80006da0:	00058493          	mv	s1,a1
    80006da4:	00000913          	li	s2,0
    80006da8:	fff00a93          	li	s5,-1
    80006dac:	01c0006f          	j	80006dc8 <consolewrite+0x58>
    80006db0:	fbf44503          	lbu	a0,-65(s0)
    80006db4:	0019091b          	addiw	s2,s2,1
    80006db8:	00148493          	addi	s1,s1,1
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	a9c080e7          	jalr	-1380(ra) # 80007858 <uartputc>
    80006dc4:	03298063          	beq	s3,s2,80006de4 <consolewrite+0x74>
    80006dc8:	00048613          	mv	a2,s1
    80006dcc:	00100693          	li	a3,1
    80006dd0:	000a0593          	mv	a1,s4
    80006dd4:	fbf40513          	addi	a0,s0,-65
    80006dd8:	00000097          	auipc	ra,0x0
    80006ddc:	9dc080e7          	jalr	-1572(ra) # 800067b4 <either_copyin>
    80006de0:	fd5518e3          	bne	a0,s5,80006db0 <consolewrite+0x40>
    80006de4:	04813083          	ld	ra,72(sp)
    80006de8:	04013403          	ld	s0,64(sp)
    80006dec:	03813483          	ld	s1,56(sp)
    80006df0:	02813983          	ld	s3,40(sp)
    80006df4:	02013a03          	ld	s4,32(sp)
    80006df8:	01813a83          	ld	s5,24(sp)
    80006dfc:	00090513          	mv	a0,s2
    80006e00:	03013903          	ld	s2,48(sp)
    80006e04:	05010113          	addi	sp,sp,80
    80006e08:	00008067          	ret
    80006e0c:	00000913          	li	s2,0
    80006e10:	fd5ff06f          	j	80006de4 <consolewrite+0x74>

0000000080006e14 <consoleread>:
    80006e14:	f9010113          	addi	sp,sp,-112
    80006e18:	06813023          	sd	s0,96(sp)
    80006e1c:	04913c23          	sd	s1,88(sp)
    80006e20:	05213823          	sd	s2,80(sp)
    80006e24:	05313423          	sd	s3,72(sp)
    80006e28:	05413023          	sd	s4,64(sp)
    80006e2c:	03513c23          	sd	s5,56(sp)
    80006e30:	03613823          	sd	s6,48(sp)
    80006e34:	03713423          	sd	s7,40(sp)
    80006e38:	03813023          	sd	s8,32(sp)
    80006e3c:	06113423          	sd	ra,104(sp)
    80006e40:	01913c23          	sd	s9,24(sp)
    80006e44:	07010413          	addi	s0,sp,112
    80006e48:	00060b93          	mv	s7,a2
    80006e4c:	00050913          	mv	s2,a0
    80006e50:	00058c13          	mv	s8,a1
    80006e54:	00060b1b          	sext.w	s6,a2
    80006e58:	00006497          	auipc	s1,0x6
    80006e5c:	8b048493          	addi	s1,s1,-1872 # 8000c708 <cons>
    80006e60:	00400993          	li	s3,4
    80006e64:	fff00a13          	li	s4,-1
    80006e68:	00a00a93          	li	s5,10
    80006e6c:	05705e63          	blez	s7,80006ec8 <consoleread+0xb4>
    80006e70:	09c4a703          	lw	a4,156(s1)
    80006e74:	0984a783          	lw	a5,152(s1)
    80006e78:	0007071b          	sext.w	a4,a4
    80006e7c:	08e78463          	beq	a5,a4,80006f04 <consoleread+0xf0>
    80006e80:	07f7f713          	andi	a4,a5,127
    80006e84:	00e48733          	add	a4,s1,a4
    80006e88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e8c:	0017869b          	addiw	a3,a5,1
    80006e90:	08d4ac23          	sw	a3,152(s1)
    80006e94:	00070c9b          	sext.w	s9,a4
    80006e98:	0b370663          	beq	a4,s3,80006f44 <consoleread+0x130>
    80006e9c:	00100693          	li	a3,1
    80006ea0:	f9f40613          	addi	a2,s0,-97
    80006ea4:	000c0593          	mv	a1,s8
    80006ea8:	00090513          	mv	a0,s2
    80006eac:	f8e40fa3          	sb	a4,-97(s0)
    80006eb0:	00000097          	auipc	ra,0x0
    80006eb4:	8b8080e7          	jalr	-1864(ra) # 80006768 <either_copyout>
    80006eb8:	01450863          	beq	a0,s4,80006ec8 <consoleread+0xb4>
    80006ebc:	001c0c13          	addi	s8,s8,1
    80006ec0:	fffb8b9b          	addiw	s7,s7,-1
    80006ec4:	fb5c94e3          	bne	s9,s5,80006e6c <consoleread+0x58>
    80006ec8:	000b851b          	sext.w	a0,s7
    80006ecc:	06813083          	ld	ra,104(sp)
    80006ed0:	06013403          	ld	s0,96(sp)
    80006ed4:	05813483          	ld	s1,88(sp)
    80006ed8:	05013903          	ld	s2,80(sp)
    80006edc:	04813983          	ld	s3,72(sp)
    80006ee0:	04013a03          	ld	s4,64(sp)
    80006ee4:	03813a83          	ld	s5,56(sp)
    80006ee8:	02813b83          	ld	s7,40(sp)
    80006eec:	02013c03          	ld	s8,32(sp)
    80006ef0:	01813c83          	ld	s9,24(sp)
    80006ef4:	40ab053b          	subw	a0,s6,a0
    80006ef8:	03013b03          	ld	s6,48(sp)
    80006efc:	07010113          	addi	sp,sp,112
    80006f00:	00008067          	ret
    80006f04:	00001097          	auipc	ra,0x1
    80006f08:	1d8080e7          	jalr	472(ra) # 800080dc <push_on>
    80006f0c:	0984a703          	lw	a4,152(s1)
    80006f10:	09c4a783          	lw	a5,156(s1)
    80006f14:	0007879b          	sext.w	a5,a5
    80006f18:	fef70ce3          	beq	a4,a5,80006f10 <consoleread+0xfc>
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	234080e7          	jalr	564(ra) # 80008150 <pop_on>
    80006f24:	0984a783          	lw	a5,152(s1)
    80006f28:	07f7f713          	andi	a4,a5,127
    80006f2c:	00e48733          	add	a4,s1,a4
    80006f30:	01874703          	lbu	a4,24(a4)
    80006f34:	0017869b          	addiw	a3,a5,1
    80006f38:	08d4ac23          	sw	a3,152(s1)
    80006f3c:	00070c9b          	sext.w	s9,a4
    80006f40:	f5371ee3          	bne	a4,s3,80006e9c <consoleread+0x88>
    80006f44:	000b851b          	sext.w	a0,s7
    80006f48:	f96bf2e3          	bgeu	s7,s6,80006ecc <consoleread+0xb8>
    80006f4c:	08f4ac23          	sw	a5,152(s1)
    80006f50:	f7dff06f          	j	80006ecc <consoleread+0xb8>

0000000080006f54 <consputc>:
    80006f54:	10000793          	li	a5,256
    80006f58:	00f50663          	beq	a0,a5,80006f64 <consputc+0x10>
    80006f5c:	00001317          	auipc	t1,0x1
    80006f60:	9f430067          	jr	-1548(t1) # 80007950 <uartputc_sync>
    80006f64:	ff010113          	addi	sp,sp,-16
    80006f68:	00113423          	sd	ra,8(sp)
    80006f6c:	00813023          	sd	s0,0(sp)
    80006f70:	01010413          	addi	s0,sp,16
    80006f74:	00800513          	li	a0,8
    80006f78:	00001097          	auipc	ra,0x1
    80006f7c:	9d8080e7          	jalr	-1576(ra) # 80007950 <uartputc_sync>
    80006f80:	02000513          	li	a0,32
    80006f84:	00001097          	auipc	ra,0x1
    80006f88:	9cc080e7          	jalr	-1588(ra) # 80007950 <uartputc_sync>
    80006f8c:	00013403          	ld	s0,0(sp)
    80006f90:	00813083          	ld	ra,8(sp)
    80006f94:	00800513          	li	a0,8
    80006f98:	01010113          	addi	sp,sp,16
    80006f9c:	00001317          	auipc	t1,0x1
    80006fa0:	9b430067          	jr	-1612(t1) # 80007950 <uartputc_sync>

0000000080006fa4 <consoleintr>:
    80006fa4:	fe010113          	addi	sp,sp,-32
    80006fa8:	00813823          	sd	s0,16(sp)
    80006fac:	00913423          	sd	s1,8(sp)
    80006fb0:	01213023          	sd	s2,0(sp)
    80006fb4:	00113c23          	sd	ra,24(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    80006fbc:	00005917          	auipc	s2,0x5
    80006fc0:	74c90913          	addi	s2,s2,1868 # 8000c708 <cons>
    80006fc4:	00050493          	mv	s1,a0
    80006fc8:	00090513          	mv	a0,s2
    80006fcc:	00001097          	auipc	ra,0x1
    80006fd0:	e40080e7          	jalr	-448(ra) # 80007e0c <acquire>
    80006fd4:	02048c63          	beqz	s1,8000700c <consoleintr+0x68>
    80006fd8:	0a092783          	lw	a5,160(s2)
    80006fdc:	09892703          	lw	a4,152(s2)
    80006fe0:	07f00693          	li	a3,127
    80006fe4:	40e7873b          	subw	a4,a5,a4
    80006fe8:	02e6e263          	bltu	a3,a4,8000700c <consoleintr+0x68>
    80006fec:	00d00713          	li	a4,13
    80006ff0:	04e48063          	beq	s1,a4,80007030 <consoleintr+0x8c>
    80006ff4:	07f7f713          	andi	a4,a5,127
    80006ff8:	00e90733          	add	a4,s2,a4
    80006ffc:	0017879b          	addiw	a5,a5,1
    80007000:	0af92023          	sw	a5,160(s2)
    80007004:	00970c23          	sb	s1,24(a4)
    80007008:	08f92e23          	sw	a5,156(s2)
    8000700c:	01013403          	ld	s0,16(sp)
    80007010:	01813083          	ld	ra,24(sp)
    80007014:	00813483          	ld	s1,8(sp)
    80007018:	00013903          	ld	s2,0(sp)
    8000701c:	00005517          	auipc	a0,0x5
    80007020:	6ec50513          	addi	a0,a0,1772 # 8000c708 <cons>
    80007024:	02010113          	addi	sp,sp,32
    80007028:	00001317          	auipc	t1,0x1
    8000702c:	eb030067          	jr	-336(t1) # 80007ed8 <release>
    80007030:	00a00493          	li	s1,10
    80007034:	fc1ff06f          	j	80006ff4 <consoleintr+0x50>

0000000080007038 <consoleinit>:
    80007038:	fe010113          	addi	sp,sp,-32
    8000703c:	00113c23          	sd	ra,24(sp)
    80007040:	00813823          	sd	s0,16(sp)
    80007044:	00913423          	sd	s1,8(sp)
    80007048:	02010413          	addi	s0,sp,32
    8000704c:	00005497          	auipc	s1,0x5
    80007050:	6bc48493          	addi	s1,s1,1724 # 8000c708 <cons>
    80007054:	00048513          	mv	a0,s1
    80007058:	00002597          	auipc	a1,0x2
    8000705c:	57058593          	addi	a1,a1,1392 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80007060:	00001097          	auipc	ra,0x1
    80007064:	d88080e7          	jalr	-632(ra) # 80007de8 <initlock>
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	7ac080e7          	jalr	1964(ra) # 80007814 <uartinit>
    80007070:	01813083          	ld	ra,24(sp)
    80007074:	01013403          	ld	s0,16(sp)
    80007078:	00000797          	auipc	a5,0x0
    8000707c:	d9c78793          	addi	a5,a5,-612 # 80006e14 <consoleread>
    80007080:	0af4bc23          	sd	a5,184(s1)
    80007084:	00000797          	auipc	a5,0x0
    80007088:	cec78793          	addi	a5,a5,-788 # 80006d70 <consolewrite>
    8000708c:	0cf4b023          	sd	a5,192(s1)
    80007090:	00813483          	ld	s1,8(sp)
    80007094:	02010113          	addi	sp,sp,32
    80007098:	00008067          	ret

000000008000709c <console_read>:
    8000709c:	ff010113          	addi	sp,sp,-16
    800070a0:	00813423          	sd	s0,8(sp)
    800070a4:	01010413          	addi	s0,sp,16
    800070a8:	00813403          	ld	s0,8(sp)
    800070ac:	00005317          	auipc	t1,0x5
    800070b0:	71433303          	ld	t1,1812(t1) # 8000c7c0 <devsw+0x10>
    800070b4:	01010113          	addi	sp,sp,16
    800070b8:	00030067          	jr	t1

00000000800070bc <console_write>:
    800070bc:	ff010113          	addi	sp,sp,-16
    800070c0:	00813423          	sd	s0,8(sp)
    800070c4:	01010413          	addi	s0,sp,16
    800070c8:	00813403          	ld	s0,8(sp)
    800070cc:	00005317          	auipc	t1,0x5
    800070d0:	6fc33303          	ld	t1,1788(t1) # 8000c7c8 <devsw+0x18>
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00030067          	jr	t1

00000000800070dc <panic>:
    800070dc:	fe010113          	addi	sp,sp,-32
    800070e0:	00113c23          	sd	ra,24(sp)
    800070e4:	00813823          	sd	s0,16(sp)
    800070e8:	00913423          	sd	s1,8(sp)
    800070ec:	02010413          	addi	s0,sp,32
    800070f0:	00050493          	mv	s1,a0
    800070f4:	00002517          	auipc	a0,0x2
    800070f8:	4dc50513          	addi	a0,a0,1244 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800070fc:	00005797          	auipc	a5,0x5
    80007100:	7607a623          	sw	zero,1900(a5) # 8000c868 <pr+0x18>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	034080e7          	jalr	52(ra) # 80007138 <__printf>
    8000710c:	00048513          	mv	a0,s1
    80007110:	00000097          	auipc	ra,0x0
    80007114:	028080e7          	jalr	40(ra) # 80007138 <__printf>
    80007118:	00002517          	auipc	a0,0x2
    8000711c:	24050513          	addi	a0,a0,576 # 80009358 <CONSOLE_STATUS+0x348>
    80007120:	00000097          	auipc	ra,0x0
    80007124:	018080e7          	jalr	24(ra) # 80007138 <__printf>
    80007128:	00100793          	li	a5,1
    8000712c:	00004717          	auipc	a4,0x4
    80007130:	44f72623          	sw	a5,1100(a4) # 8000b578 <panicked>
    80007134:	0000006f          	j	80007134 <panic+0x58>

0000000080007138 <__printf>:
    80007138:	f3010113          	addi	sp,sp,-208
    8000713c:	08813023          	sd	s0,128(sp)
    80007140:	07313423          	sd	s3,104(sp)
    80007144:	09010413          	addi	s0,sp,144
    80007148:	05813023          	sd	s8,64(sp)
    8000714c:	08113423          	sd	ra,136(sp)
    80007150:	06913c23          	sd	s1,120(sp)
    80007154:	07213823          	sd	s2,112(sp)
    80007158:	07413023          	sd	s4,96(sp)
    8000715c:	05513c23          	sd	s5,88(sp)
    80007160:	05613823          	sd	s6,80(sp)
    80007164:	05713423          	sd	s7,72(sp)
    80007168:	03913c23          	sd	s9,56(sp)
    8000716c:	03a13823          	sd	s10,48(sp)
    80007170:	03b13423          	sd	s11,40(sp)
    80007174:	00005317          	auipc	t1,0x5
    80007178:	6dc30313          	addi	t1,t1,1756 # 8000c850 <pr>
    8000717c:	01832c03          	lw	s8,24(t1)
    80007180:	00b43423          	sd	a1,8(s0)
    80007184:	00c43823          	sd	a2,16(s0)
    80007188:	00d43c23          	sd	a3,24(s0)
    8000718c:	02e43023          	sd	a4,32(s0)
    80007190:	02f43423          	sd	a5,40(s0)
    80007194:	03043823          	sd	a6,48(s0)
    80007198:	03143c23          	sd	a7,56(s0)
    8000719c:	00050993          	mv	s3,a0
    800071a0:	4a0c1663          	bnez	s8,8000764c <__printf+0x514>
    800071a4:	60098c63          	beqz	s3,800077bc <__printf+0x684>
    800071a8:	0009c503          	lbu	a0,0(s3)
    800071ac:	00840793          	addi	a5,s0,8
    800071b0:	f6f43c23          	sd	a5,-136(s0)
    800071b4:	00000493          	li	s1,0
    800071b8:	22050063          	beqz	a0,800073d8 <__printf+0x2a0>
    800071bc:	00002a37          	lui	s4,0x2
    800071c0:	00018ab7          	lui	s5,0x18
    800071c4:	000f4b37          	lui	s6,0xf4
    800071c8:	00989bb7          	lui	s7,0x989
    800071cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071dc:	00148c9b          	addiw	s9,s1,1
    800071e0:	02500793          	li	a5,37
    800071e4:	01998933          	add	s2,s3,s9
    800071e8:	38f51263          	bne	a0,a5,8000756c <__printf+0x434>
    800071ec:	00094783          	lbu	a5,0(s2)
    800071f0:	00078c9b          	sext.w	s9,a5
    800071f4:	1e078263          	beqz	a5,800073d8 <__printf+0x2a0>
    800071f8:	0024849b          	addiw	s1,s1,2
    800071fc:	07000713          	li	a4,112
    80007200:	00998933          	add	s2,s3,s1
    80007204:	38e78a63          	beq	a5,a4,80007598 <__printf+0x460>
    80007208:	20f76863          	bltu	a4,a5,80007418 <__printf+0x2e0>
    8000720c:	42a78863          	beq	a5,a0,8000763c <__printf+0x504>
    80007210:	06400713          	li	a4,100
    80007214:	40e79663          	bne	a5,a4,80007620 <__printf+0x4e8>
    80007218:	f7843783          	ld	a5,-136(s0)
    8000721c:	0007a603          	lw	a2,0(a5)
    80007220:	00878793          	addi	a5,a5,8
    80007224:	f6f43c23          	sd	a5,-136(s0)
    80007228:	42064a63          	bltz	a2,8000765c <__printf+0x524>
    8000722c:	00a00713          	li	a4,10
    80007230:	02e677bb          	remuw	a5,a2,a4
    80007234:	00002d97          	auipc	s11,0x2
    80007238:	3c4d8d93          	addi	s11,s11,964 # 800095f8 <digits>
    8000723c:	00900593          	li	a1,9
    80007240:	0006051b          	sext.w	a0,a2
    80007244:	00000c93          	li	s9,0
    80007248:	02079793          	slli	a5,a5,0x20
    8000724c:	0207d793          	srli	a5,a5,0x20
    80007250:	00fd87b3          	add	a5,s11,a5
    80007254:	0007c783          	lbu	a5,0(a5)
    80007258:	02e656bb          	divuw	a3,a2,a4
    8000725c:	f8f40023          	sb	a5,-128(s0)
    80007260:	14c5d863          	bge	a1,a2,800073b0 <__printf+0x278>
    80007264:	06300593          	li	a1,99
    80007268:	00100c93          	li	s9,1
    8000726c:	02e6f7bb          	remuw	a5,a3,a4
    80007270:	02079793          	slli	a5,a5,0x20
    80007274:	0207d793          	srli	a5,a5,0x20
    80007278:	00fd87b3          	add	a5,s11,a5
    8000727c:	0007c783          	lbu	a5,0(a5)
    80007280:	02e6d73b          	divuw	a4,a3,a4
    80007284:	f8f400a3          	sb	a5,-127(s0)
    80007288:	12a5f463          	bgeu	a1,a0,800073b0 <__printf+0x278>
    8000728c:	00a00693          	li	a3,10
    80007290:	00900593          	li	a1,9
    80007294:	02d777bb          	remuw	a5,a4,a3
    80007298:	02079793          	slli	a5,a5,0x20
    8000729c:	0207d793          	srli	a5,a5,0x20
    800072a0:	00fd87b3          	add	a5,s11,a5
    800072a4:	0007c503          	lbu	a0,0(a5)
    800072a8:	02d757bb          	divuw	a5,a4,a3
    800072ac:	f8a40123          	sb	a0,-126(s0)
    800072b0:	48e5f263          	bgeu	a1,a4,80007734 <__printf+0x5fc>
    800072b4:	06300513          	li	a0,99
    800072b8:	02d7f5bb          	remuw	a1,a5,a3
    800072bc:	02059593          	slli	a1,a1,0x20
    800072c0:	0205d593          	srli	a1,a1,0x20
    800072c4:	00bd85b3          	add	a1,s11,a1
    800072c8:	0005c583          	lbu	a1,0(a1)
    800072cc:	02d7d7bb          	divuw	a5,a5,a3
    800072d0:	f8b401a3          	sb	a1,-125(s0)
    800072d4:	48e57263          	bgeu	a0,a4,80007758 <__printf+0x620>
    800072d8:	3e700513          	li	a0,999
    800072dc:	02d7f5bb          	remuw	a1,a5,a3
    800072e0:	02059593          	slli	a1,a1,0x20
    800072e4:	0205d593          	srli	a1,a1,0x20
    800072e8:	00bd85b3          	add	a1,s11,a1
    800072ec:	0005c583          	lbu	a1,0(a1)
    800072f0:	02d7d7bb          	divuw	a5,a5,a3
    800072f4:	f8b40223          	sb	a1,-124(s0)
    800072f8:	46e57663          	bgeu	a0,a4,80007764 <__printf+0x62c>
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b402a3          	sb	a1,-123(s0)
    80007318:	46ea7863          	bgeu	s4,a4,80007788 <__printf+0x650>
    8000731c:	02d7f5bb          	remuw	a1,a5,a3
    80007320:	02059593          	slli	a1,a1,0x20
    80007324:	0205d593          	srli	a1,a1,0x20
    80007328:	00bd85b3          	add	a1,s11,a1
    8000732c:	0005c583          	lbu	a1,0(a1)
    80007330:	02d7d7bb          	divuw	a5,a5,a3
    80007334:	f8b40323          	sb	a1,-122(s0)
    80007338:	3eeaf863          	bgeu	s5,a4,80007728 <__printf+0x5f0>
    8000733c:	02d7f5bb          	remuw	a1,a5,a3
    80007340:	02059593          	slli	a1,a1,0x20
    80007344:	0205d593          	srli	a1,a1,0x20
    80007348:	00bd85b3          	add	a1,s11,a1
    8000734c:	0005c583          	lbu	a1,0(a1)
    80007350:	02d7d7bb          	divuw	a5,a5,a3
    80007354:	f8b403a3          	sb	a1,-121(s0)
    80007358:	42eb7e63          	bgeu	s6,a4,80007794 <__printf+0x65c>
    8000735c:	02d7f5bb          	remuw	a1,a5,a3
    80007360:	02059593          	slli	a1,a1,0x20
    80007364:	0205d593          	srli	a1,a1,0x20
    80007368:	00bd85b3          	add	a1,s11,a1
    8000736c:	0005c583          	lbu	a1,0(a1)
    80007370:	02d7d7bb          	divuw	a5,a5,a3
    80007374:	f8b40423          	sb	a1,-120(s0)
    80007378:	42ebfc63          	bgeu	s7,a4,800077b0 <__printf+0x678>
    8000737c:	02079793          	slli	a5,a5,0x20
    80007380:	0207d793          	srli	a5,a5,0x20
    80007384:	00fd8db3          	add	s11,s11,a5
    80007388:	000dc703          	lbu	a4,0(s11)
    8000738c:	00a00793          	li	a5,10
    80007390:	00900c93          	li	s9,9
    80007394:	f8e404a3          	sb	a4,-119(s0)
    80007398:	00065c63          	bgez	a2,800073b0 <__printf+0x278>
    8000739c:	f9040713          	addi	a4,s0,-112
    800073a0:	00f70733          	add	a4,a4,a5
    800073a4:	02d00693          	li	a3,45
    800073a8:	fed70823          	sb	a3,-16(a4)
    800073ac:	00078c93          	mv	s9,a5
    800073b0:	f8040793          	addi	a5,s0,-128
    800073b4:	01978cb3          	add	s9,a5,s9
    800073b8:	f7f40d13          	addi	s10,s0,-129
    800073bc:	000cc503          	lbu	a0,0(s9)
    800073c0:	fffc8c93          	addi	s9,s9,-1
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	b90080e7          	jalr	-1136(ra) # 80006f54 <consputc>
    800073cc:	ffac98e3          	bne	s9,s10,800073bc <__printf+0x284>
    800073d0:	00094503          	lbu	a0,0(s2)
    800073d4:	e00514e3          	bnez	a0,800071dc <__printf+0xa4>
    800073d8:	1a0c1663          	bnez	s8,80007584 <__printf+0x44c>
    800073dc:	08813083          	ld	ra,136(sp)
    800073e0:	08013403          	ld	s0,128(sp)
    800073e4:	07813483          	ld	s1,120(sp)
    800073e8:	07013903          	ld	s2,112(sp)
    800073ec:	06813983          	ld	s3,104(sp)
    800073f0:	06013a03          	ld	s4,96(sp)
    800073f4:	05813a83          	ld	s5,88(sp)
    800073f8:	05013b03          	ld	s6,80(sp)
    800073fc:	04813b83          	ld	s7,72(sp)
    80007400:	04013c03          	ld	s8,64(sp)
    80007404:	03813c83          	ld	s9,56(sp)
    80007408:	03013d03          	ld	s10,48(sp)
    8000740c:	02813d83          	ld	s11,40(sp)
    80007410:	0d010113          	addi	sp,sp,208
    80007414:	00008067          	ret
    80007418:	07300713          	li	a4,115
    8000741c:	1ce78a63          	beq	a5,a4,800075f0 <__printf+0x4b8>
    80007420:	07800713          	li	a4,120
    80007424:	1ee79e63          	bne	a5,a4,80007620 <__printf+0x4e8>
    80007428:	f7843783          	ld	a5,-136(s0)
    8000742c:	0007a703          	lw	a4,0(a5)
    80007430:	00878793          	addi	a5,a5,8
    80007434:	f6f43c23          	sd	a5,-136(s0)
    80007438:	28074263          	bltz	a4,800076bc <__printf+0x584>
    8000743c:	00002d97          	auipc	s11,0x2
    80007440:	1bcd8d93          	addi	s11,s11,444 # 800095f8 <digits>
    80007444:	00f77793          	andi	a5,a4,15
    80007448:	00fd87b3          	add	a5,s11,a5
    8000744c:	0007c683          	lbu	a3,0(a5)
    80007450:	00f00613          	li	a2,15
    80007454:	0007079b          	sext.w	a5,a4
    80007458:	f8d40023          	sb	a3,-128(s0)
    8000745c:	0047559b          	srliw	a1,a4,0x4
    80007460:	0047569b          	srliw	a3,a4,0x4
    80007464:	00000c93          	li	s9,0
    80007468:	0ee65063          	bge	a2,a4,80007548 <__printf+0x410>
    8000746c:	00f6f693          	andi	a3,a3,15
    80007470:	00dd86b3          	add	a3,s11,a3
    80007474:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007478:	0087d79b          	srliw	a5,a5,0x8
    8000747c:	00100c93          	li	s9,1
    80007480:	f8d400a3          	sb	a3,-127(s0)
    80007484:	0cb67263          	bgeu	a2,a1,80007548 <__printf+0x410>
    80007488:	00f7f693          	andi	a3,a5,15
    8000748c:	00dd86b3          	add	a3,s11,a3
    80007490:	0006c583          	lbu	a1,0(a3)
    80007494:	00f00613          	li	a2,15
    80007498:	0047d69b          	srliw	a3,a5,0x4
    8000749c:	f8b40123          	sb	a1,-126(s0)
    800074a0:	0047d593          	srli	a1,a5,0x4
    800074a4:	28f67e63          	bgeu	a2,a5,80007740 <__printf+0x608>
    800074a8:	00f6f693          	andi	a3,a3,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c503          	lbu	a0,0(a3)
    800074b4:	0087d813          	srli	a6,a5,0x8
    800074b8:	0087d69b          	srliw	a3,a5,0x8
    800074bc:	f8a401a3          	sb	a0,-125(s0)
    800074c0:	28b67663          	bgeu	a2,a1,8000774c <__printf+0x614>
    800074c4:	00f6f693          	andi	a3,a3,15
    800074c8:	00dd86b3          	add	a3,s11,a3
    800074cc:	0006c583          	lbu	a1,0(a3)
    800074d0:	00c7d513          	srli	a0,a5,0xc
    800074d4:	00c7d69b          	srliw	a3,a5,0xc
    800074d8:	f8b40223          	sb	a1,-124(s0)
    800074dc:	29067a63          	bgeu	a2,a6,80007770 <__printf+0x638>
    800074e0:	00f6f693          	andi	a3,a3,15
    800074e4:	00dd86b3          	add	a3,s11,a3
    800074e8:	0006c583          	lbu	a1,0(a3)
    800074ec:	0107d813          	srli	a6,a5,0x10
    800074f0:	0107d69b          	srliw	a3,a5,0x10
    800074f4:	f8b402a3          	sb	a1,-123(s0)
    800074f8:	28a67263          	bgeu	a2,a0,8000777c <__printf+0x644>
    800074fc:	00f6f693          	andi	a3,a3,15
    80007500:	00dd86b3          	add	a3,s11,a3
    80007504:	0006c683          	lbu	a3,0(a3)
    80007508:	0147d79b          	srliw	a5,a5,0x14
    8000750c:	f8d40323          	sb	a3,-122(s0)
    80007510:	21067663          	bgeu	a2,a6,8000771c <__printf+0x5e4>
    80007514:	02079793          	slli	a5,a5,0x20
    80007518:	0207d793          	srli	a5,a5,0x20
    8000751c:	00fd8db3          	add	s11,s11,a5
    80007520:	000dc683          	lbu	a3,0(s11)
    80007524:	00800793          	li	a5,8
    80007528:	00700c93          	li	s9,7
    8000752c:	f8d403a3          	sb	a3,-121(s0)
    80007530:	00075c63          	bgez	a4,80007548 <__printf+0x410>
    80007534:	f9040713          	addi	a4,s0,-112
    80007538:	00f70733          	add	a4,a4,a5
    8000753c:	02d00693          	li	a3,45
    80007540:	fed70823          	sb	a3,-16(a4)
    80007544:	00078c93          	mv	s9,a5
    80007548:	f8040793          	addi	a5,s0,-128
    8000754c:	01978cb3          	add	s9,a5,s9
    80007550:	f7f40d13          	addi	s10,s0,-129
    80007554:	000cc503          	lbu	a0,0(s9)
    80007558:	fffc8c93          	addi	s9,s9,-1
    8000755c:	00000097          	auipc	ra,0x0
    80007560:	9f8080e7          	jalr	-1544(ra) # 80006f54 <consputc>
    80007564:	ff9d18e3          	bne	s10,s9,80007554 <__printf+0x41c>
    80007568:	0100006f          	j	80007578 <__printf+0x440>
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	9e8080e7          	jalr	-1560(ra) # 80006f54 <consputc>
    80007574:	000c8493          	mv	s1,s9
    80007578:	00094503          	lbu	a0,0(s2)
    8000757c:	c60510e3          	bnez	a0,800071dc <__printf+0xa4>
    80007580:	e40c0ee3          	beqz	s8,800073dc <__printf+0x2a4>
    80007584:	00005517          	auipc	a0,0x5
    80007588:	2cc50513          	addi	a0,a0,716 # 8000c850 <pr>
    8000758c:	00001097          	auipc	ra,0x1
    80007590:	94c080e7          	jalr	-1716(ra) # 80007ed8 <release>
    80007594:	e49ff06f          	j	800073dc <__printf+0x2a4>
    80007598:	f7843783          	ld	a5,-136(s0)
    8000759c:	03000513          	li	a0,48
    800075a0:	01000d13          	li	s10,16
    800075a4:	00878713          	addi	a4,a5,8
    800075a8:	0007bc83          	ld	s9,0(a5)
    800075ac:	f6e43c23          	sd	a4,-136(s0)
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	9a4080e7          	jalr	-1628(ra) # 80006f54 <consputc>
    800075b8:	07800513          	li	a0,120
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	998080e7          	jalr	-1640(ra) # 80006f54 <consputc>
    800075c4:	00002d97          	auipc	s11,0x2
    800075c8:	034d8d93          	addi	s11,s11,52 # 800095f8 <digits>
    800075cc:	03ccd793          	srli	a5,s9,0x3c
    800075d0:	00fd87b3          	add	a5,s11,a5
    800075d4:	0007c503          	lbu	a0,0(a5)
    800075d8:	fffd0d1b          	addiw	s10,s10,-1
    800075dc:	004c9c93          	slli	s9,s9,0x4
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	974080e7          	jalr	-1676(ra) # 80006f54 <consputc>
    800075e8:	fe0d12e3          	bnez	s10,800075cc <__printf+0x494>
    800075ec:	f8dff06f          	j	80007578 <__printf+0x440>
    800075f0:	f7843783          	ld	a5,-136(s0)
    800075f4:	0007bc83          	ld	s9,0(a5)
    800075f8:	00878793          	addi	a5,a5,8
    800075fc:	f6f43c23          	sd	a5,-136(s0)
    80007600:	000c9a63          	bnez	s9,80007614 <__printf+0x4dc>
    80007604:	1080006f          	j	8000770c <__printf+0x5d4>
    80007608:	001c8c93          	addi	s9,s9,1
    8000760c:	00000097          	auipc	ra,0x0
    80007610:	948080e7          	jalr	-1720(ra) # 80006f54 <consputc>
    80007614:	000cc503          	lbu	a0,0(s9)
    80007618:	fe0518e3          	bnez	a0,80007608 <__printf+0x4d0>
    8000761c:	f5dff06f          	j	80007578 <__printf+0x440>
    80007620:	02500513          	li	a0,37
    80007624:	00000097          	auipc	ra,0x0
    80007628:	930080e7          	jalr	-1744(ra) # 80006f54 <consputc>
    8000762c:	000c8513          	mv	a0,s9
    80007630:	00000097          	auipc	ra,0x0
    80007634:	924080e7          	jalr	-1756(ra) # 80006f54 <consputc>
    80007638:	f41ff06f          	j	80007578 <__printf+0x440>
    8000763c:	02500513          	li	a0,37
    80007640:	00000097          	auipc	ra,0x0
    80007644:	914080e7          	jalr	-1772(ra) # 80006f54 <consputc>
    80007648:	f31ff06f          	j	80007578 <__printf+0x440>
    8000764c:	00030513          	mv	a0,t1
    80007650:	00000097          	auipc	ra,0x0
    80007654:	7bc080e7          	jalr	1980(ra) # 80007e0c <acquire>
    80007658:	b4dff06f          	j	800071a4 <__printf+0x6c>
    8000765c:	40c0053b          	negw	a0,a2
    80007660:	00a00713          	li	a4,10
    80007664:	02e576bb          	remuw	a3,a0,a4
    80007668:	00002d97          	auipc	s11,0x2
    8000766c:	f90d8d93          	addi	s11,s11,-112 # 800095f8 <digits>
    80007670:	ff700593          	li	a1,-9
    80007674:	02069693          	slli	a3,a3,0x20
    80007678:	0206d693          	srli	a3,a3,0x20
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c683          	lbu	a3,0(a3)
    80007684:	02e557bb          	divuw	a5,a0,a4
    80007688:	f8d40023          	sb	a3,-128(s0)
    8000768c:	10b65e63          	bge	a2,a1,800077a8 <__printf+0x670>
    80007690:	06300593          	li	a1,99
    80007694:	02e7f6bb          	remuw	a3,a5,a4
    80007698:	02069693          	slli	a3,a3,0x20
    8000769c:	0206d693          	srli	a3,a3,0x20
    800076a0:	00dd86b3          	add	a3,s11,a3
    800076a4:	0006c683          	lbu	a3,0(a3)
    800076a8:	02e7d73b          	divuw	a4,a5,a4
    800076ac:	00200793          	li	a5,2
    800076b0:	f8d400a3          	sb	a3,-127(s0)
    800076b4:	bca5ece3          	bltu	a1,a0,8000728c <__printf+0x154>
    800076b8:	ce5ff06f          	j	8000739c <__printf+0x264>
    800076bc:	40e007bb          	negw	a5,a4
    800076c0:	00002d97          	auipc	s11,0x2
    800076c4:	f38d8d93          	addi	s11,s11,-200 # 800095f8 <digits>
    800076c8:	00f7f693          	andi	a3,a5,15
    800076cc:	00dd86b3          	add	a3,s11,a3
    800076d0:	0006c583          	lbu	a1,0(a3)
    800076d4:	ff100613          	li	a2,-15
    800076d8:	0047d69b          	srliw	a3,a5,0x4
    800076dc:	f8b40023          	sb	a1,-128(s0)
    800076e0:	0047d59b          	srliw	a1,a5,0x4
    800076e4:	0ac75e63          	bge	a4,a2,800077a0 <__printf+0x668>
    800076e8:	00f6f693          	andi	a3,a3,15
    800076ec:	00dd86b3          	add	a3,s11,a3
    800076f0:	0006c603          	lbu	a2,0(a3)
    800076f4:	00f00693          	li	a3,15
    800076f8:	0087d79b          	srliw	a5,a5,0x8
    800076fc:	f8c400a3          	sb	a2,-127(s0)
    80007700:	d8b6e4e3          	bltu	a3,a1,80007488 <__printf+0x350>
    80007704:	00200793          	li	a5,2
    80007708:	e2dff06f          	j	80007534 <__printf+0x3fc>
    8000770c:	00002c97          	auipc	s9,0x2
    80007710:	eccc8c93          	addi	s9,s9,-308 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80007714:	02800513          	li	a0,40
    80007718:	ef1ff06f          	j	80007608 <__printf+0x4d0>
    8000771c:	00700793          	li	a5,7
    80007720:	00600c93          	li	s9,6
    80007724:	e0dff06f          	j	80007530 <__printf+0x3f8>
    80007728:	00700793          	li	a5,7
    8000772c:	00600c93          	li	s9,6
    80007730:	c69ff06f          	j	80007398 <__printf+0x260>
    80007734:	00300793          	li	a5,3
    80007738:	00200c93          	li	s9,2
    8000773c:	c5dff06f          	j	80007398 <__printf+0x260>
    80007740:	00300793          	li	a5,3
    80007744:	00200c93          	li	s9,2
    80007748:	de9ff06f          	j	80007530 <__printf+0x3f8>
    8000774c:	00400793          	li	a5,4
    80007750:	00300c93          	li	s9,3
    80007754:	dddff06f          	j	80007530 <__printf+0x3f8>
    80007758:	00400793          	li	a5,4
    8000775c:	00300c93          	li	s9,3
    80007760:	c39ff06f          	j	80007398 <__printf+0x260>
    80007764:	00500793          	li	a5,5
    80007768:	00400c93          	li	s9,4
    8000776c:	c2dff06f          	j	80007398 <__printf+0x260>
    80007770:	00500793          	li	a5,5
    80007774:	00400c93          	li	s9,4
    80007778:	db9ff06f          	j	80007530 <__printf+0x3f8>
    8000777c:	00600793          	li	a5,6
    80007780:	00500c93          	li	s9,5
    80007784:	dadff06f          	j	80007530 <__printf+0x3f8>
    80007788:	00600793          	li	a5,6
    8000778c:	00500c93          	li	s9,5
    80007790:	c09ff06f          	j	80007398 <__printf+0x260>
    80007794:	00800793          	li	a5,8
    80007798:	00700c93          	li	s9,7
    8000779c:	bfdff06f          	j	80007398 <__printf+0x260>
    800077a0:	00100793          	li	a5,1
    800077a4:	d91ff06f          	j	80007534 <__printf+0x3fc>
    800077a8:	00100793          	li	a5,1
    800077ac:	bf1ff06f          	j	8000739c <__printf+0x264>
    800077b0:	00900793          	li	a5,9
    800077b4:	00800c93          	li	s9,8
    800077b8:	be1ff06f          	j	80007398 <__printf+0x260>
    800077bc:	00002517          	auipc	a0,0x2
    800077c0:	e2450513          	addi	a0,a0,-476 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	918080e7          	jalr	-1768(ra) # 800070dc <panic>

00000000800077cc <printfinit>:
    800077cc:	fe010113          	addi	sp,sp,-32
    800077d0:	00813823          	sd	s0,16(sp)
    800077d4:	00913423          	sd	s1,8(sp)
    800077d8:	00113c23          	sd	ra,24(sp)
    800077dc:	02010413          	addi	s0,sp,32
    800077e0:	00005497          	auipc	s1,0x5
    800077e4:	07048493          	addi	s1,s1,112 # 8000c850 <pr>
    800077e8:	00048513          	mv	a0,s1
    800077ec:	00002597          	auipc	a1,0x2
    800077f0:	e0458593          	addi	a1,a1,-508 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	5f4080e7          	jalr	1524(ra) # 80007de8 <initlock>
    800077fc:	01813083          	ld	ra,24(sp)
    80007800:	01013403          	ld	s0,16(sp)
    80007804:	0004ac23          	sw	zero,24(s1)
    80007808:	00813483          	ld	s1,8(sp)
    8000780c:	02010113          	addi	sp,sp,32
    80007810:	00008067          	ret

0000000080007814 <uartinit>:
    80007814:	ff010113          	addi	sp,sp,-16
    80007818:	00813423          	sd	s0,8(sp)
    8000781c:	01010413          	addi	s0,sp,16
    80007820:	100007b7          	lui	a5,0x10000
    80007824:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007828:	f8000713          	li	a4,-128
    8000782c:	00e781a3          	sb	a4,3(a5)
    80007830:	00300713          	li	a4,3
    80007834:	00e78023          	sb	a4,0(a5)
    80007838:	000780a3          	sb	zero,1(a5)
    8000783c:	00e781a3          	sb	a4,3(a5)
    80007840:	00700693          	li	a3,7
    80007844:	00d78123          	sb	a3,2(a5)
    80007848:	00e780a3          	sb	a4,1(a5)
    8000784c:	00813403          	ld	s0,8(sp)
    80007850:	01010113          	addi	sp,sp,16
    80007854:	00008067          	ret

0000000080007858 <uartputc>:
    80007858:	00004797          	auipc	a5,0x4
    8000785c:	d207a783          	lw	a5,-736(a5) # 8000b578 <panicked>
    80007860:	00078463          	beqz	a5,80007868 <uartputc+0x10>
    80007864:	0000006f          	j	80007864 <uartputc+0xc>
    80007868:	fd010113          	addi	sp,sp,-48
    8000786c:	02813023          	sd	s0,32(sp)
    80007870:	00913c23          	sd	s1,24(sp)
    80007874:	01213823          	sd	s2,16(sp)
    80007878:	01313423          	sd	s3,8(sp)
    8000787c:	02113423          	sd	ra,40(sp)
    80007880:	03010413          	addi	s0,sp,48
    80007884:	00004917          	auipc	s2,0x4
    80007888:	cfc90913          	addi	s2,s2,-772 # 8000b580 <uart_tx_r>
    8000788c:	00093783          	ld	a5,0(s2)
    80007890:	00004497          	auipc	s1,0x4
    80007894:	cf848493          	addi	s1,s1,-776 # 8000b588 <uart_tx_w>
    80007898:	0004b703          	ld	a4,0(s1)
    8000789c:	02078693          	addi	a3,a5,32
    800078a0:	00050993          	mv	s3,a0
    800078a4:	02e69c63          	bne	a3,a4,800078dc <uartputc+0x84>
    800078a8:	00001097          	auipc	ra,0x1
    800078ac:	834080e7          	jalr	-1996(ra) # 800080dc <push_on>
    800078b0:	00093783          	ld	a5,0(s2)
    800078b4:	0004b703          	ld	a4,0(s1)
    800078b8:	02078793          	addi	a5,a5,32
    800078bc:	00e79463          	bne	a5,a4,800078c4 <uartputc+0x6c>
    800078c0:	0000006f          	j	800078c0 <uartputc+0x68>
    800078c4:	00001097          	auipc	ra,0x1
    800078c8:	88c080e7          	jalr	-1908(ra) # 80008150 <pop_on>
    800078cc:	00093783          	ld	a5,0(s2)
    800078d0:	0004b703          	ld	a4,0(s1)
    800078d4:	02078693          	addi	a3,a5,32
    800078d8:	fce688e3          	beq	a3,a4,800078a8 <uartputc+0x50>
    800078dc:	01f77693          	andi	a3,a4,31
    800078e0:	00005597          	auipc	a1,0x5
    800078e4:	f9058593          	addi	a1,a1,-112 # 8000c870 <uart_tx_buf>
    800078e8:	00d586b3          	add	a3,a1,a3
    800078ec:	00170713          	addi	a4,a4,1
    800078f0:	01368023          	sb	s3,0(a3)
    800078f4:	00e4b023          	sd	a4,0(s1)
    800078f8:	10000637          	lui	a2,0x10000
    800078fc:	02f71063          	bne	a4,a5,8000791c <uartputc+0xc4>
    80007900:	0340006f          	j	80007934 <uartputc+0xdc>
    80007904:	00074703          	lbu	a4,0(a4)
    80007908:	00f93023          	sd	a5,0(s2)
    8000790c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007910:	00093783          	ld	a5,0(s2)
    80007914:	0004b703          	ld	a4,0(s1)
    80007918:	00f70e63          	beq	a4,a5,80007934 <uartputc+0xdc>
    8000791c:	00564683          	lbu	a3,5(a2)
    80007920:	01f7f713          	andi	a4,a5,31
    80007924:	00e58733          	add	a4,a1,a4
    80007928:	0206f693          	andi	a3,a3,32
    8000792c:	00178793          	addi	a5,a5,1
    80007930:	fc069ae3          	bnez	a3,80007904 <uartputc+0xac>
    80007934:	02813083          	ld	ra,40(sp)
    80007938:	02013403          	ld	s0,32(sp)
    8000793c:	01813483          	ld	s1,24(sp)
    80007940:	01013903          	ld	s2,16(sp)
    80007944:	00813983          	ld	s3,8(sp)
    80007948:	03010113          	addi	sp,sp,48
    8000794c:	00008067          	ret

0000000080007950 <uartputc_sync>:
    80007950:	ff010113          	addi	sp,sp,-16
    80007954:	00813423          	sd	s0,8(sp)
    80007958:	01010413          	addi	s0,sp,16
    8000795c:	00004717          	auipc	a4,0x4
    80007960:	c1c72703          	lw	a4,-996(a4) # 8000b578 <panicked>
    80007964:	02071663          	bnez	a4,80007990 <uartputc_sync+0x40>
    80007968:	00050793          	mv	a5,a0
    8000796c:	100006b7          	lui	a3,0x10000
    80007970:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007974:	02077713          	andi	a4,a4,32
    80007978:	fe070ce3          	beqz	a4,80007970 <uartputc_sync+0x20>
    8000797c:	0ff7f793          	andi	a5,a5,255
    80007980:	00f68023          	sb	a5,0(a3)
    80007984:	00813403          	ld	s0,8(sp)
    80007988:	01010113          	addi	sp,sp,16
    8000798c:	00008067          	ret
    80007990:	0000006f          	j	80007990 <uartputc_sync+0x40>

0000000080007994 <uartstart>:
    80007994:	ff010113          	addi	sp,sp,-16
    80007998:	00813423          	sd	s0,8(sp)
    8000799c:	01010413          	addi	s0,sp,16
    800079a0:	00004617          	auipc	a2,0x4
    800079a4:	be060613          	addi	a2,a2,-1056 # 8000b580 <uart_tx_r>
    800079a8:	00004517          	auipc	a0,0x4
    800079ac:	be050513          	addi	a0,a0,-1056 # 8000b588 <uart_tx_w>
    800079b0:	00063783          	ld	a5,0(a2)
    800079b4:	00053703          	ld	a4,0(a0)
    800079b8:	04f70263          	beq	a4,a5,800079fc <uartstart+0x68>
    800079bc:	100005b7          	lui	a1,0x10000
    800079c0:	00005817          	auipc	a6,0x5
    800079c4:	eb080813          	addi	a6,a6,-336 # 8000c870 <uart_tx_buf>
    800079c8:	01c0006f          	j	800079e4 <uartstart+0x50>
    800079cc:	0006c703          	lbu	a4,0(a3)
    800079d0:	00f63023          	sd	a5,0(a2)
    800079d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079d8:	00063783          	ld	a5,0(a2)
    800079dc:	00053703          	ld	a4,0(a0)
    800079e0:	00f70e63          	beq	a4,a5,800079fc <uartstart+0x68>
    800079e4:	01f7f713          	andi	a4,a5,31
    800079e8:	00e806b3          	add	a3,a6,a4
    800079ec:	0055c703          	lbu	a4,5(a1)
    800079f0:	00178793          	addi	a5,a5,1
    800079f4:	02077713          	andi	a4,a4,32
    800079f8:	fc071ae3          	bnez	a4,800079cc <uartstart+0x38>
    800079fc:	00813403          	ld	s0,8(sp)
    80007a00:	01010113          	addi	sp,sp,16
    80007a04:	00008067          	ret

0000000080007a08 <uartgetc>:
    80007a08:	ff010113          	addi	sp,sp,-16
    80007a0c:	00813423          	sd	s0,8(sp)
    80007a10:	01010413          	addi	s0,sp,16
    80007a14:	10000737          	lui	a4,0x10000
    80007a18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a1c:	0017f793          	andi	a5,a5,1
    80007a20:	00078c63          	beqz	a5,80007a38 <uartgetc+0x30>
    80007a24:	00074503          	lbu	a0,0(a4)
    80007a28:	0ff57513          	andi	a0,a0,255
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret
    80007a38:	fff00513          	li	a0,-1
    80007a3c:	ff1ff06f          	j	80007a2c <uartgetc+0x24>

0000000080007a40 <uartintr>:
    80007a40:	100007b7          	lui	a5,0x10000
    80007a44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a48:	0017f793          	andi	a5,a5,1
    80007a4c:	0a078463          	beqz	a5,80007af4 <uartintr+0xb4>
    80007a50:	fe010113          	addi	sp,sp,-32
    80007a54:	00813823          	sd	s0,16(sp)
    80007a58:	00913423          	sd	s1,8(sp)
    80007a5c:	00113c23          	sd	ra,24(sp)
    80007a60:	02010413          	addi	s0,sp,32
    80007a64:	100004b7          	lui	s1,0x10000
    80007a68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a6c:	0ff57513          	andi	a0,a0,255
    80007a70:	fffff097          	auipc	ra,0xfffff
    80007a74:	534080e7          	jalr	1332(ra) # 80006fa4 <consoleintr>
    80007a78:	0054c783          	lbu	a5,5(s1)
    80007a7c:	0017f793          	andi	a5,a5,1
    80007a80:	fe0794e3          	bnez	a5,80007a68 <uartintr+0x28>
    80007a84:	00004617          	auipc	a2,0x4
    80007a88:	afc60613          	addi	a2,a2,-1284 # 8000b580 <uart_tx_r>
    80007a8c:	00004517          	auipc	a0,0x4
    80007a90:	afc50513          	addi	a0,a0,-1284 # 8000b588 <uart_tx_w>
    80007a94:	00063783          	ld	a5,0(a2)
    80007a98:	00053703          	ld	a4,0(a0)
    80007a9c:	04f70263          	beq	a4,a5,80007ae0 <uartintr+0xa0>
    80007aa0:	100005b7          	lui	a1,0x10000
    80007aa4:	00005817          	auipc	a6,0x5
    80007aa8:	dcc80813          	addi	a6,a6,-564 # 8000c870 <uart_tx_buf>
    80007aac:	01c0006f          	j	80007ac8 <uartintr+0x88>
    80007ab0:	0006c703          	lbu	a4,0(a3)
    80007ab4:	00f63023          	sd	a5,0(a2)
    80007ab8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007abc:	00063783          	ld	a5,0(a2)
    80007ac0:	00053703          	ld	a4,0(a0)
    80007ac4:	00f70e63          	beq	a4,a5,80007ae0 <uartintr+0xa0>
    80007ac8:	01f7f713          	andi	a4,a5,31
    80007acc:	00e806b3          	add	a3,a6,a4
    80007ad0:	0055c703          	lbu	a4,5(a1)
    80007ad4:	00178793          	addi	a5,a5,1
    80007ad8:	02077713          	andi	a4,a4,32
    80007adc:	fc071ae3          	bnez	a4,80007ab0 <uartintr+0x70>
    80007ae0:	01813083          	ld	ra,24(sp)
    80007ae4:	01013403          	ld	s0,16(sp)
    80007ae8:	00813483          	ld	s1,8(sp)
    80007aec:	02010113          	addi	sp,sp,32
    80007af0:	00008067          	ret
    80007af4:	00004617          	auipc	a2,0x4
    80007af8:	a8c60613          	addi	a2,a2,-1396 # 8000b580 <uart_tx_r>
    80007afc:	00004517          	auipc	a0,0x4
    80007b00:	a8c50513          	addi	a0,a0,-1396 # 8000b588 <uart_tx_w>
    80007b04:	00063783          	ld	a5,0(a2)
    80007b08:	00053703          	ld	a4,0(a0)
    80007b0c:	04f70263          	beq	a4,a5,80007b50 <uartintr+0x110>
    80007b10:	100005b7          	lui	a1,0x10000
    80007b14:	00005817          	auipc	a6,0x5
    80007b18:	d5c80813          	addi	a6,a6,-676 # 8000c870 <uart_tx_buf>
    80007b1c:	01c0006f          	j	80007b38 <uartintr+0xf8>
    80007b20:	0006c703          	lbu	a4,0(a3)
    80007b24:	00f63023          	sd	a5,0(a2)
    80007b28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b2c:	00063783          	ld	a5,0(a2)
    80007b30:	00053703          	ld	a4,0(a0)
    80007b34:	02f70063          	beq	a4,a5,80007b54 <uartintr+0x114>
    80007b38:	01f7f713          	andi	a4,a5,31
    80007b3c:	00e806b3          	add	a3,a6,a4
    80007b40:	0055c703          	lbu	a4,5(a1)
    80007b44:	00178793          	addi	a5,a5,1
    80007b48:	02077713          	andi	a4,a4,32
    80007b4c:	fc071ae3          	bnez	a4,80007b20 <uartintr+0xe0>
    80007b50:	00008067          	ret
    80007b54:	00008067          	ret

0000000080007b58 <kinit>:
    80007b58:	fc010113          	addi	sp,sp,-64
    80007b5c:	02913423          	sd	s1,40(sp)
    80007b60:	fffff7b7          	lui	a5,0xfffff
    80007b64:	00006497          	auipc	s1,0x6
    80007b68:	d2b48493          	addi	s1,s1,-725 # 8000d88f <end+0xfff>
    80007b6c:	02813823          	sd	s0,48(sp)
    80007b70:	01313c23          	sd	s3,24(sp)
    80007b74:	00f4f4b3          	and	s1,s1,a5
    80007b78:	02113c23          	sd	ra,56(sp)
    80007b7c:	03213023          	sd	s2,32(sp)
    80007b80:	01413823          	sd	s4,16(sp)
    80007b84:	01513423          	sd	s5,8(sp)
    80007b88:	04010413          	addi	s0,sp,64
    80007b8c:	000017b7          	lui	a5,0x1
    80007b90:	01100993          	li	s3,17
    80007b94:	00f487b3          	add	a5,s1,a5
    80007b98:	01b99993          	slli	s3,s3,0x1b
    80007b9c:	06f9e063          	bltu	s3,a5,80007bfc <kinit+0xa4>
    80007ba0:	00005a97          	auipc	s5,0x5
    80007ba4:	cf0a8a93          	addi	s5,s5,-784 # 8000c890 <end>
    80007ba8:	0754ec63          	bltu	s1,s5,80007c20 <kinit+0xc8>
    80007bac:	0734fa63          	bgeu	s1,s3,80007c20 <kinit+0xc8>
    80007bb0:	00088a37          	lui	s4,0x88
    80007bb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007bb8:	00004917          	auipc	s2,0x4
    80007bbc:	9d890913          	addi	s2,s2,-1576 # 8000b590 <kmem>
    80007bc0:	00ca1a13          	slli	s4,s4,0xc
    80007bc4:	0140006f          	j	80007bd8 <kinit+0x80>
    80007bc8:	000017b7          	lui	a5,0x1
    80007bcc:	00f484b3          	add	s1,s1,a5
    80007bd0:	0554e863          	bltu	s1,s5,80007c20 <kinit+0xc8>
    80007bd4:	0534f663          	bgeu	s1,s3,80007c20 <kinit+0xc8>
    80007bd8:	00001637          	lui	a2,0x1
    80007bdc:	00100593          	li	a1,1
    80007be0:	00048513          	mv	a0,s1
    80007be4:	00000097          	auipc	ra,0x0
    80007be8:	5e4080e7          	jalr	1508(ra) # 800081c8 <__memset>
    80007bec:	00093783          	ld	a5,0(s2)
    80007bf0:	00f4b023          	sd	a5,0(s1)
    80007bf4:	00993023          	sd	s1,0(s2)
    80007bf8:	fd4498e3          	bne	s1,s4,80007bc8 <kinit+0x70>
    80007bfc:	03813083          	ld	ra,56(sp)
    80007c00:	03013403          	ld	s0,48(sp)
    80007c04:	02813483          	ld	s1,40(sp)
    80007c08:	02013903          	ld	s2,32(sp)
    80007c0c:	01813983          	ld	s3,24(sp)
    80007c10:	01013a03          	ld	s4,16(sp)
    80007c14:	00813a83          	ld	s5,8(sp)
    80007c18:	04010113          	addi	sp,sp,64
    80007c1c:	00008067          	ret
    80007c20:	00002517          	auipc	a0,0x2
    80007c24:	9f050513          	addi	a0,a0,-1552 # 80009610 <digits+0x18>
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	4b4080e7          	jalr	1204(ra) # 800070dc <panic>

0000000080007c30 <freerange>:
    80007c30:	fc010113          	addi	sp,sp,-64
    80007c34:	000017b7          	lui	a5,0x1
    80007c38:	02913423          	sd	s1,40(sp)
    80007c3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c40:	009504b3          	add	s1,a0,s1
    80007c44:	fffff537          	lui	a0,0xfffff
    80007c48:	02813823          	sd	s0,48(sp)
    80007c4c:	02113c23          	sd	ra,56(sp)
    80007c50:	03213023          	sd	s2,32(sp)
    80007c54:	01313c23          	sd	s3,24(sp)
    80007c58:	01413823          	sd	s4,16(sp)
    80007c5c:	01513423          	sd	s5,8(sp)
    80007c60:	01613023          	sd	s6,0(sp)
    80007c64:	04010413          	addi	s0,sp,64
    80007c68:	00a4f4b3          	and	s1,s1,a0
    80007c6c:	00f487b3          	add	a5,s1,a5
    80007c70:	06f5e463          	bltu	a1,a5,80007cd8 <freerange+0xa8>
    80007c74:	00005a97          	auipc	s5,0x5
    80007c78:	c1ca8a93          	addi	s5,s5,-996 # 8000c890 <end>
    80007c7c:	0954e263          	bltu	s1,s5,80007d00 <freerange+0xd0>
    80007c80:	01100993          	li	s3,17
    80007c84:	01b99993          	slli	s3,s3,0x1b
    80007c88:	0734fc63          	bgeu	s1,s3,80007d00 <freerange+0xd0>
    80007c8c:	00058a13          	mv	s4,a1
    80007c90:	00004917          	auipc	s2,0x4
    80007c94:	90090913          	addi	s2,s2,-1792 # 8000b590 <kmem>
    80007c98:	00002b37          	lui	s6,0x2
    80007c9c:	0140006f          	j	80007cb0 <freerange+0x80>
    80007ca0:	000017b7          	lui	a5,0x1
    80007ca4:	00f484b3          	add	s1,s1,a5
    80007ca8:	0554ec63          	bltu	s1,s5,80007d00 <freerange+0xd0>
    80007cac:	0534fa63          	bgeu	s1,s3,80007d00 <freerange+0xd0>
    80007cb0:	00001637          	lui	a2,0x1
    80007cb4:	00100593          	li	a1,1
    80007cb8:	00048513          	mv	a0,s1
    80007cbc:	00000097          	auipc	ra,0x0
    80007cc0:	50c080e7          	jalr	1292(ra) # 800081c8 <__memset>
    80007cc4:	00093703          	ld	a4,0(s2)
    80007cc8:	016487b3          	add	a5,s1,s6
    80007ccc:	00e4b023          	sd	a4,0(s1)
    80007cd0:	00993023          	sd	s1,0(s2)
    80007cd4:	fcfa76e3          	bgeu	s4,a5,80007ca0 <freerange+0x70>
    80007cd8:	03813083          	ld	ra,56(sp)
    80007cdc:	03013403          	ld	s0,48(sp)
    80007ce0:	02813483          	ld	s1,40(sp)
    80007ce4:	02013903          	ld	s2,32(sp)
    80007ce8:	01813983          	ld	s3,24(sp)
    80007cec:	01013a03          	ld	s4,16(sp)
    80007cf0:	00813a83          	ld	s5,8(sp)
    80007cf4:	00013b03          	ld	s6,0(sp)
    80007cf8:	04010113          	addi	sp,sp,64
    80007cfc:	00008067          	ret
    80007d00:	00002517          	auipc	a0,0x2
    80007d04:	91050513          	addi	a0,a0,-1776 # 80009610 <digits+0x18>
    80007d08:	fffff097          	auipc	ra,0xfffff
    80007d0c:	3d4080e7          	jalr	980(ra) # 800070dc <panic>

0000000080007d10 <kfree>:
    80007d10:	fe010113          	addi	sp,sp,-32
    80007d14:	00813823          	sd	s0,16(sp)
    80007d18:	00113c23          	sd	ra,24(sp)
    80007d1c:	00913423          	sd	s1,8(sp)
    80007d20:	02010413          	addi	s0,sp,32
    80007d24:	03451793          	slli	a5,a0,0x34
    80007d28:	04079c63          	bnez	a5,80007d80 <kfree+0x70>
    80007d2c:	00005797          	auipc	a5,0x5
    80007d30:	b6478793          	addi	a5,a5,-1180 # 8000c890 <end>
    80007d34:	00050493          	mv	s1,a0
    80007d38:	04f56463          	bltu	a0,a5,80007d80 <kfree+0x70>
    80007d3c:	01100793          	li	a5,17
    80007d40:	01b79793          	slli	a5,a5,0x1b
    80007d44:	02f57e63          	bgeu	a0,a5,80007d80 <kfree+0x70>
    80007d48:	00001637          	lui	a2,0x1
    80007d4c:	00100593          	li	a1,1
    80007d50:	00000097          	auipc	ra,0x0
    80007d54:	478080e7          	jalr	1144(ra) # 800081c8 <__memset>
    80007d58:	00004797          	auipc	a5,0x4
    80007d5c:	83878793          	addi	a5,a5,-1992 # 8000b590 <kmem>
    80007d60:	0007b703          	ld	a4,0(a5)
    80007d64:	01813083          	ld	ra,24(sp)
    80007d68:	01013403          	ld	s0,16(sp)
    80007d6c:	00e4b023          	sd	a4,0(s1)
    80007d70:	0097b023          	sd	s1,0(a5)
    80007d74:	00813483          	ld	s1,8(sp)
    80007d78:	02010113          	addi	sp,sp,32
    80007d7c:	00008067          	ret
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	89050513          	addi	a0,a0,-1904 # 80009610 <digits+0x18>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	354080e7          	jalr	852(ra) # 800070dc <panic>

0000000080007d90 <kalloc>:
    80007d90:	fe010113          	addi	sp,sp,-32
    80007d94:	00813823          	sd	s0,16(sp)
    80007d98:	00913423          	sd	s1,8(sp)
    80007d9c:	00113c23          	sd	ra,24(sp)
    80007da0:	02010413          	addi	s0,sp,32
    80007da4:	00003797          	auipc	a5,0x3
    80007da8:	7ec78793          	addi	a5,a5,2028 # 8000b590 <kmem>
    80007dac:	0007b483          	ld	s1,0(a5)
    80007db0:	02048063          	beqz	s1,80007dd0 <kalloc+0x40>
    80007db4:	0004b703          	ld	a4,0(s1)
    80007db8:	00001637          	lui	a2,0x1
    80007dbc:	00500593          	li	a1,5
    80007dc0:	00048513          	mv	a0,s1
    80007dc4:	00e7b023          	sd	a4,0(a5)
    80007dc8:	00000097          	auipc	ra,0x0
    80007dcc:	400080e7          	jalr	1024(ra) # 800081c8 <__memset>
    80007dd0:	01813083          	ld	ra,24(sp)
    80007dd4:	01013403          	ld	s0,16(sp)
    80007dd8:	00048513          	mv	a0,s1
    80007ddc:	00813483          	ld	s1,8(sp)
    80007de0:	02010113          	addi	sp,sp,32
    80007de4:	00008067          	ret

0000000080007de8 <initlock>:
    80007de8:	ff010113          	addi	sp,sp,-16
    80007dec:	00813423          	sd	s0,8(sp)
    80007df0:	01010413          	addi	s0,sp,16
    80007df4:	00813403          	ld	s0,8(sp)
    80007df8:	00b53423          	sd	a1,8(a0)
    80007dfc:	00052023          	sw	zero,0(a0)
    80007e00:	00053823          	sd	zero,16(a0)
    80007e04:	01010113          	addi	sp,sp,16
    80007e08:	00008067          	ret

0000000080007e0c <acquire>:
    80007e0c:	fe010113          	addi	sp,sp,-32
    80007e10:	00813823          	sd	s0,16(sp)
    80007e14:	00913423          	sd	s1,8(sp)
    80007e18:	00113c23          	sd	ra,24(sp)
    80007e1c:	01213023          	sd	s2,0(sp)
    80007e20:	02010413          	addi	s0,sp,32
    80007e24:	00050493          	mv	s1,a0
    80007e28:	10002973          	csrr	s2,sstatus
    80007e2c:	100027f3          	csrr	a5,sstatus
    80007e30:	ffd7f793          	andi	a5,a5,-3
    80007e34:	10079073          	csrw	sstatus,a5
    80007e38:	fffff097          	auipc	ra,0xfffff
    80007e3c:	8e4080e7          	jalr	-1820(ra) # 8000671c <mycpu>
    80007e40:	07852783          	lw	a5,120(a0)
    80007e44:	06078e63          	beqz	a5,80007ec0 <acquire+0xb4>
    80007e48:	fffff097          	auipc	ra,0xfffff
    80007e4c:	8d4080e7          	jalr	-1836(ra) # 8000671c <mycpu>
    80007e50:	07852783          	lw	a5,120(a0)
    80007e54:	0004a703          	lw	a4,0(s1)
    80007e58:	0017879b          	addiw	a5,a5,1
    80007e5c:	06f52c23          	sw	a5,120(a0)
    80007e60:	04071063          	bnez	a4,80007ea0 <acquire+0x94>
    80007e64:	00100713          	li	a4,1
    80007e68:	00070793          	mv	a5,a4
    80007e6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e70:	0007879b          	sext.w	a5,a5
    80007e74:	fe079ae3          	bnez	a5,80007e68 <acquire+0x5c>
    80007e78:	0ff0000f          	fence
    80007e7c:	fffff097          	auipc	ra,0xfffff
    80007e80:	8a0080e7          	jalr	-1888(ra) # 8000671c <mycpu>
    80007e84:	01813083          	ld	ra,24(sp)
    80007e88:	01013403          	ld	s0,16(sp)
    80007e8c:	00a4b823          	sd	a0,16(s1)
    80007e90:	00013903          	ld	s2,0(sp)
    80007e94:	00813483          	ld	s1,8(sp)
    80007e98:	02010113          	addi	sp,sp,32
    80007e9c:	00008067          	ret
    80007ea0:	0104b903          	ld	s2,16(s1)
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	878080e7          	jalr	-1928(ra) # 8000671c <mycpu>
    80007eac:	faa91ce3          	bne	s2,a0,80007e64 <acquire+0x58>
    80007eb0:	00001517          	auipc	a0,0x1
    80007eb4:	76850513          	addi	a0,a0,1896 # 80009618 <digits+0x20>
    80007eb8:	fffff097          	auipc	ra,0xfffff
    80007ebc:	224080e7          	jalr	548(ra) # 800070dc <panic>
    80007ec0:	00195913          	srli	s2,s2,0x1
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	858080e7          	jalr	-1960(ra) # 8000671c <mycpu>
    80007ecc:	00197913          	andi	s2,s2,1
    80007ed0:	07252e23          	sw	s2,124(a0)
    80007ed4:	f75ff06f          	j	80007e48 <acquire+0x3c>

0000000080007ed8 <release>:
    80007ed8:	fe010113          	addi	sp,sp,-32
    80007edc:	00813823          	sd	s0,16(sp)
    80007ee0:	00113c23          	sd	ra,24(sp)
    80007ee4:	00913423          	sd	s1,8(sp)
    80007ee8:	01213023          	sd	s2,0(sp)
    80007eec:	02010413          	addi	s0,sp,32
    80007ef0:	00052783          	lw	a5,0(a0)
    80007ef4:	00079a63          	bnez	a5,80007f08 <release+0x30>
    80007ef8:	00001517          	auipc	a0,0x1
    80007efc:	72850513          	addi	a0,a0,1832 # 80009620 <digits+0x28>
    80007f00:	fffff097          	auipc	ra,0xfffff
    80007f04:	1dc080e7          	jalr	476(ra) # 800070dc <panic>
    80007f08:	01053903          	ld	s2,16(a0)
    80007f0c:	00050493          	mv	s1,a0
    80007f10:	fffff097          	auipc	ra,0xfffff
    80007f14:	80c080e7          	jalr	-2036(ra) # 8000671c <mycpu>
    80007f18:	fea910e3          	bne	s2,a0,80007ef8 <release+0x20>
    80007f1c:	0004b823          	sd	zero,16(s1)
    80007f20:	0ff0000f          	fence
    80007f24:	0f50000f          	fence	iorw,ow
    80007f28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f2c:	ffffe097          	auipc	ra,0xffffe
    80007f30:	7f0080e7          	jalr	2032(ra) # 8000671c <mycpu>
    80007f34:	100027f3          	csrr	a5,sstatus
    80007f38:	0027f793          	andi	a5,a5,2
    80007f3c:	04079a63          	bnez	a5,80007f90 <release+0xb8>
    80007f40:	07852783          	lw	a5,120(a0)
    80007f44:	02f05e63          	blez	a5,80007f80 <release+0xa8>
    80007f48:	fff7871b          	addiw	a4,a5,-1
    80007f4c:	06e52c23          	sw	a4,120(a0)
    80007f50:	00071c63          	bnez	a4,80007f68 <release+0x90>
    80007f54:	07c52783          	lw	a5,124(a0)
    80007f58:	00078863          	beqz	a5,80007f68 <release+0x90>
    80007f5c:	100027f3          	csrr	a5,sstatus
    80007f60:	0027e793          	ori	a5,a5,2
    80007f64:	10079073          	csrw	sstatus,a5
    80007f68:	01813083          	ld	ra,24(sp)
    80007f6c:	01013403          	ld	s0,16(sp)
    80007f70:	00813483          	ld	s1,8(sp)
    80007f74:	00013903          	ld	s2,0(sp)
    80007f78:	02010113          	addi	sp,sp,32
    80007f7c:	00008067          	ret
    80007f80:	00001517          	auipc	a0,0x1
    80007f84:	6c050513          	addi	a0,a0,1728 # 80009640 <digits+0x48>
    80007f88:	fffff097          	auipc	ra,0xfffff
    80007f8c:	154080e7          	jalr	340(ra) # 800070dc <panic>
    80007f90:	00001517          	auipc	a0,0x1
    80007f94:	69850513          	addi	a0,a0,1688 # 80009628 <digits+0x30>
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	144080e7          	jalr	324(ra) # 800070dc <panic>

0000000080007fa0 <holding>:
    80007fa0:	00052783          	lw	a5,0(a0)
    80007fa4:	00079663          	bnez	a5,80007fb0 <holding+0x10>
    80007fa8:	00000513          	li	a0,0
    80007fac:	00008067          	ret
    80007fb0:	fe010113          	addi	sp,sp,-32
    80007fb4:	00813823          	sd	s0,16(sp)
    80007fb8:	00913423          	sd	s1,8(sp)
    80007fbc:	00113c23          	sd	ra,24(sp)
    80007fc0:	02010413          	addi	s0,sp,32
    80007fc4:	01053483          	ld	s1,16(a0)
    80007fc8:	ffffe097          	auipc	ra,0xffffe
    80007fcc:	754080e7          	jalr	1876(ra) # 8000671c <mycpu>
    80007fd0:	01813083          	ld	ra,24(sp)
    80007fd4:	01013403          	ld	s0,16(sp)
    80007fd8:	40a48533          	sub	a0,s1,a0
    80007fdc:	00153513          	seqz	a0,a0
    80007fe0:	00813483          	ld	s1,8(sp)
    80007fe4:	02010113          	addi	sp,sp,32
    80007fe8:	00008067          	ret

0000000080007fec <push_off>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00113c23          	sd	ra,24(sp)
    80007ff8:	00913423          	sd	s1,8(sp)
    80007ffc:	02010413          	addi	s0,sp,32
    80008000:	100024f3          	csrr	s1,sstatus
    80008004:	100027f3          	csrr	a5,sstatus
    80008008:	ffd7f793          	andi	a5,a5,-3
    8000800c:	10079073          	csrw	sstatus,a5
    80008010:	ffffe097          	auipc	ra,0xffffe
    80008014:	70c080e7          	jalr	1804(ra) # 8000671c <mycpu>
    80008018:	07852783          	lw	a5,120(a0)
    8000801c:	02078663          	beqz	a5,80008048 <push_off+0x5c>
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	6fc080e7          	jalr	1788(ra) # 8000671c <mycpu>
    80008028:	07852783          	lw	a5,120(a0)
    8000802c:	01813083          	ld	ra,24(sp)
    80008030:	01013403          	ld	s0,16(sp)
    80008034:	0017879b          	addiw	a5,a5,1
    80008038:	06f52c23          	sw	a5,120(a0)
    8000803c:	00813483          	ld	s1,8(sp)
    80008040:	02010113          	addi	sp,sp,32
    80008044:	00008067          	ret
    80008048:	0014d493          	srli	s1,s1,0x1
    8000804c:	ffffe097          	auipc	ra,0xffffe
    80008050:	6d0080e7          	jalr	1744(ra) # 8000671c <mycpu>
    80008054:	0014f493          	andi	s1,s1,1
    80008058:	06952e23          	sw	s1,124(a0)
    8000805c:	fc5ff06f          	j	80008020 <push_off+0x34>

0000000080008060 <pop_off>:
    80008060:	ff010113          	addi	sp,sp,-16
    80008064:	00813023          	sd	s0,0(sp)
    80008068:	00113423          	sd	ra,8(sp)
    8000806c:	01010413          	addi	s0,sp,16
    80008070:	ffffe097          	auipc	ra,0xffffe
    80008074:	6ac080e7          	jalr	1708(ra) # 8000671c <mycpu>
    80008078:	100027f3          	csrr	a5,sstatus
    8000807c:	0027f793          	andi	a5,a5,2
    80008080:	04079663          	bnez	a5,800080cc <pop_off+0x6c>
    80008084:	07852783          	lw	a5,120(a0)
    80008088:	02f05a63          	blez	a5,800080bc <pop_off+0x5c>
    8000808c:	fff7871b          	addiw	a4,a5,-1
    80008090:	06e52c23          	sw	a4,120(a0)
    80008094:	00071c63          	bnez	a4,800080ac <pop_off+0x4c>
    80008098:	07c52783          	lw	a5,124(a0)
    8000809c:	00078863          	beqz	a5,800080ac <pop_off+0x4c>
    800080a0:	100027f3          	csrr	a5,sstatus
    800080a4:	0027e793          	ori	a5,a5,2
    800080a8:	10079073          	csrw	sstatus,a5
    800080ac:	00813083          	ld	ra,8(sp)
    800080b0:	00013403          	ld	s0,0(sp)
    800080b4:	01010113          	addi	sp,sp,16
    800080b8:	00008067          	ret
    800080bc:	00001517          	auipc	a0,0x1
    800080c0:	58450513          	addi	a0,a0,1412 # 80009640 <digits+0x48>
    800080c4:	fffff097          	auipc	ra,0xfffff
    800080c8:	018080e7          	jalr	24(ra) # 800070dc <panic>
    800080cc:	00001517          	auipc	a0,0x1
    800080d0:	55c50513          	addi	a0,a0,1372 # 80009628 <digits+0x30>
    800080d4:	fffff097          	auipc	ra,0xfffff
    800080d8:	008080e7          	jalr	8(ra) # 800070dc <panic>

00000000800080dc <push_on>:
    800080dc:	fe010113          	addi	sp,sp,-32
    800080e0:	00813823          	sd	s0,16(sp)
    800080e4:	00113c23          	sd	ra,24(sp)
    800080e8:	00913423          	sd	s1,8(sp)
    800080ec:	02010413          	addi	s0,sp,32
    800080f0:	100024f3          	csrr	s1,sstatus
    800080f4:	100027f3          	csrr	a5,sstatus
    800080f8:	0027e793          	ori	a5,a5,2
    800080fc:	10079073          	csrw	sstatus,a5
    80008100:	ffffe097          	auipc	ra,0xffffe
    80008104:	61c080e7          	jalr	1564(ra) # 8000671c <mycpu>
    80008108:	07852783          	lw	a5,120(a0)
    8000810c:	02078663          	beqz	a5,80008138 <push_on+0x5c>
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	60c080e7          	jalr	1548(ra) # 8000671c <mycpu>
    80008118:	07852783          	lw	a5,120(a0)
    8000811c:	01813083          	ld	ra,24(sp)
    80008120:	01013403          	ld	s0,16(sp)
    80008124:	0017879b          	addiw	a5,a5,1
    80008128:	06f52c23          	sw	a5,120(a0)
    8000812c:	00813483          	ld	s1,8(sp)
    80008130:	02010113          	addi	sp,sp,32
    80008134:	00008067          	ret
    80008138:	0014d493          	srli	s1,s1,0x1
    8000813c:	ffffe097          	auipc	ra,0xffffe
    80008140:	5e0080e7          	jalr	1504(ra) # 8000671c <mycpu>
    80008144:	0014f493          	andi	s1,s1,1
    80008148:	06952e23          	sw	s1,124(a0)
    8000814c:	fc5ff06f          	j	80008110 <push_on+0x34>

0000000080008150 <pop_on>:
    80008150:	ff010113          	addi	sp,sp,-16
    80008154:	00813023          	sd	s0,0(sp)
    80008158:	00113423          	sd	ra,8(sp)
    8000815c:	01010413          	addi	s0,sp,16
    80008160:	ffffe097          	auipc	ra,0xffffe
    80008164:	5bc080e7          	jalr	1468(ra) # 8000671c <mycpu>
    80008168:	100027f3          	csrr	a5,sstatus
    8000816c:	0027f793          	andi	a5,a5,2
    80008170:	04078463          	beqz	a5,800081b8 <pop_on+0x68>
    80008174:	07852783          	lw	a5,120(a0)
    80008178:	02f05863          	blez	a5,800081a8 <pop_on+0x58>
    8000817c:	fff7879b          	addiw	a5,a5,-1
    80008180:	06f52c23          	sw	a5,120(a0)
    80008184:	07853783          	ld	a5,120(a0)
    80008188:	00079863          	bnez	a5,80008198 <pop_on+0x48>
    8000818c:	100027f3          	csrr	a5,sstatus
    80008190:	ffd7f793          	andi	a5,a5,-3
    80008194:	10079073          	csrw	sstatus,a5
    80008198:	00813083          	ld	ra,8(sp)
    8000819c:	00013403          	ld	s0,0(sp)
    800081a0:	01010113          	addi	sp,sp,16
    800081a4:	00008067          	ret
    800081a8:	00001517          	auipc	a0,0x1
    800081ac:	4c050513          	addi	a0,a0,1216 # 80009668 <digits+0x70>
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	f2c080e7          	jalr	-212(ra) # 800070dc <panic>
    800081b8:	00001517          	auipc	a0,0x1
    800081bc:	49050513          	addi	a0,a0,1168 # 80009648 <digits+0x50>
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	f1c080e7          	jalr	-228(ra) # 800070dc <panic>

00000000800081c8 <__memset>:
    800081c8:	ff010113          	addi	sp,sp,-16
    800081cc:	00813423          	sd	s0,8(sp)
    800081d0:	01010413          	addi	s0,sp,16
    800081d4:	1a060e63          	beqz	a2,80008390 <__memset+0x1c8>
    800081d8:	40a007b3          	neg	a5,a0
    800081dc:	0077f793          	andi	a5,a5,7
    800081e0:	00778693          	addi	a3,a5,7
    800081e4:	00b00813          	li	a6,11
    800081e8:	0ff5f593          	andi	a1,a1,255
    800081ec:	fff6071b          	addiw	a4,a2,-1
    800081f0:	1b06e663          	bltu	a3,a6,8000839c <__memset+0x1d4>
    800081f4:	1cd76463          	bltu	a4,a3,800083bc <__memset+0x1f4>
    800081f8:	1a078e63          	beqz	a5,800083b4 <__memset+0x1ec>
    800081fc:	00b50023          	sb	a1,0(a0)
    80008200:	00100713          	li	a4,1
    80008204:	1ae78463          	beq	a5,a4,800083ac <__memset+0x1e4>
    80008208:	00b500a3          	sb	a1,1(a0)
    8000820c:	00200713          	li	a4,2
    80008210:	1ae78a63          	beq	a5,a4,800083c4 <__memset+0x1fc>
    80008214:	00b50123          	sb	a1,2(a0)
    80008218:	00300713          	li	a4,3
    8000821c:	18e78463          	beq	a5,a4,800083a4 <__memset+0x1dc>
    80008220:	00b501a3          	sb	a1,3(a0)
    80008224:	00400713          	li	a4,4
    80008228:	1ae78263          	beq	a5,a4,800083cc <__memset+0x204>
    8000822c:	00b50223          	sb	a1,4(a0)
    80008230:	00500713          	li	a4,5
    80008234:	1ae78063          	beq	a5,a4,800083d4 <__memset+0x20c>
    80008238:	00b502a3          	sb	a1,5(a0)
    8000823c:	00700713          	li	a4,7
    80008240:	18e79e63          	bne	a5,a4,800083dc <__memset+0x214>
    80008244:	00b50323          	sb	a1,6(a0)
    80008248:	00700e93          	li	t4,7
    8000824c:	00859713          	slli	a4,a1,0x8
    80008250:	00e5e733          	or	a4,a1,a4
    80008254:	01059e13          	slli	t3,a1,0x10
    80008258:	01c76e33          	or	t3,a4,t3
    8000825c:	01859313          	slli	t1,a1,0x18
    80008260:	006e6333          	or	t1,t3,t1
    80008264:	02059893          	slli	a7,a1,0x20
    80008268:	40f60e3b          	subw	t3,a2,a5
    8000826c:	011368b3          	or	a7,t1,a7
    80008270:	02859813          	slli	a6,a1,0x28
    80008274:	0108e833          	or	a6,a7,a6
    80008278:	03059693          	slli	a3,a1,0x30
    8000827c:	003e589b          	srliw	a7,t3,0x3
    80008280:	00d866b3          	or	a3,a6,a3
    80008284:	03859713          	slli	a4,a1,0x38
    80008288:	00389813          	slli	a6,a7,0x3
    8000828c:	00f507b3          	add	a5,a0,a5
    80008290:	00e6e733          	or	a4,a3,a4
    80008294:	000e089b          	sext.w	a7,t3
    80008298:	00f806b3          	add	a3,a6,a5
    8000829c:	00e7b023          	sd	a4,0(a5)
    800082a0:	00878793          	addi	a5,a5,8
    800082a4:	fed79ce3          	bne	a5,a3,8000829c <__memset+0xd4>
    800082a8:	ff8e7793          	andi	a5,t3,-8
    800082ac:	0007871b          	sext.w	a4,a5
    800082b0:	01d787bb          	addw	a5,a5,t4
    800082b4:	0ce88e63          	beq	a7,a4,80008390 <__memset+0x1c8>
    800082b8:	00f50733          	add	a4,a0,a5
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0017871b          	addiw	a4,a5,1
    800082c4:	0cc77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0027871b          	addiw	a4,a5,2
    800082d4:	0ac77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0037871b          	addiw	a4,a5,3
    800082e4:	0ac77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0047871b          	addiw	a4,a5,4
    800082f4:	08c77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0057871b          	addiw	a4,a5,5
    80008304:	08c77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0067871b          	addiw	a4,a5,6
    80008314:	06c77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0077871b          	addiw	a4,a5,7
    80008324:	06c77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0087871b          	addiw	a4,a5,8
    80008334:	04c77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0097871b          	addiw	a4,a5,9
    80008344:	04c77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	00a7871b          	addiw	a4,a5,10
    80008354:	02c77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	00b7871b          	addiw	a4,a5,11
    80008364:	02c77663          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	00c7871b          	addiw	a4,a5,12
    80008374:	00c77e63          	bgeu	a4,a2,80008390 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	00d7879b          	addiw	a5,a5,13
    80008384:	00c7f663          	bgeu	a5,a2,80008390 <__memset+0x1c8>
    80008388:	00f507b3          	add	a5,a0,a5
    8000838c:	00b78023          	sb	a1,0(a5)
    80008390:	00813403          	ld	s0,8(sp)
    80008394:	01010113          	addi	sp,sp,16
    80008398:	00008067          	ret
    8000839c:	00b00693          	li	a3,11
    800083a0:	e55ff06f          	j	800081f4 <__memset+0x2c>
    800083a4:	00300e93          	li	t4,3
    800083a8:	ea5ff06f          	j	8000824c <__memset+0x84>
    800083ac:	00100e93          	li	t4,1
    800083b0:	e9dff06f          	j	8000824c <__memset+0x84>
    800083b4:	00000e93          	li	t4,0
    800083b8:	e95ff06f          	j	8000824c <__memset+0x84>
    800083bc:	00000793          	li	a5,0
    800083c0:	ef9ff06f          	j	800082b8 <__memset+0xf0>
    800083c4:	00200e93          	li	t4,2
    800083c8:	e85ff06f          	j	8000824c <__memset+0x84>
    800083cc:	00400e93          	li	t4,4
    800083d0:	e7dff06f          	j	8000824c <__memset+0x84>
    800083d4:	00500e93          	li	t4,5
    800083d8:	e75ff06f          	j	8000824c <__memset+0x84>
    800083dc:	00600e93          	li	t4,6
    800083e0:	e6dff06f          	j	8000824c <__memset+0x84>

00000000800083e4 <__memmove>:
    800083e4:	ff010113          	addi	sp,sp,-16
    800083e8:	00813423          	sd	s0,8(sp)
    800083ec:	01010413          	addi	s0,sp,16
    800083f0:	0e060863          	beqz	a2,800084e0 <__memmove+0xfc>
    800083f4:	fff6069b          	addiw	a3,a2,-1
    800083f8:	0006881b          	sext.w	a6,a3
    800083fc:	0ea5e863          	bltu	a1,a0,800084ec <__memmove+0x108>
    80008400:	00758713          	addi	a4,a1,7
    80008404:	00a5e7b3          	or	a5,a1,a0
    80008408:	40a70733          	sub	a4,a4,a0
    8000840c:	0077f793          	andi	a5,a5,7
    80008410:	00f73713          	sltiu	a4,a4,15
    80008414:	00174713          	xori	a4,a4,1
    80008418:	0017b793          	seqz	a5,a5
    8000841c:	00e7f7b3          	and	a5,a5,a4
    80008420:	10078863          	beqz	a5,80008530 <__memmove+0x14c>
    80008424:	00900793          	li	a5,9
    80008428:	1107f463          	bgeu	a5,a6,80008530 <__memmove+0x14c>
    8000842c:	0036581b          	srliw	a6,a2,0x3
    80008430:	fff8081b          	addiw	a6,a6,-1
    80008434:	02081813          	slli	a6,a6,0x20
    80008438:	01d85893          	srli	a7,a6,0x1d
    8000843c:	00858813          	addi	a6,a1,8
    80008440:	00058793          	mv	a5,a1
    80008444:	00050713          	mv	a4,a0
    80008448:	01088833          	add	a6,a7,a6
    8000844c:	0007b883          	ld	a7,0(a5)
    80008450:	00878793          	addi	a5,a5,8
    80008454:	00870713          	addi	a4,a4,8
    80008458:	ff173c23          	sd	a7,-8(a4)
    8000845c:	ff0798e3          	bne	a5,a6,8000844c <__memmove+0x68>
    80008460:	ff867713          	andi	a4,a2,-8
    80008464:	02071793          	slli	a5,a4,0x20
    80008468:	0207d793          	srli	a5,a5,0x20
    8000846c:	00f585b3          	add	a1,a1,a5
    80008470:	40e686bb          	subw	a3,a3,a4
    80008474:	00f507b3          	add	a5,a0,a5
    80008478:	06e60463          	beq	a2,a4,800084e0 <__memmove+0xfc>
    8000847c:	0005c703          	lbu	a4,0(a1)
    80008480:	00e78023          	sb	a4,0(a5)
    80008484:	04068e63          	beqz	a3,800084e0 <__memmove+0xfc>
    80008488:	0015c603          	lbu	a2,1(a1)
    8000848c:	00100713          	li	a4,1
    80008490:	00c780a3          	sb	a2,1(a5)
    80008494:	04e68663          	beq	a3,a4,800084e0 <__memmove+0xfc>
    80008498:	0025c603          	lbu	a2,2(a1)
    8000849c:	00200713          	li	a4,2
    800084a0:	00c78123          	sb	a2,2(a5)
    800084a4:	02e68e63          	beq	a3,a4,800084e0 <__memmove+0xfc>
    800084a8:	0035c603          	lbu	a2,3(a1)
    800084ac:	00300713          	li	a4,3
    800084b0:	00c781a3          	sb	a2,3(a5)
    800084b4:	02e68663          	beq	a3,a4,800084e0 <__memmove+0xfc>
    800084b8:	0045c603          	lbu	a2,4(a1)
    800084bc:	00400713          	li	a4,4
    800084c0:	00c78223          	sb	a2,4(a5)
    800084c4:	00e68e63          	beq	a3,a4,800084e0 <__memmove+0xfc>
    800084c8:	0055c603          	lbu	a2,5(a1)
    800084cc:	00500713          	li	a4,5
    800084d0:	00c782a3          	sb	a2,5(a5)
    800084d4:	00e68663          	beq	a3,a4,800084e0 <__memmove+0xfc>
    800084d8:	0065c703          	lbu	a4,6(a1)
    800084dc:	00e78323          	sb	a4,6(a5)
    800084e0:	00813403          	ld	s0,8(sp)
    800084e4:	01010113          	addi	sp,sp,16
    800084e8:	00008067          	ret
    800084ec:	02061713          	slli	a4,a2,0x20
    800084f0:	02075713          	srli	a4,a4,0x20
    800084f4:	00e587b3          	add	a5,a1,a4
    800084f8:	f0f574e3          	bgeu	a0,a5,80008400 <__memmove+0x1c>
    800084fc:	02069613          	slli	a2,a3,0x20
    80008500:	02065613          	srli	a2,a2,0x20
    80008504:	fff64613          	not	a2,a2
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00c78633          	add	a2,a5,a2
    80008510:	fff7c683          	lbu	a3,-1(a5)
    80008514:	fff78793          	addi	a5,a5,-1
    80008518:	fff70713          	addi	a4,a4,-1
    8000851c:	00d70023          	sb	a3,0(a4)
    80008520:	fec798e3          	bne	a5,a2,80008510 <__memmove+0x12c>
    80008524:	00813403          	ld	s0,8(sp)
    80008528:	01010113          	addi	sp,sp,16
    8000852c:	00008067          	ret
    80008530:	02069713          	slli	a4,a3,0x20
    80008534:	02075713          	srli	a4,a4,0x20
    80008538:	00170713          	addi	a4,a4,1
    8000853c:	00e50733          	add	a4,a0,a4
    80008540:	00050793          	mv	a5,a0
    80008544:	0005c683          	lbu	a3,0(a1)
    80008548:	00178793          	addi	a5,a5,1
    8000854c:	00158593          	addi	a1,a1,1
    80008550:	fed78fa3          	sb	a3,-1(a5)
    80008554:	fee798e3          	bne	a5,a4,80008544 <__memmove+0x160>
    80008558:	f89ff06f          	j	800084e0 <__memmove+0xfc>

000000008000855c <__putc>:
    8000855c:	fe010113          	addi	sp,sp,-32
    80008560:	00813823          	sd	s0,16(sp)
    80008564:	00113c23          	sd	ra,24(sp)
    80008568:	02010413          	addi	s0,sp,32
    8000856c:	00050793          	mv	a5,a0
    80008570:	fef40593          	addi	a1,s0,-17
    80008574:	00100613          	li	a2,1
    80008578:	00000513          	li	a0,0
    8000857c:	fef407a3          	sb	a5,-17(s0)
    80008580:	fffff097          	auipc	ra,0xfffff
    80008584:	b3c080e7          	jalr	-1220(ra) # 800070bc <console_write>
    80008588:	01813083          	ld	ra,24(sp)
    8000858c:	01013403          	ld	s0,16(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret

0000000080008598 <__getc>:
    80008598:	fe010113          	addi	sp,sp,-32
    8000859c:	00813823          	sd	s0,16(sp)
    800085a0:	00113c23          	sd	ra,24(sp)
    800085a4:	02010413          	addi	s0,sp,32
    800085a8:	fe840593          	addi	a1,s0,-24
    800085ac:	00100613          	li	a2,1
    800085b0:	00000513          	li	a0,0
    800085b4:	fffff097          	auipc	ra,0xfffff
    800085b8:	ae8080e7          	jalr	-1304(ra) # 8000709c <console_read>
    800085bc:	fe844503          	lbu	a0,-24(s0)
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	01013403          	ld	s0,16(sp)
    800085c8:	02010113          	addi	sp,sp,32
    800085cc:	00008067          	ret

00000000800085d0 <console_handler>:
    800085d0:	fe010113          	addi	sp,sp,-32
    800085d4:	00813823          	sd	s0,16(sp)
    800085d8:	00113c23          	sd	ra,24(sp)
    800085dc:	00913423          	sd	s1,8(sp)
    800085e0:	02010413          	addi	s0,sp,32
    800085e4:	14202773          	csrr	a4,scause
    800085e8:	100027f3          	csrr	a5,sstatus
    800085ec:	0027f793          	andi	a5,a5,2
    800085f0:	06079e63          	bnez	a5,8000866c <console_handler+0x9c>
    800085f4:	00074c63          	bltz	a4,8000860c <console_handler+0x3c>
    800085f8:	01813083          	ld	ra,24(sp)
    800085fc:	01013403          	ld	s0,16(sp)
    80008600:	00813483          	ld	s1,8(sp)
    80008604:	02010113          	addi	sp,sp,32
    80008608:	00008067          	ret
    8000860c:	0ff77713          	andi	a4,a4,255
    80008610:	00900793          	li	a5,9
    80008614:	fef712e3          	bne	a4,a5,800085f8 <console_handler+0x28>
    80008618:	ffffe097          	auipc	ra,0xffffe
    8000861c:	6dc080e7          	jalr	1756(ra) # 80006cf4 <plic_claim>
    80008620:	00a00793          	li	a5,10
    80008624:	00050493          	mv	s1,a0
    80008628:	02f50c63          	beq	a0,a5,80008660 <console_handler+0x90>
    8000862c:	fc0506e3          	beqz	a0,800085f8 <console_handler+0x28>
    80008630:	00050593          	mv	a1,a0
    80008634:	00001517          	auipc	a0,0x1
    80008638:	f3c50513          	addi	a0,a0,-196 # 80009570 <CONSOLE_STATUS+0x560>
    8000863c:	fffff097          	auipc	ra,0xfffff
    80008640:	afc080e7          	jalr	-1284(ra) # 80007138 <__printf>
    80008644:	01013403          	ld	s0,16(sp)
    80008648:	01813083          	ld	ra,24(sp)
    8000864c:	00048513          	mv	a0,s1
    80008650:	00813483          	ld	s1,8(sp)
    80008654:	02010113          	addi	sp,sp,32
    80008658:	ffffe317          	auipc	t1,0xffffe
    8000865c:	6d430067          	jr	1748(t1) # 80006d2c <plic_complete>
    80008660:	fffff097          	auipc	ra,0xfffff
    80008664:	3e0080e7          	jalr	992(ra) # 80007a40 <uartintr>
    80008668:	fddff06f          	j	80008644 <console_handler+0x74>
    8000866c:	00001517          	auipc	a0,0x1
    80008670:	00450513          	addi	a0,a0,4 # 80009670 <digits+0x78>
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	a68080e7          	jalr	-1432(ra) # 800070dc <panic>
	...
