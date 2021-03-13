;------------------------------------------------------------------------------------------
; 
;   Memory-Mapped Registers
;
; Takes from this site: https://wiki.superfamicom.org/registers
; Defines all the memory mapped resgisters in the system
;
;------------------------------------------------------------------------------------------

;-----------------------Internal CPU Registers------------------------------------------------

NMITEN = $4200          ; Interrupt Enable Register (Enables NMI)
WRIO = $4201            ; I/O Port Write Register
WRMPYA = $4202          ; Multiplicand Register
WRMPYB = $4203          ; Multiplicand Register
WRDIVL = $4204          ; Divisor and Dividend Register (Low)
WRDIVH = $4205          ; Divisor and Dividend Register (High)
WRDIVB = $4206          ; Divisor and Dividend Register (Bank)
HTIMEL = $4207          ; IRQ Timer Registers (Horizontal - Low)
HTIMEH = $4208          ; IRQ Timer Registers (Horizontal - High)
VTIMEL = $4209          ; IRQ Timer Registers (Vertical - Low)
VTIMEH = $420A          ; IRQ Timer Registers (Vertical - High)
MDMAEN = $420B          ; DMA Enable Register
HDMAEN = $420C          ; HDMA Enable Register
MEMSEL = $420D          ; ROM Speed Register
RDNMI = $4210           ; Interrupt Flags Register (NMI/VBLANK)
TIMEUP = $4211          ; Interrupt Flags Register (Regular IRQ)
HVBJOY = $4212          ; PPU Status Register
RDIO = $4213            ; I/O Port Read Register
RDDIVL = $4214          ; Multiplication or divide registers low
RDDIVH = $4215          ; Multiplication or divide registers high
RDMPYL = $4216          ; Multiplication or divide registers low
RDMPYH = $4217          ; Multiplication or divide registers high
JOY1L = $4218           ; Controller Port (Pad 1 - Low)
JOY1H = $4219           ; Controller Port (Pad 1 - High)
JOY2L = $421A           ; Controller Port (Pad 2 - Low)
JOY2H = $421B           ; Controller Port (Pad 2 - High)
JOY3L = $421C           ; Controller Port (Pad 3 - Low)
JOY3H = $421D           ; Controller Port (Pad 3 - High)
JOY4L = $421E           ; Controller Port (Pad 4 - Low)
JOY4H = $421F           ; Controller Port (Pad 4 - High)

;---------------------------DMA Registers-------------------------------------------


; DMA Registers have the address form $43xy, where x = the desired DMA channel and y = the register
; Replace the x character (in this case, 0) with the desired DMA channel

DMA_CNTRL = $4300               ; DMA Control Register   
DMA_DEST = $4301                ; DMA Destination Address Register
DMA_SRC_ADDRL = $4302           ; DMA Source Address Low
DMA_SRC_ADDRH = $4303           ; DMA Source Address High
DMA_SRC_ADDRB = $4304           ; DMA Source Address Bank
DMA_SIZEL = $4305               ; DMA Size Register Low
DMA_SIZEH = $4306               ; DMA Size Register High

;---------------------------HDMA Registers----------------------------------------

; DMA Registers have the address form $43xy, where x = the desired DMA channel and y = the register
; Replace the x character (in this case, 0) with the desired DMA channel

HDMA_CNTRL = $4300              ; HDMA Control Register
HDMA_DEST = $4301               ; HDMA Destination Register
HDMA_TABLE_ADDRL = $4302        ; HDMA Table Address Register (Low)
HDMA_TABLE_ADDRH = $4303        ; HDMA Table Address Register (High)
HDMA_TABLE_ADDRB = $4304        ; HDMA Tabel Address Register (Bank)
HDMA_IND_ADDRL = $4305          ; HDMA Indirect Address Registers (Low)
HDMA_IND_ADDRH = $4306          ; HDMA Indirect Address Registers (High)
HDMA_IND_ADDRB = $4307          ; HDMA Indirect Address Registers (Bank)
HDMA_MID_FRAMEL = $4308         ; HDMA Mid Frame Table Address Registers (Low)
HDMA_MID_FRAMEH = $4309         ; HDMA Mid Frame Table Address Registers (High)
HDMA_LINE_COUNT = $430A         ; HDMA Line Counter Register

;---------------------------------Old Style Joypad Registers---------------------------------------------

JOYSER0 = $4016     ; Joypad Register 0
JOYSER1 = $4017     ; Joypad Register 1

;---------------------------------Address Bus B Registers (SNES System Control)--------------------------

