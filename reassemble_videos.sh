#!/usr/bin/env bash
# Reassembles large video files that were split into .chunkNN.part pieces
# to work around a slow-upload push timeout to GitHub.
set -euo pipefail

reassemble() {
  local out="$1"
  local dir
  dir="$(dirname "$out")"
  local base
  base="$(basename "$out")"
  cat "$dir/$base".chunk*.part > "$out"
  echo "Reassembled $out"
}

reassemble "CUR_AI_Course_Summer_2026/2-ml-course-materials_v2/ml-models-explained.webm"
reassemble "CUR_AI_Course_Summer_2026/3-Deep-Learning/Deep_Learning_Explained.mp4"
