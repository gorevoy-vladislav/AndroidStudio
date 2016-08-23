#Android Studio debianizer

###Copyright by Vladislav Gorevoy

<https://github.com/gorevoy-vladislav>

##Install all necessary dependencies

```sh
sudo apt-get install devscripts debhelper
```

##Building

1)   Download the `.zip` file from https://developer.android.com/, unzip it,  make `AndroidStudio-$VERSION.tar.gz` file and place it in
the android-studio directory of this repo;

2)   Run terminal in the root of this repo;

3)   Create a new debian/changelog file using the provided update.sh script;

4)   Build the package.

```sh
cd ./android-studio
./update.sh
debuild -us -uc -b
```

##Installing

Install the package with the `dpkg` command from root of this repo:

```sh
cd ../
sudo dpkg -i ./*.deb...
```
