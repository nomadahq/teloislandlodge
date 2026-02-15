#!/bin/bash
# TIL Image Download Script
# Run from your teloislandlodge repo root: cd ~/teloislandlodge && bash download-images.sh

mkdir -p assets/philanthropy

echo "=== LODGE PAGE IMAGES ==="
curl -o assets/lodge-hero.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Tilo_Lodge_Beachfront.jpg"
echo "✓ lodge-hero.jpg"

curl -o assets/lodge-relaxation.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo_Lodge_Relaxation.jpg"
echo "✓ lodge-relaxation.jpg"

curl -o assets/lodge-night.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo_Lodge_Night.jpg"
echo "✓ lodge-night.jpg"

curl -o assets/lodge-bedroom.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo_Lodge_Bedroom_Oceanview-1.jpg"
echo "✓ lodge-bedroom.jpg"

echo ""
echo "=== HISTORY PAGE ==="
curl -o assets/telo-sunset.jpg "https://pegasuslodges.com/wp-content/uploads/2019/07/Telo-sunsets-PNT17.jpg"
echo "✓ telo-sunset.jpg"

echo ""
echo "=== PHILANTHROPY / COMMUNITY ==="
curl -o assets/philanthropy/village-overview.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/village3.jpeg"
curl -o assets/philanthropy/church.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-church.jpeg"
curl -o assets/philanthropy/convent.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-churchconvent.jpeg"
curl -o assets/philanthropy/classroom-1.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-classroom2.jpeg"
curl -o assets/philanthropy/classroom-2.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-classroom.jpeg"
curl -o assets/philanthropy/classroom-roof.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-classroomroof.jpeg"
curl -o assets/philanthropy/mama-bella.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-coconutoillady.jpeg"
curl -o assets/philanthropy/local-enterprise.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-independentbuisness.jpeg"
curl -o assets/philanthropy/mask-maker.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-masklady.jpeg"
curl -o assets/philanthropy/kids-crafts.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-masklady2.jpeg"
curl -o assets/philanthropy/mask-shop.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-masklady3.jpeg"
curl -o assets/philanthropy/kids-teacher.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-school3.jpeg"
curl -o assets/philanthropy/kids-happy.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-school2.jpeg"
curl -o assets/philanthropy/school.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-school.jpeg"
curl -o assets/philanthropy/kids-playing.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-schoolkids.jpeg"
curl -o assets/philanthropy/village-houses.jpeg "https://pegasuslodges.com/wp-content/uploads/2019/08/Telo-Island-Lodge-Philanthropy-Sibaranun-Village-village-1.jpeg"
echo "✓ 16 philanthropy images"

echo ""
echo "=== DOWNLOADED ==="
echo "Lodge: $(ls assets/lodge-*.jpg 2>/dev/null | wc -l) images"
echo "History: $(ls assets/telo-sunset.jpg 2>/dev/null | wc -l) images"
echo "Philanthropy: $(ls assets/philanthropy/*.jpeg 2>/dev/null | wc -l) images"
echo "SUP: $(ls assets/sup.jpg 2>/dev/null | wc -l) image (already added)"

echo ""
echo "=============================================="
echo "MANUAL STEP REQUIRED - Beaver Builder images"
echo "=============================================="
echo ""
echo "These pages use lazy-loaded images that can't be curled."
echo "Open EACH page in Chrome → F12 → Console → paste:"
echo ""
echo 'document.querySelectorAll("img").forEach(i => { if(i.src && i.src.includes("wp-content")) console.log(i.alt, "→", i.src) });'
echo 'document.querySelectorAll("[style]").forEach(el => { const s = el.style.backgroundImage; if(s && s.includes("wp-content")) console.log("BG →", s) });'
echo ""
echo "PAGE 1: https://pegasuslodges.com/destinations/telo-island-lodge/the-lodge/"
echo "  Need: dining, massage, fishing, snorkelling, village bike tour photos"
echo "  Save as: assets/activity-dining.jpg, activity-massage.jpg, etc."
echo ""
echo "PAGE 2: https://pegasuslodges.com/destinations/telo-island-lodge/surfboard-rentals/"
echo "  Need: El Patron, Crowd Killer, Puddle Jumper HP, RNF Redux photos"
echo "  Save as: assets/board-elpatron.jpg, board-crowdkiller.jpg, etc."
echo ""
echo "For each URL found, download with:"
echo '  curl -o assets/FILENAME.jpg "PASTE_URL_HERE"'
echo ""
echo "Then: git add assets/ && git commit -m 'Add all imagery' && git push origin main"
