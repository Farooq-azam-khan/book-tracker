# enable ts.config.js to purge
# TODO: could potentially have different files for tailwind as well (much like elm_prod.js and elm.js)
# that way, i will only need to change the index.html file and build for production 

echo "Creating purgedcss file"
sed -i "s/enabled: false/enabled: true/g" tailwind.config.js
npm run build:tailwind

# make optimized elm
echo "Making optimized elm for production"
elm make src/Main.elm --output=elm_prod.js --optimize

# replace elm.js in index.html with elm_prod.js
sed -i  "s/path='elm.js'/path='elm_prod.js'/g" index.html
