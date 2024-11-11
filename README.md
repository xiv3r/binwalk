# Binwalk v3
> [!Note]
> ## Auto Install
```sh
wget -qO- https://raw.githubusercontent.com/xiv3r/binwalk/refs/heads/master/installer.sh | sh
```

This is an updated version of the Binwalk firmware analysis tool, re-written in Rust for speed and accuracy.

![binwalk v3](images/binwalk_animated.svg)

## What does it do?

Binwalk can identify, and optionally extract, files and data that have been embedded inside of other files.

While its primary focus is firmware analysis, it supports a [wide variety](https://github.com/ReFirmLabs/binwalk/wiki/Supported-Signatures) of file and data types.

Through [entropy analysis](https://github.com/ReFirmLabs/binwalk/wiki/Generating-Entropy-Graphs), it can even help to identify unknown compression or encryption!

Binwalk can be customized and [integrated](https://github.com/ReFirmLabs/binwalk/wiki/Using-the-Rust-Library) into your own Rust projects.

## How do I get it?

> Tested
 - Kali
 - Debian
 - Ubuntu
 - Arm64 Debian Bullseye

## Step 1
Install the Rust compiler:
```sh
sudo apt update && sudo apt install git curl build-essential libfontconfig1-dev liblzma-dev -y
```
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
```
```sh
. $HOME/.cargo/env
```
## Step 2
Download binwalk:
```sh
git clone https://github.com/ReFirmLabs/binwalk
```
## Step 3
Install dependencies:
```sh
sudo ./binwalk/dependencies/ubuntu.sh
```
## Step 4
Compile Binwalk:
```sh
cd binwalk
```
```sh
cargo build --release
```
## Step 5
move binwalk to /bin:
```sh
sudo mv target/release/binwalk /bin
```
## Testing
```sh
binwalk DIR-890L_AxFW110b07.bin
```
![example output](images/output.png)

Use `--help`, or check out the [Wiki](https://github.com/ReFirmLabs/binwalk/wiki#usage) for more advanced options!
