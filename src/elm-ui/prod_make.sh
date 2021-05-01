# enable ts.config.js to purge

echo "Creating purgedcss file"
sed -i "s/enabled: false/enabled: true/g" tailwind.config.js
npm run build:tailwind

# make optimized elm
echo "Making optimized elm for production"
elm make src/Main.elm --output=elm_prod.js --optimize

# undo purge of tailwind css
# echo "Updating tailwind css to be un-purged"
# sed -i "s/enabled: true/enabled: false/g" tailwind.config.js
# # build after undoing purge
# npm run build:tailwind