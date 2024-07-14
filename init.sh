#!/bin/zsh

#############################
#                           #
#   Create symbolic link    #
#                           #
#############################

source_files=(
    "${PWD}/.zshrc"     # 0: .zshrc
)
linked_files=(
    "${HOME}/.zshrc"    # 0: .zshrc
)

# Check source file, linked file length
if [ "${#source_files[@]}" -ne "${#linked_files[@]}" ]; then
    echo "[-] Error: Length of source file and linked file is not matched."
    exit 1
fi

# Create symbolic link
for idx in "${!source_files[@]}"; do
    ln -sf "${source_files[$idx]}" "${linked_files[$idx]}"
    if [ $? -ne 0 ]; then
        echo "[-] Error: Failed to create symbolic link on ${linked_files[$idx]}"
        exit 1
    else
        echo "[+] Create symbolic link successfully. ${linked_files[$idx]}"
    fi
done

