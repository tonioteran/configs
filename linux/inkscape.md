# Inkscape w/LaTeX installation

I opted to go with the [TexText](https://textext.github.io/textext/) extension,
as it neatly allows you to reëdit equations and customize everything.

# Instructions

```bash
sudo apt-get install inkscape
sudo apt-get install python-gtk2 python-gtksourceview2
sudo apt-get install pdf2svg
sudo apt-get install libcanberra-gtk-module
cd ~/Downloads
wget https://github.com/textext/textext/releases/download/0.9.0/TexText-Linux-0.9.0.tar.gz
tar zxvf TexText-Linux-0.9.0.tar.gz
cd textext-0.9.0/
python setup.py
cd ~/Downloads
rm TexText-Linux-0.9.0.tar.gz
rm -rf textext-0.9.0
```
