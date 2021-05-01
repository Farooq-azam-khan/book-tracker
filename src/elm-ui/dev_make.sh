# if tailwindcss.config.js purge is enabled
# set it to false and build 

STR="$(grep "enabled" tailwind.config.js)"
SUB='true'
if [[ "$STR" == *"$SUB"* ]]; then
    echo "Rebuilding without purgin"
    sed -i "s/enabled: true/enabled: false/g" tailwind.config.js
    npm run build:tailwind
fi

elm make src/Main.elm --debug --output=elm.js