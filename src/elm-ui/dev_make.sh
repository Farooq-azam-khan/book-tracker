# if tailwindcss.config.js purge is enabled
# set it to false and build 

STR="$(grep "enabled" tailwind.config.js)"
SUB='true'
if [[ "$STR" == *"$SUB"* ]]; then
    echo "Rebuilding without purgin"
    sed -i "s/enabled: true/enabled: false/g" tailwind.config.js
    npm run build:tailwind
fi

# make dev version of elm
elm make src/Main.elm --debug --output=elm.js

# if elm_prod.js file is being used replace it with elm.js
STR=$(grep "path='elm_prod.js'" index.html)
SUB='elm_prod.js'
if [[ "$STR" == *"$SUB"* ]]; then
    echo "Switching to Dev build for elm"
    sed -i "s/path='elm_prod.js'/path='elm.js'/g" index.html
fi

