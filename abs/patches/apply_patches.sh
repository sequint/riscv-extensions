#!/bin/bash
set -e

# Root paths
TOOLCHAIN_DIR="$HOME/RISCV/riscv-gnu-toolchain"
SPIKE_DIR="$HOME/RISCV/riscv-isa-sim"

# Path paths
PATCH_DIR_TOOLCHAIN="$HOME/RISCV/riscv-extensions/abs/patches/toolchain"
PATCH_DIR_SPIKE="$HOME/RISCV/riscv-extensions/abs/patches/spike"

echo "[INFO] Applying patches..."

# --- Toolchain patches ---
cd "$TOOLCHAIN_DIR"
for patch in "$PATCH_DIR_TOOLCHAIN"/*.patch; do
  echo "[INFO] Checking toolchain patch: $patch"
  git apply --check "$patch"
done
for patch in "$PATCH_DIR_TOOLCHAIN"/*.patch; do
  echo "[INFO] Applying toolchain patch: $patch"
  git apply "$patch"
done

# --- Spike patches ---
cd "$SPIKE_DIR"
for patch in "$PATCH_DIR_SPIKE"/*.patch; do
  echo "[INFO] Checking spike patch: $patch"
  git apply --check "$patch"
done
for patch in "$PATCH_DIR_SPIKE"/*.patch; do
  echo "[INFO] Applying spike patch: $patch"
  git apply "$patch"
done

echo "[INFO] All patches applied successfully."