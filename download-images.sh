#!/bin/bash
# Download TIL images from WordPress into /assets folder
# Run from your repo root: bash download-images.sh

mkdir -p assets

echo "Downloading TIL images..."

curl -L -o assets/hero.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo_Front_Aerial.jpg"
curl -L -o assets/lodge-exterior.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Tilo_Lodge_Beachfront.jpg"
curl -L -o assets/room-bungalow.jpg "https://pegasuslodges.com/wp-content/uploads/2023/06/9-5.jpg"
curl -L -o assets/room-lodge.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo_Lodge_Bedroom_Oceanview-1-1024x683.jpg"
curl -L -o assets/room-triple.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/lodgeoverview.jpg"
curl -L -o assets/maxs-right.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/0right.jpg"
curl -L -o assets/surf-gts.jpg "https://pegasuslodges.com/wp-content/uploads/2018/04/gtsagjs4385.jpg"
curl -L -o assets/surf-bubble.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/0bubble.jpg"
curl -L -o assets/surf-er.jpg "https://pegasuslodges.com/wp-content/uploads/2018/04/er.jpg"
curl -L -o assets/surf-kindies.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/0kindies.jpg"
curl -L -o assets/surf-churches.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/0left.jpg"
curl -L -o assets/surf-pinnacles.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/0pinnies.jpg"
curl -L -o assets/surf-leba.jpg "https://pegasuslodges.com/wp-content/uploads/2018/03/lebaohmigod.jpg"
curl -L -o assets/surf-schoolyards.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/schoolies.jpg"
curl -L -o assets/sup-snorkel.jpg "https://pegasuslodges.com/wp-content/uploads/2018/05/SUP-TIL-1024x683.jpg"
curl -L -o assets/boat.jpg "https://pegasuslodges.com/wp-content/uploads/2018/04/agjs4337.jpg"

echo ""
echo "Done. Downloaded $(ls -1 assets/*.jpg 2>/dev/null | wc -l) images to ./assets/"
echo ""
echo "Still needed (not on WordPress - check Google Drive):"
echo "  assets/food-kitchen.jpg"
echo "  assets/fishing-village.jpg"
echo "  assets/dingo-guide.jpg"
echo "  assets/sunset-lifestyle.jpg"
echo "  assets/aerial-travel.jpg"
