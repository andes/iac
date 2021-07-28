#/bin/sh

DEST_FOLDER='./tmp'

mkdir -p $DEST_FOLDER

curl -L 'https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=Af8UgX2igmT1SvPV&suffix=tar.gz' --output GeoLite2-City.tar.gz
curl -L 'https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country&license_key=Af8UgX2igmT1SvPV&suffix=tar.gz' --output GeoLite2-Country.tar.gz

tar -xzvf GeoLite2-City.tar.gz 
tar -xzvf GeoLite2-Country.tar.gz

mv GeoLite2-City*/GeoLite2-City.mmdb $DEST_FOLDER
mv GeoLite2-Country_*/GeoLite2-Country.mmdb $DEST_FOLDER

rm -Rf GeoLite2-City*
rm -Rf GeoLite2-Country*
