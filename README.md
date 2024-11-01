# Binwalk v3

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
sudo apt update && sudo apt install curl cargo -y
```
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. $HOME/.cargo/env
```

## Step 2

Download binwalk:

```sh
sudo apt install git -y && git clone https://github.com/ReFirmLabs/binwalk
```
## Step 3

Install dependencies:

```sh
sudo ./binwalk/dependencies/ubuntu.sh
```

> [!TIP]
> To only install build dependencies, skip the above script and instead:
>
> ```sudo apt install build-essential libfontconfig1-dev liblzma-dev```

## Step 4

Compile Binwalk:
```sh
cd binwalk
cargo build --release
```
## Step 5

Copy the Binwalk to /bin:
```sh
sudo cp binwalk/target/release/binwalk /bin
```
## Testing

```sh
binwalk DIR-890L_AxFW110b07.bin
```
![example output](images/output.png)

Use `--help`, or check out the [Wiki](https://github.com/ReFirmLabs/binwalk/wiki#usage) for more advanced options!
