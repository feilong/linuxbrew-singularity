# Clone repo from github and set it up
mkdir $HOME/git
git clone git@github.com:feilong/PyMVPA.git $HOME/git/PyMVPA
cd $HOME/git/PyMVPA
git remote add upstream git@github.com:PyMVPA/PyMVPA.git

# Install PyMVPA from source
cd $HOME/git/PyMVPA
make 3rd
python2 setup.py build_ext
python2 setup.py install
