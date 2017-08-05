git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew

export LANG="en_US.utf8"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

brew install python
pip2 install --upgrade pip setuptools

brew install python3
pip3 install --upgrade pip setuptools wheel

brew install numpy --with-python3
brew install scipy --with-python3

pip2 install --upgrade nibabel ipython scikit-learn joblib psutil pandas
pip3 install --upgrade nibabel ipython scikit-learn joblib psutil pandas

brew install hdf5 --with-fortran
pip2 install --upgrade h5py
pip3 install --upgrade h5py

brew install matplotlib --with-python3

# # TODO
# # shogun (use linuxbrew?)

# # brew install wxpython
# brew install vtk --with-python3

# # matplotlib and vtk has more build options
# # config Perl before installing vtk
# # cpan -i XML::Parser
# brew install perl
# brew postinstall perl

brew list --versions | tee brewed_packages.txt
pip2 freeze | tee python2_packages.txt
pip3 freeze | tee python3_packages.txt

brew cleanup
