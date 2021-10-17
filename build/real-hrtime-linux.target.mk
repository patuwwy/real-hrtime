# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := real-hrtime-linux
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=real-hrtime-linux' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DNAPI_EXPERIMENTAL' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++1y

INCS_Debug := \
	-I/home/patu/.cache/node-gyp/14.18.1/include/node \
	-I/home/patu/.cache/node-gyp/14.18.1/src \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/openssl/config \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/openssl/openssl/include \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/uv/include \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/zlib \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/v8/include \
	-I/home/patu/native-addon-starter-kit/node_modules/node-addon-api \
	-I$(srcdir)/src

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=real-hrtime-linux' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DNAPI_EXPERIMENTAL' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++1y

INCS_Release := \
	-I/home/patu/.cache/node-gyp/14.18.1/include/node \
	-I/home/patu/.cache/node-gyp/14.18.1/src \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/openssl/config \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/openssl/openssl/include \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/uv/include \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/zlib \
	-I/home/patu/.cache/node-gyp/14.18.1/deps/v8/include \
	-I/home/patu/native-addon-starter-kit/node_modules/node-addon-api \
	-I$(srcdir)/src

OBJS := \
	$(obj).target/$(TARGET)/src/index.o \
	$(obj).target/$(TARGET)/src/rht-linux.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/real-hrtime-linux.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/real-hrtime-linux.node: LIBS := $(LIBS)
$(obj).target/real-hrtime-linux.node: TOOLSET := $(TOOLSET)
$(obj).target/real-hrtime-linux.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/real-hrtime-linux.node
# Add target alias
.PHONY: real-hrtime-linux
real-hrtime-linux: $(builddir)/real-hrtime-linux.node

# Copy this to the executable output path.
$(builddir)/real-hrtime-linux.node: TOOLSET := $(TOOLSET)
$(builddir)/real-hrtime-linux.node: $(obj).target/real-hrtime-linux.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/real-hrtime-linux.node
# Short alias for building this executable.
.PHONY: real-hrtime-linux.node
real-hrtime-linux.node: $(obj).target/real-hrtime-linux.node $(builddir)/real-hrtime-linux.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/real-hrtime-linux.node
