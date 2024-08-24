#Creador del Makefile:silverhacker

EE_OBJS = main.o
EE_LIBS = -L$(GSKIT)/lib -lgskit -ldmakit
EE_CFLAGS = -Wall -I$(GSKIT)/include
EE_BIN = Example-gskit.elf

all: $(EE_BIN)
	$(EE_STRIP) --strip-all $(EE_BIN)
	
clean:
	rm -rf $(EE_BIN) $(EE_OBJS)	
	
include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal		
