#!/bin/sh

###
sudo apt update && sudo apt install git curl build-essential libfontconfig1-dev liblzma-dev -y
###
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
###
git clone https://github.com/ReFirmLabs/binwalk
###
cd binwalk
###
sudo ./dependencies/ubuntu.sh
###
cargo build --release
###
sudo mv target/release/binwalk /bin
