# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file
# system
#
# The PG can be used to detect errors in this file, just create a new project with this addon
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxPoco
	ADDON_DESCRIPTION = Addon to maintain legacy projects still using POCO
	ADDON_AUTHOR = OF Team
	ADDON_TAGS = "poco"
	ADDON_URL =

common:
	# dependencies with other addons, a list of them separated by spaces
	# or use += in several lines
	# ADDON_DEPENDENCIES =

	# include search paths, this will be usually parsed from the file system
	# but if the addon or addon libraries need special search paths they can be
	# specified here separated by spaces or one per line using +=
	ADDON_INCLUDES = libs/poco/include
	ADDON_INCLUDES += src

	# any special flag that should be passed to the compiler when using this
	# addon
	# ADDON_CFLAGS =

	# any special flag that should be passed to the linker when using this
	# addon, also used for system libraries with -lname
	# ADDON_LDFLAGS =

	# linux only, any library that should be included in the project using
	# pkg-config
	# ADDON_PKG_CONFIG_LIBRARIES =

	# osx/iOS only, any framework that should be included in the project
	# ADDON_FRAMEWORKS =

	# source files, these will be usually parsed from the file system looking
	# in the src folders in libs and the root of the addon. if your addon needs
	# to include files in different places or a different set of files per platform
	# they can be specified here
	# ADDON_SOURCES =

	# some addons need resources to be copied to the bin/data folder of the project
	# specify here any files that need to be copied, you can use wildcards like * and ?
	# ADDON_DATA =

	# when parsing the file system looking for libraries exclude this for all or
	# a specific platform
	# ADDON_LIBS_EXCLUDE =


	ADDON_SOURCES_EXCLUDE = libs/poco/include/%

linux64:
	ADDON_LDFLAGS = -lPocoNetSSL
	ADDON_LDFLAGS += -lPocoNet
	ADDON_LDFLAGS += -lPocoCrypto
	ADDON_LDFLAGS += -lPocoUtil
	ADDON_LDFLAGS += -lPocoXML
	ADDON_LDFLAGS += -lPocoFoundation
	ADDON_LDFLAGS += -lcrypto
	ADDON_LDFLAGS += -lssl

linuxarmv6l:
	ADDON_LDFLAGS = -lPocoNetSSL
	ADDON_LDFLAGS += -lPocoNet
	ADDON_LDFLAGS += -lPocoCrypto
	ADDON_LDFLAGS += -lPocoUtil
	ADDON_LDFLAGS += -lPocoXML
	ADDON_LDFLAGS += -lPocoFoundation
	ADDON_LDFLAGS += -lcrypto
	ADDON_LDFLAGS += -lssl

linuxarmv7l:
	ADDON_LDFLAGS = -lPocoNetSSL
	ADDON_LDFLAGS += -lPocoNet
	ADDON_LDFLAGS += -lPocoCrypto
	ADDON_LDFLAGS += -lPocoUtil
	ADDON_LDFLAGS += -lPocoJSON
	ADDON_LDFLAGS += -lPocoXML
	ADDON_LDFLAGS += -lPocoFoundation
	ADDON_LDFLAGS += -lcrypto
	ADDON_LDFLAGS += -lssl

msys2:
	ADDON_LDFLAGS = -lPocoNetSSL
	ADDON_LDFLAGS += -lPocoNet
	ADDON_LDFLAGS += -lPocoCrypto
	ADDON_LDFLAGS += -lPocoUtil
	ADDON_LDFLAGS += -lPocoJSON
	ADDON_LDFLAGS += -lPocoXML
	ADDON_LDFLAGS += -lPocoFoundation
	ADDON_LDFLAGS += -lcrypto
	ADDON_LDFLAGS += -lssl
	ADDON_CFLAGS = -DPOCO_STATIC

vs:
	ADDON_CFLAGS = -DPOCO_STATIC
	ADDON_CFLAGS += -DPOCO_NO_AUTOMATIC_LIBS
	ADDON_LIBS += iphlpapi.lib