INIDISP = $2100         ; Screen Display Register
OBSEL = $2101           ; Object Size and Character Size Register
OAMADDL = $2102         ; OAM Address Register Low
OAMADDH = $2103         ; OAM Address Register High
OAMDATA = $2104         ; OAM Data Register
BGMODE = $2105          ; BG Mode and Character Size Register
MOSAIC = $2106          ; Mosaic Register
BG1SC = $2107           ; BG Tilemap Address Registers (BG1)
BG2SC = $2108           ; BG Tilemap Address Registers (BG2)
BG3SC = $2109           ; BG Tilemap Address Registers (BG3)
BG4SC = $210A           ; BG Tilemap Address Registers (BG4)
BG12NBA = $210B         ; BG Character Address Registers (BG1&2)
BG34NBA = $210C         ; BG Character Address Registers (BG3&4)
BG1HOFS = $210D         ; BG Scroll Registers (BG1)
BG1VOFS = $210E         ; BG Scroll Registers (BG1)
BG2HOFS = $210F         ; BG Scroll Registers (BG2)
BG2VOFS = $2110         ; BG Scroll Registers (BG2)
BG3HOFS = $2111         ; BG Scroll Registers (BG3)
BG3VOFS = $2112         ; BG Scroll Registers (BG3)
BG4HOFS = $2113         ; BG Scroll Registers (BG4)
BG4VOFS = $2114         ; BG Scroll Registers (BG4)
VMAIN = $2115           ; Video Port Control Register
VMADDL = $2116          ; VRAM Address Registers (Low)
VMADDH = $2117          ; VRAM Address Registers (High)
VMDATAL = $2118         ; VRAM Data Write Registers (Low)
VMDATAH = $2119         ; VRAM Data Write Registers (High)
M7SEL = $211A           ; Mode 7 Settings Register
M7A = $211B             ; Mode 7 Matrix Registers
M7B = $211C             ; Mode 7 Matrix Registers
M7C = $211D             ; Mode 7 Matrix Registers
M7D = $211E             ; Mode 7 Matrix Registers
M7X = $211F             ; Mode 7 Matrix Registers
M7Y = $2120             ; Mode 7 Matrix Registers
CGADD = $2121           ; CGRAM Address Register
CGDATA = $2122          ; CGRAM Data Write Register
W12SEL = $2123          ; Window Mask Settings Registers
W34SEL = $2124          ; Window Mask Settings Registers
WOBJSEL = $2125         ; Window Mask Settings Registers
WH0 = $2126             ; Window Position Registers (WH0)
WH1 = $2127             ; Window Position Registers (WH1)
WH2 = $2128             ; Window Position Registers (WH2)
WH3 = $2129             ; Window Position Registers (WH3)
WBGLOG = $212A          ; Window Mask Logic registers (BG)
WOBJLOG = $212B         ; Window Mask Logic registers (OBJ)
TM = $212C              ; Screen Destination Registers
TS = $212D              ; Screen Destination Registers
TMW = $212E             ; Window Mask Destination Registers
TSW = $212F             ; Window Mask Destination Registers
CGWSEL = $2130          ; Color Math Registers
CGADSUB = $2131         ; Color Math Registers
COLDATA = $2132         ; Color Math Registers
SETINI = $2133          ; Screen Mode Select Register
MPYL = $2134            ; Multiplication Result Registers
MPYM = $2135            ; Multiplication Result Registers
MPYH = $2136            ; Multiplication Result Registers
SLHV = $2137            ; Software Latch Register
OAMDATAREAD = $2138     ; OAM Data Read Register
VMDATALREAD = $2139     ; VRAM Data Read Register (Low)
VMDATAHREAD = $213A     ; VRAM Data Read Register (High)
CGDATAREAD = $213B      ; CGRAM Data Read Register
OPHCT = $213C           ; Scanline Location Registers (Horizontal)
OPVCT = $213D           ; Scanline Location Registers (Vertical)
STAT77 = $213E          ; PPU Status Register
STAT78 = $213F          ; PPU Status Register
APUIO0 = $2140          ; APU IO Registers
APUIO1 = $2141          ; APU IO Registers
APUIO2 = $2142          ; APU IO Registers
APUIO3 = $2143          ; APU IO Registers
WMDATA = $2180          ; WRAM Data Register
WMADDL = $2181          ; WRAM Address Registers
WMADDM = $2182          ; WRAM Address Registers
WMADDH = $2183          ; WRAM Address Registers

;------------------------------------------------------------------------------------
; End System Registers
;------------------------------------------------------------------------------------