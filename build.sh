#!/bin/bash -x

# Crash on first error!
set -e

# Update the submodules to the latest HEAD
for i in _ext/openlmi-providers _ext/openlmi-networking _ext/openlmi-storage; do
    pushd $i
    git pull
    popd
done

# Prepare directories
rm -rf _build/providers _build/networking _build/mof
mkdir _build/providers _build/networking _build/mof

#######################################################
# openlmi-providers
#######################################################
# Generate rst and pictures
pushd _build/providers
cmake ../../_ext/openlmi-providers
make doc-prep
popd

# Copy docs to the right place
# (copy all directories except CMakeFiles)
find _build/providers/doc/admin -maxdepth 1 -type d ! -name "CMakeFiles" ! -name "admin" -exec cp -rv {} doc/openlmi-providers \;

# Copy MOF files to the right place
cp -v _ext/openlmi-providers/mof/*.mof _build/mof/
cp -v _build/providers/mof/60_LMI_Software.mof _build/mof/
# Remove provider-specific classes
rm -v _build/mof/60_LMI_Service-legacy.mof
# Remove useless classes and instances
rm -v _build/mof/*MethodParameters* _build/mof/*IndicationFilters*

# install python sources
export PYTHONPATH=$PWD/_build/python:$PYTHONPATH
pushd _ext/openlmi-providers/src/python
python setup.py install --root=../../../../_build/python
popd

#######################################################
# openlmi-networking
#######################################################

# Generate pictures
#pushd _build/networking
#cmake ../../_ext/openlmi-networking
#make doc-pic
#popd

# Copy docs to the right place
cp -v _ext/openlmi-networking/doc/admin/*.rst doc/openlmi-networking
mkdir -p doc/openlmi-networking/pic
cp -v _ext/openlmi-networking/doc/admin/pic/*.svg doc/openlmi-networking/pic


# Copy MOF files to the right place
cp -v _ext/openlmi-networking/mof/60_LMI_Networking.mof _build/mof/


#######################################################
# openlmi-storage
#######################################################
# Generate pictures
pushd _ext/openlmi-storage/doc/admin
make generated figures
popd

# Copy docs to the right place
cp -rv _ext/openlmi-storage/doc/admin/{*.rst,generated,pic} doc/openlmi-storage

# Copy MOF files to the right place, excluding the master 60_* one
cp -v _ext/openlmi-storage/mof/LMI_Storage*.mof _build/mof/
# Remove useless classes and instances
rm -v _build/mof/*MethodParameters*


#######################################################
# openlmi-tools
#######################################################
pushd _ext/openlmi-tools/doc/src
make deps-rtd index-rtd
popd

# Copy docs to the right place
rsync -av _ext/openlmi-tools/doc/src/* doc/openlmi-tools/ --exclude=Makefile --exclude="*.py" --exclude="*.skel" --exclude="*.sh"

# install python sources
export PYTHONPATH=$PWD/_build/python:$PWD/_build/python/lmi:$PYTHONPATH
pushd _ext/openlmi-tools/cli
make
python setup.py install --root=../../../_build/python
popd
cp -vr _build/python/usr/lib/py*/site-packages/lmi doc/python
#touch doc/python/lmi/__init__.py doc/python/lmi/scripts/__init__.py.


#######################################################
# Generate it
#######################################################

# generate class reference
pushd doc/mof
make
popd

pushd doc
rm -rf _build
make html
popd