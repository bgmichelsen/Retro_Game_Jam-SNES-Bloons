#################################################
#
#  This is the Makefile for the project
#
#  It will build the files in the following order:
#  - Generate object files from each assembly 
#  - Link the object files into an executable
#################################################

#################################################
# Variables for use in building
#################################################

## Assembly files
as_main = ./Assembly/main.s
as_enemy = ./Assembly/enemy.s
as_monkeydart = ./Assembly/monkeydart.s
as_player = ./Assembly/player.s

as_files = $(as_main) $(as_enemy) $(as_monkeydart) $(as_player)

## Object files
obj_main = ./Build/Obj/main.o
obj_enemy = ./Build/Obj/enemy.o
obj_monkeydart = ./Build/Obj/monkeydart.o
obj_player = ./Build/Obj/player.o

obj_files = $(obj_main) $(obj_enemy) $(obj_monkeydart) $(obj_player)

## Executable path
exec = ./Build/Executables/bloons.smc

## Linker script
linker_scr = ./Linker/memory_map.cfg

## Toolchain
cpu_arg = --cpu 65816
linker_arg = -C $(linker_scr)

## OS the assembler is running in
## Set to WIN for Windows and UNIX for an unix-like OS
os = WIN
win_del_filepaths = Build\\Executables\\bloons.smc Build\\Obj\\main.o Build\\Obj\enemy.o Build\\Obj\\monkeydart.o Build\\Obj\\player.o

###############################################
# Rules for building
###############################################

## Executable
$(exec): $(obj_files)
		ld65 $(linker_arg) $(obj_files) -o $(exec)

## Object files
$(obj_main): $(as_main)
		ca65 $(cpu_arg) -o $(obj_main) $(as_main)
$(obj_enemy): $(as_enemy)
		ca65 $(cpu_arg) -o $(obj_enemy) $(as_enemy)
$(obj_monkeydart): $(as_monkeydart)
		ca65 $(cpu_arg) -o $(obj_monkeydart) $(as_monkeydart)
$(obj_player): $(as_player)
		ca65 $(cpu_arg) -o $(obj_player) $(as_player)

## Clean
clean:
# Delete based on Windows OS
ifeq ($(os),WIN) 
		del $(win_del_filepaths)
else 
		rm $(exec) $(obj_files)
endif 