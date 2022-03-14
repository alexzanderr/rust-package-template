
# make
rq:
	cargo run --quiet

# make br
br:
	cargo build --release

# make b
b:
	cargo build

# make r
r:
	cargo run

# make rr
rr:
	cargo run --release


# make t
t:
	cargo test -j 8 --all -- --show-output

# make test
test:
	cargo test -j 8 --all -- --show-output


# make p
p:
	# for publishing to crates.io
	cargo build --release
 	# cargo run --release
	cargo doc --document-private-items
	cargo test -j 8 -- --show-output
	cargo clippy -- -D warnings
	cargo fmt --all -- --check
	cargo publish


# make d
d:
	cargo doc --open --document-private-items

lint:
	cargo clippy -- -D warnings

fmt:
	# just check the formatting
	cargo fmt --all -- --check

format:
	# format in place
	cargo fmt --all


cti:
# 	cargo build
# dont need build before test, because test will automatically build
	cargo test -j 8 -- --show-output
	cargo doc --document-private-items
	cargo clippy -- -D warnings
	cargo fmt
# 	cargo fmt --all -- --check

init:
	# set git hooks to be in the folder .githooks
	git config core.hooksPath .githooks


pgo:
	# STEP 0: Make sure there is no left-over profiling data from previous runs
	rm -rf /tmp/pgo-data

	# STEP 1: Build the instrumented binaries
	RUSTFLAGS="-Cprofile-generate=/tmp/pgo-data" \
	    cargo build --release --target=x86_64-unknown-linux-gnu

	# STEP 2: Run the instrumented binaries with some typical data
	./target/x86_64-unknown-linux-gnu/release/myprogram mydata1.csv
	./target/x86_64-unknown-linux-gnu/release/myprogram mydata2.csv
	./target/x86_64-unknown-linux-gnu/release/myprogram mydata3.csv

	# STEP 3: Merge the `.profraw` files into a `.profdata` file
	llvm-profdata merge -o /tmp/pgo-data/merged.profdata /tmp/pgo-data

	# STEP 4: Use the `.profdata` file for guiding optimizations
	RUSTFLAGS="-Cprofile-use=/tmp/pgo-data/merged.profdata" \
	    cargo build --release --target=x86_64-unknown-linux-gnu