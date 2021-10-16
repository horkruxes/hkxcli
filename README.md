# hkxcli

A TUI for horkruxes, written in C.

## Installation

### From source 

To install hkxcli from source, you will need to have git, CMake and a C compiler installed on your system.

Once you made sure of this, enter the following lines in your terminal to build hkxcli in a `build` directory at the root of this repository:

```sh
git clone https://github.com/horkruxes/hkxcli.git
mkdir hkxcli/build && cd hkxcli/build
cmake ../src
cmake --build .
```

You can then run `hkxcli` from the `build` directory with:

```sh
./hkxcli
```

If you want to be able to use the `hkxcli` command from anywhere, add the `build` directory to your `PATH`.

### Docker

To run `hkxcli` using Docker, all you need is a valid Docker installation on your system.

At the time of this writing, no official DockerHub repository is available for the hkxcli Docker image, so you will need to build it from source:

```sh
git clone https://github.com/horkruxes/hkxcli.git
docker build -t hkxcli ./hkxcli
```

Then run a container using the image you just built:

```sh
docker run --name <my_hkxcli_container_name> -it hkxcli
```

You will then find yourself in a shell environment in which the `hkxcli` command and all of its options will be available.

Once you `exit` the shell environment, you can enter it again by using:

```sh
docker start -ai <my_hkxcli_container_name>
```

## Usage

As the `hkxcli` development process is still in its early stages, no usage guide has been redacted yet.

