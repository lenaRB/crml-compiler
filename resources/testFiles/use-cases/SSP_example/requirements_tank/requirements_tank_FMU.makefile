# FIXME: before you push into master...
RUNTIMEDIR=/Users/olero90/OpenModelica/build/include/omc/c/
#COPY_RUNTIMEFILES=$(FMI_ME_OBJS:%= && (OMCFILE=% && cp $(RUNTIMEDIR)/$$OMCFILE.c $$OMCFILE.c))

fmu:
	rm -f requirements_tank.fmutmp/sources/requirements_tank_init.xml
	cp -a "/Users/olero90/OpenModelica/build/share/omc/runtime/c/fmi/buildproject/"* requirements_tank.fmutmp/sources
	cp -a requirements_tank_FMU.libs requirements_tank.fmutmp/sources/

