# br.gov.cti.invesalius

## Prerequisites

### python

```bash
uv run --script  flatpak-pip-generator.py --pyproject-file pyproject.toml --runtime org.gnome.Sdk//51 --prefer-wheels=cuda-bindings,lib3mf,nvidia-cublas,nvidia-cuda-cupti,nvidia-cuda-nvrtc,nvidia-cuda-runtime,nvidia-cudnn-cu13,nvidia-cufft,nvidia-cufile,nvidia-curand,nvidia-cusolver,nvidia-cusparse,nvidia-cusparselt-cu13,nvidia-nccl-cu13,nvidia-nvjitlink,nvidia-nvshmem-cu13,nvidia-nvtx,onnxruntime-gpu,torch,triton,vtk,h5py,matplotlib,contourpy,kiwisolver,onnx,numpy,ml-dtypes,pandas,pyacvd,python-gdcm --wheel-arches x86_64
```

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
