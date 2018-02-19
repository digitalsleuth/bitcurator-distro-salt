[![Logo](https://wiki.bitcurator.net/downloads/BitCurator-400px.png)

# bitcurator-distro-salt support packages

This directory includes some support packages for BitCurator that may be available elsewhere, but are retained here due to issues involving continued online access or compatibility between versions.

## py3fpdf

The py3fpdf code is no longer actively maintained by its creator. The source was originally included here as a support library for PDF output produced by the BitCurator reporting tools, but is no longer maintained or used. Currently, the python3-compatible release of pyfpdf is used. It can be downloaded and installed as follows (this is performed automatically during the saltstack install):

```shell
git clone https://github.com/reingart/pyfpdf
cd pyfpdf
python3 setup.py build
sudo python3 setup.py install
```

## Libewf

Libewf is in active development. Many projects (TSK, bulk_extractor, among others) depend on earlier versions. Acquiring earlier source trees is becoming more diffiucult, so libewf-20140608 has been included here for convenience. Using a newer version of libewf **may break TSK or the BitCurator reporting tools**!
