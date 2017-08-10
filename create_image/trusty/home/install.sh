git clone https://github.com/Linuxbrew/brew.git ~/linuxbrew

PATH="$HOME/linuxbrew/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

brew install python
pip2 install --upgrade pip setuptools
brew install python3
pip3 install --upgrade pip setuptools wheel

brew install --build-from-source pcre
brew install swig
brew install openblas --with-openmp
brew install numpy
brew install scipy

pip2 install --upgrade nibabel ipython scikit-learn joblib psutil pandas pprocess dask distributed
pip3 install --upgrade nibabel ipython scikit-learn joblib psutil pandas pprocess dask distributed

brew install hdf5
pip2 install --upgrade h5py
pip3 install --upgrade h5py

cd
tar czvf linuxbrew.tar.gz linuxbrew/

# Build PyMVPA from my source
git clone https://github.com/feilong/PyMVPA.git
cd PyMVPA
git checkout ha-equal-weight
make 3rd
python2 setup.py build_ext
python2 setup.py install
python3 setup.py build_ext
python3 setup.py install

cd
tar czvf linuxbrew-w-PyMVPA.tar.gz linuxbrew/
