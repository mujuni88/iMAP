
#!/usr/bin/env bash


##############################################################
## Download seqkit and put it into the code directory
# ```{}
# Windows version
wget --no-check-certificate https://github.com/shenwei356/seqkit/releases/download/v0.9.1/seqkit_windows_amd64.exe.tar.gz
tar -zxvf seqkit_windows_amd64.exe.tar.gz
mv seqkit.exe code/
chmod 755 seqkit.exe
cp code/seqkit.exe ~/bin/
rm seqkit_windows_amd64.exe.tar.gz

# ```

##############################################################
## Download fastqc and put it into the code directory
# ```{}

wget --no-check-certificate https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip
unzip fastqc_v0.11.7.zip
chmod 755 FastQC/fastqc.exe
mv -v FastQC code/
cp code/FastQC/fastqc ~/bin/
rm fastqc_v0.11.7.zip
# ```

##############################################################
# Install bbmap
# Note that this can sometimes be difficult to uncompress…..
# Refer: https://jgi.doe.gov/data-and-tools/bbtools/bb-tools-user-guide/installation-guide/

wget --no-check-certificate https://sourceforge.net/projects/bbmap/files/BBMap_37.90.tar.gz
tar -xvzf BBMap_37.90.tar.gz
mv -v bbmap code/
cp code/bbmap/bbduk.sh ~/bin/
rm BBMap_37.90.tar.gz


##############################################################
## Download latest mothur compartible to your platform and put it into the code directory
#!Important: Latest versions may not work well until it is stable. Should that hapen, just install a previous version.

# #Linux
##wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v1.40.0.1/Mothur.linux_64.zip
# wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64.zip
# unzip Mothur.linux_64.zip
# cp mothur/mothur ~/bin/
# mv mothur code/
# rm Mothur.linux_64.zip
# rm -rf __MACOSX

# # Mac
# wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.mac_64.OSX-10.12.zip
# unzip Mothur.mac_64.OSX-10.12.zip
# cp mothur/mothur ~/bin/
# mv mothur code/
# rm Mothur.mac_64.OSX-10.12.zip
# rm -rf __MACOSX

# # Windows
wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.win_64.zip
unzip Mothur.win_64.zip
mv mothur code/
chmod 755 code/mothur/mothur.exe
chmod 755 code/mothur/uchime.exe
chmod 755 code/mothur/vsearch.exe
cp code/mothur/mothur.exe ~/bin/
cp code/mothur/uchime.exe ~/bin/
cp code/mothur/vsearch.exe ~/bin/
rm Mothur.win_64.zip
rm -rf __MACOSX
