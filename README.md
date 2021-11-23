# What is AnonSurf?
AnonSurf is a tool created by Parrot Security that allows you to be more private and anonymous by forwarding all of your system's internet traffic through the Tor network forcefully by utilizing iptables.

# Why did you decide to create this fork?
To that, I'd respond with the following: Making AnonSurf build and run on literally any other system than ParrotOS is simply too much of a hassle due to multiple reasons.

Those reasons being:
  1) There is nearly no documentation on how to build and run on distros other than Parrot,
  2) gintro literally fails to install most of the time and even if it installs, doesn't even work properly for the most of the time.
  3) The command-line of AnonSurf is literally as easy to use as it's GUI.


# How do I build it?
1) You need to install Nim (if you have a Debian-based distro, you should be able to achieve this by running "apt-get install nim").
2) Clone this repository with git (git clone https://github.com/batu-0/Anonsurf-cli.git anonsurf
3) cd anonsurf/
4) make build (you can still run "make build-parrot" if you're on ParrotOS)
5) *optional:* make install

Note: You have to have the "tor" package installed, as this tool depends on it.
