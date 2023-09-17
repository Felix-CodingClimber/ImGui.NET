#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Missing first argument. Please provide the tag to download."
    exit 1
fi

TAG=$1

SCRIPT_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Script is located in: $SCRIPT_ROOT"
echo "Using Tag: $TAG"

echo -n "Downloading windows x64 cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/win-x64/cimgui.dll" "https://github.com/mellinoe/imgui.net-nativebuild/releases/download/$TAG/cimgui.win-x64.dll"
echo ""

echo -n "Downloading definitions json file: "
curl -sfLo "$SCRIPT_ROOT/src/CodeGenerator/definitions/cimgui/definitions.json" "https://github.com/mellinoe/imgui.net-nativebuild/releases/download/$TAG/definitions.json"
echo ""

echo -n "Downloading structs and enums json file: "
curl -sfLo "$SCRIPT_ROOT/src/CodeGenerator/definitions/cimgui/structs_and_enums.json" "https://github.com/mellinoe/imgui.net-nativebuild/releases/download/$TAG/structs_and_enums.json"
echo ""