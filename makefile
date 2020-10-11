CXX = g++
LD = g++

STEAMWORKS_SDK = #Path to the steamworks sdk as set in the GMS2 properties

INC = 
CFLAGS =  -std=c++11
LIBDIR = 
LIB = 
LDFLAGS =

SRCDIR = ./Steamworks.gml
OBJDIR_RELEASE_LINUX32 = ./Steamworks.gml/linux32/obj/release
OUTDIR_RELEASE_LINUX32 = ./Steamworks.gml/linux32/bin/release
INC_RELEASE_LINUX32 = $(INC) -I$(STEAMWORKS_SDK)/public/steam
CFLAGS_RELEASE_LINUX32 =  $(CFLAGS) -O3 -m32 -DNDEBUG -D_EG_LINUX_PLATFORM
LIB_RELEASE_LINUX32 = -lsteam_api
LIBDIR_RELEASE_LINUX32 =  $(LIBDIR) -L$(STEAMWORKS_SDK)/redistributable_bin/linux32
LDFLAGS_RELEASE_LINUX32 =  $(LDFLAGS) -shared -m32 -Wl,-rpath,assets/

OBJ_RELEASE_LINUX32 = $(OBJDIR_RELEASE_LINUX32)/gml_glue.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_callbacks.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_controller.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_matchmaking.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_networking.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_unsorted.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_user.o\
					  $(OBJDIR_RELEASE_LINUX32)/steam_workshop.o

OUT_RELEASE_LINUX32 = $(OUTDIR_RELEASE_LINUX32)/Steamworks.gml.so

default: release

release: release_linux32

clean: clean_release_linux32

before_release_linux32: 
	test -d $(OUTDIR_RELEASE_LINUX32) || mkdir -p $(OUTDIR_RELEASE_LINUX32)
	test -d $(OBJDIR_RELEASE_LINUX32) || mkdir -p $(OBJDIR_RELEASE_LINUX32)

after_release_linux32: copy_release_linux32_topackage

release_linux32: before_release_linux32 out_release_linux32 after_release_linux32

out_release_linux32: before_release_linux32 $(OBJ_RELEASE_LINUX32) $(DEP_RELEASE_LINUX32)
	$(LD) $(LIBDIR_RELEASE_LINUX32) -o $(OUT_RELEASE_LINUX32) $(OBJ_RELEASE_LINUX32)  $(LDFLAGS_RELEASE_LINUX32) $(LIB_RELEASE_LINUX32)

$(OBJDIR_RELEASE_LINUX32)/gml_glue.o: $(SRCDIR)/gml_glue.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/gml_glue.cpp -o $(OBJDIR_RELEASE_LINUX32)/gml_glue.o

$(OBJDIR_RELEASE_LINUX32)/steam_callbacks.o: $(SRCDIR)/steam_callbacks.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_callbacks.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_callbacks.o

$(OBJDIR_RELEASE_LINUX32)/steam_controller.o: $(SRCDIR)/steam_controller.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_controller.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_controller.o

$(OBJDIR_RELEASE_LINUX32)/steam_matchmaking.o: $(SRCDIR)/steam_matchmaking.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_matchmaking.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_matchmaking.o

$(OBJDIR_RELEASE_LINUX32)/steam_networking.o: $(SRCDIR)/steam_networking.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_networking.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_networking.o

$(OBJDIR_RELEASE_LINUX32)/steam_unsorted.o: $(SRCDIR)/steam_unsorted.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_unsorted.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_unsorted.o

$(OBJDIR_RELEASE_LINUX32)/steam_user.o: $(SRCDIR)/steam_user.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_user.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_user.o

$(OBJDIR_RELEASE_LINUX32)/steam_workshop.o: $(SRCDIR)/steam_workshop.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX32) $(INC_RELEASE_LINUX32) -c $(SRCDIR)/steam_workshop.cpp -o $(OBJDIR_RELEASE_LINUX32)/steam_workshop.o

copy_release_linux32_topackage:
	test -d ./Steamworks.gmx/extensions/Steamworks.gml || mkdir -p ./Steamworks.gmx/extensions/Steamworks.gml
	test -d ./Steamworks_yy/extensions/Steamworks_gml || mkdir -p ./Steamworks_yy/extensions/Steamworks_gml
	cp $(OUT_RELEASE_LINUX32) ./Steamworks.gmx/extensions/Steamworks.gml/
	cp $(OUT_RELEASE_LINUX32) ./Steamworks_yy/extensions/Steamworks_gml/

clean_release_linux32: 
	rm -f $(OBJ_RELEASE_LINUX32) $(OUT_RELEASE_LINUX32)
	rm -rf $(OUT_RELEASE_LINUX32)
	rm -rf $(OBJDIR_RELEASE_LINUX32)
