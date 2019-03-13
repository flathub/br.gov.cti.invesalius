# br.gov.cti.invesalius

## Prerequisites

```bash
# Add flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Install Gnome SDK and Runtime
flatpak install flathub org.gnome.Sdk//3.30
flatpak install flathub org.gnome.Platform//3.30
```

## Build

```bash
git clone https://github.com/tfmoraes/invesalius-flatpak.git
git submodule update --init
./scripts/build-bundle.sh
```

## Testing

```bash
flatpak install invesalius.flatpak
flatpak run br.gov.cti.invesalius
```
