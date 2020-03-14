RUST_TOOLS := imgbank n64gfx
RUST_DIR := rust
RUST_MANIFEST := --manifest-path $(RUST_DIR)/Cargo.toml
RUST_FLAGS := --release
RUST_OUTPUT := $(RUST_DIR)/target/release/


all: $(RUST_TOOLS)

clean:
	rm -rf $(RUST_TOOLS)

superclean: clean
	cargo clean $(RUST_MANIFEST)

# generate gitignore file?

# call(toolname); defer to cargo for building, then just copy the executable over
define BUILD_RUST_TOOL
$(1): $(RUST_DIR)
	cargo build $(RUST_FLAGS) $(RUST_MANIFEST) -p$(1) && cp $(join $(RUST_OUTPUT), $(1)) ./
endef

$(foreach t, $(RUST_TOOLS), $(eval $(call BUILD_RUST_TOOL, $(strip $(t)))))

.PHONY: all clean superclean $(RUST_TOOLS) 
