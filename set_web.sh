#!/bin/bash

BASE_DIR=$HOME/development

# Create directory structure
mkdir -p $BASE_DIR/website/images
mkdir -p $BASE_DIR/website/test

# Create index.txt
cat <<EOF > $BASE_DIR/website/index.txt
John Doe
Email: johndoe@email.com
Phone: 123-456-7890
Objective: Seeking a web development role.
Education: B.Sc. Computer Science
Skills: HTML, CSS, JavaScript
Backend: PHP, Python
Database: MySQL
Operating Systems: Linux, Windows
Tools: Git, Docker
Experience: 2 years Web Development
Projects: E-commerce Website
Strengths: Problem Solving
Hobbies: Coding & Reading
References: Available upon request
EOF

# Create country.txt
cat <<EOF > $BASE_DIR/website/test/country.txt
USA
Canada
Germany
France
India
Japan
Brazil
Australia
Italy
Mexico
EOF

# Copy files to images
cp $BASE_DIR/website/index.txt $BASE_DIR/website/images/
cp $BASE_DIR/website/test/country.txt $BASE_DIR/website/images/

# Move country.txt to website
mv $BASE_DIR/website/test/country.txt $BASE_DIR/website/

# Rename index.txt to sample.txt
mv $BASE_DIR/website/index.txt $BASE_DIR/website/sample.txt

# Create fruits.txt
cat <<EOF > $BASE_DIR/fruits.txt
Apple - A sweet red fruit rich in fiber.
Banana - A yellow fruit high in potassium.
Orange - A citrus fruit full of Vitamin C.
Mango - A tropical juicy fruit.
Grapes - Small fruits used to make wine.
Pineapple - A tropical fruit with spiky skin.
Strawberry - A red fruit with tiny seeds.
Watermelon - A large fruit with high water content.
Papaya - A tropical fruit good for digestion.
Cherry - A small red fruit often used in desserts.
EOF

# Copy fruits.txt to images
cp $BASE_DIR/fruits.txt $BASE_DIR/website/images/

# Delete test directory
rm -rf $BASE_DIR/website/test

# Open vim to redo tasks (1) and (2)
cd $BASE_DIR
vim index.txt
vim country.txt

echo "Setup completed successfully!"
echo "Check using: tree $BASE_DIR"
# Open vim to redo tasks (1) and (2)
