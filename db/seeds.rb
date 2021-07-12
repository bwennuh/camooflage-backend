# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Board.destroy_all
Recipe.destroy_all
Brand.destroy_all
Category.destroy_all
NonDairyOption.destroy_all
BoardPin.destroy_all
RecipePin.destroy_all


puts "Seeding data 🌱 🌱 🌱"

puts "Creating users 🐮 🐮 🐮"

10.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Lorem.word + "@gmail.com", 
    phone_number: Faker::PhoneNumber.cell_phone, 
    address: Faker::Address.full_address, 
    username: Faker::Lorem.word, 
    password: Faker::Lorem.characters(number: 10), 
    bio: Faker::Lorem.sentence, 
    avatar: Faker::Avatar.image
    )
end

puts "Creating boards 💟 💟 💟"
20.times do
  Board.create(
    name: Faker::Lorem.word, 
    description: Faker::Lorem.sentence, 
    user_id: User.all.ids.sample
    )
end

puts "Creating recipes 📝 📝 📝"
20.times do
  Recipe.create(
    name: Faker::Lorem.word, 
    description: Faker::Lorem.sentence, 
    ingredients: Faker::Food.ingredient, 
    instructions: Faker::Food.description, 
    user_id: User.all.ids.sample
    )
end

puts "Creating brands 🛒 🛒 🛒"
50.times do
  Brand.create(
    name: Faker::Company.name
  )
end


Brand.create(name: "Oatly")
Brand.create(name: "Violife")
Brand.create(name: "Silk")
Brand.create(name: "So Delicious")
Brand.create(name: "Forager")
# 5
Brand.create(name: "Daiya")
Brand.create(name: "Parmela")
Brand.create(name: "Nada Moo")
Brand.create(name: "Ripple")
Brand.create(name: "Sproud")
# 10
Brand.create(name: "WestSoy")
Brand.create(name: "Califia Farms")
Brand.create(name: "Elmhurst")
Brand.create(name: "Mooala")
Brand.create(name: "Milkadamia")
# 15
Brand.create(name: "Follow Your Heart")
Brand.create(name: "Chao")
Brand.create(name: "Miyokos")
Brand.create(name: "Treeline")
# 19

puts "Creating categories 🥛 🧀 🥯"
10.times do
  Category.create(
    name: Faker::Food.ingredient,
    product_type: "non-dairy product"
  )
end

Category.create(name: "milk", product_type: "refrigerated carton")
Category.create(name: "milk", product_type: "shelf-stable carton")
Category.create(name: "milk", product_type: "shelf-stable individual box")
Category.create(name: "milk", product_type: "creamer")
# 4

Category.create(name: "cheese", product_type: "slices")
Category.create(name: "cheese", product_type: "shreds")
Category.create(name: "cheese", product_type: "block")
Category.create(name: "cheese", product_type: "soft")
Category.create(name: "cheese", product_type: "hard")
Category.create(name: "cheese", product_type: "queso")
# 10

Category.create(name: "ice cream", product_type: "pint")
Category.create(name: "ice cream", product_type: "carton")
Category.create(name: "ice cream", product_type: "soft-serve")
# 13


puts "Creating non-dairy options 🍦 🍦 🍦"
50.times do
  NonDairyOption.create(
    name: Faker::Food.ingredient,
    description: Faker::Lorem.sentence, 
    allergens: Faker::Food.ingredient, 
    image: Faker::Avatar.image, 
    category_id: Category.all.ids.sample, 
    brand_id: Brand.all.ids.sample
  )
end

# Oatly
NonDairyOption.create(
  name: "Full Fat Oatmilk", 
  description: "So only the best is good enough, huh? Then drinking Full Fat oatmilk is for you. It’s the obvious choice when you want to swap whole cow’s milk for something good for the planet. If you use this super delicious oatmilk when you bake, your muffins, cakes and breads will come out so moist that it may not even bother you when people use the word “moist.” Pour it in your coffee or tea — it so thoughtfully stays smooth and delicious without acting weird or separating. This product actually might qualify as the best, but since it’s made of oats and oats are really humble, it will always be cool.", 
  allergens: "oats",
  recommendations: "A perfect option for when you need a thicker milk for cooking or baking, and especially so if you want a nut-free and gluten-free option! Works well in smoothies, but works even better in curries!", 
  image: "https://cdn.shopify.com/s/files/1/2113/2635/products/Oatly-Full-Fat-Chilled-Oatmilk-32oz.jpg?v=1618612138", 
  link: "https://us.oatly.com/products/full-fat-oatmilk-chilled",  
  category_id: 1,
  brand_id: 1
)

NonDairyOption.create(
  name: "Oatmilk", 
  description: "Just love this product. It’s made fresh from 100% gluten-free oats and enriched with calcium. It has amazing beta-glucans (big, scientific word for soluble fiber from oats), and is naturally low in saturated fat. When should you use it? Whenever you would use old school milk from cows—chilled in a glass, for cooking or baking—in exactly the same amounts.", 
  allergens: "oats",
  recommendations: "A great all-around option. Perfect for smoothies, cereal, making biscuits, and really anything that you'd need a milk replacement for!", 
  image: "https://cdn.shopify.com/s/files/1/2113/2635/products/Oatly-Original-Chilled-Oatmilk-32oz.jpg?v=1618612227", 
  link: "https://us.oatly.com/collections/products/products/oatmilk-chilled", 
  category_id: 1,
  brand_id: 1
)

NonDairyOption.create(
  name: "Low-Fat Oatmilk", 
  description: "Some people just prefer less fat, no matter how good the fat in question happens to be. And if you’re one of those nice people, how cool and weird is it that you’re reading this paragraph on this website at this moment about this amazing Low-Fat Oatmilk with all the flavor of beautiful gluten-free oats and only one tiny gram of unsaturated fat per serving? It also has heart-healthy beta-glucans* (big, scientific word for soluble fiber from oats) and no dairy, nuts, soy, gluten or GMOs, but right now we’re talking about less fat. Or karma. Well, whatever we’re talking about, it’s the good kind.", 
  allergens: "oats",
  recommendations: "The amazing low-fat cousin of Oatly's other products. Same great taste and can be used for all the same things - just with less fat and less calories!", 
  image: "https://cdn.shopify.com/s/files/1/2113/2635/products/Oatly-Low-Fat-Chilled-Oatmilk-32oz.jpg?v=1618612193", 
  link: "https://us.oatly.com/collections/products/products/low-fat-oatmilk-chilled",  
  category_id: 1,
  brand_id: 1
)

NonDairyOption.create(
  name: "Chocolate Oatmilk", 
  description: "Everyone’s favorite: chocolate milk! Except skip the whole cow thing and have it from beautiful gluten-free oats instead of milk. If that’s not enough, it's enriched with calcium and vitamins so the more delicious Chocolate Oatmilk you drink the healthier you become. Obviously that can’t be promised legally, but you get the idea.", 
  allergens: "oats",
  recommendations: "The amazing low-fat cousin of Oatly's other products. Same great taste and can be used for all the same things - just with less fat and less calories!", 
  image: "https://cdn.shopify.com/s/files/1/2113/2635/products/Oatly-Chocolate-Chilled-Oatmilk-32oz.jpg?v=1618612104", 
  link: "https://us.oatly.com/collections/products/products/chocolate-oatmilk-chilled", 
  category_id: 1,
  brand_id: 1
)

# Silk
NonDairyOption.create(
  name: "Vanilla Almond Milk", 
  description: "You deserve more oh-so-mmm moments—especially if they include a note of vanilla. And Silk's smooth almondmilk also has 50% more calcium than regular milk.", 
  allergens: "almonds",
  recommendations: "Love this with frosted flakes cereal, but definitely only recommended if you like things sweet!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-vanilla-almondmilk-3.png",
  link: "https://silk.com/plant-based-products/almondmilk/vanilla-almondmilk/",  
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Almond Milk", 
  description: "You deserve more oh-so-mmm moments. And this smooth almondmilk also has 50% more calcium than milk.", 
  allergens: "almonds",
  recommendations: "Great option if you're looking for something simple that won't add too much additional flavor to whatever you're making!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-vanilla-almondmilk-3.png", 
  link: "https://silk.com/plant-based-products/almondmilk/original-almondmilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Unsweetened Almond Milk", 
  description: "You deserve more oh-so-mmm moments. This smooth almondmilk has no added sugar and 50% more calcium than milk. Because it's that good, if you're going through more than a half-gallon a week, Silk has you covered with an easy-pour 96-oz bottle.", 
  allergens: "almonds",
  recommendations: "Love this with frosted flakes cereal, but definitely only recommended if you like things sweet!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-vanilla-almondmilk-3.png", 
  link: "https://silk.com/plant-based-products/almondmilk/unsweet-almondmilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Unsweetened Almond Milk", 
  description: "You deserve more oh-so-mmm moments. This smooth almondmilk has no added sugar and 50% more calcium than milk. Because it's that good, if you're going through more than a half-gallon a week, Silk has you covered with an easy-pour 96-oz bottle.", 
  allergens: "almonds",
  recommendations: "Love this with frosted flakes cereal, but definitely only recommended if you like things sweet!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-vanilla-almondmilk-3.png", 
  link: "https://silk.com/plant-based-products/almondmilk/unsweet-almondmilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Vanilla Soy Milk", 
  description: "Silk® Soymilk is the Original Nutrition Powerhouse, made from whole-harvested soybeans grown in the U.S. and Canada. It’s soy rich and soy creamy, with a note of vanilla.", 
  allergens: "soy",
  recommendations: "Anywhere you need a splash of vanilla!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-vanilla-soymilk-sm.png", 
  link: "https://silk.com/plant-based-products/soymilk/vanilla-soymilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Very Vanilla Soy Milk", 
  description: "Silk® Soymilk is the Original Nutrition Powerhouse, made from whole-harvested soybeans grown in the U.S. and Canada. It’s soy rich and soy creamy, with bold vanilla flavor.", 
  allergens: "soy",
  recommendations: "Anywhere you need a really big splash of vanilla! Perfect for if you want to make some easy vegan vanilla ice cream at home too!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-very-vanilla-soymilk-sm.png", 
  link: "https://silk.com/plant-based-products/soymilk/vanilla-soymilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Original Soy Milk", 
  description: "Silk® Soymilk is the Original Nutrition Powerhouse, made from whole-harvested soybeans grown in the U.S. and Canada. It’s soy rich and soy creamy.", 
  allergens: "soy",
  recommendations: "Nothing bad to say about this guy - it's great anywhere you need to use milk! But do be warned - if you're trying to avoid any level of sweetness for your dish, go for the original unsweetened soy milk instead.", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-original-soymilk-sm.png", 
  link: "https://silk.com/plant-based-products/soymilk/original-soymilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Unsweetened Soy Milk", 
  description: "Silk® Soymilk is the Original Nutrition Powerhouse, made from whole-harvested soybeans grown in the U.S. and Canada. It’s soy rich and soy creamy, with no added sugar.", 
  allergens: "soy",
  recommendations: "Perfect for any recipe that calls for milk and you're looking for a non-dairy substitute, and looking for one that doesn't have any added sugar!", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-organic-unsweet-soymilk-sm.png", 
  link: "https://silk.com/plant-based-products/soymilk/organic-unsweet-soymilk", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Chocolate Soy Milk", 
  description: "Silk® Soymilk is the Original Nutrition Powerhouse, made from whole-harvested soybeans grown in the U.S. and Canada. It’s soy rich and soy creamy, made with real cocoa.", 
  allergens: "soy",
  recommendations: "Similar to very vanilla, the chocolate soy milk is great for when you want to make an easy chocolate vegan ice cream at home. Also great for if you just want a glass of chocolate milk (and a fun straw!).", 
  image: "https://silk.com/wp-content/uploads/2019/02/SK_3002_Soy_Choco-sm.png", 
  link: "https://silk.com/plant-based-products/soymilk/chocolate-soymilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Unsweetened Cashew Milk", 
  description: "Made with the special creaminess of cashews, Silk® Unsweetened Cashewmilk is 1/3 of the calories of skim milk and brings an irresistibly creamy taste that’s perfect over cereal, in recipes or guzzled straight from the carton. Don’t worry–your secret’s safe with us.", 
  allergens: "cashews",
  recommendations: "One of my favorite non-dairy milk options! It's super creamy so it's much closer to real milk than some of the other alternatives. Only downside is the cashews, since cashews are not very allergen friendly.", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-unsweet-cashewmilk.png", 
  link: "https://silk.com/plant-based-products/cashewmilk/unsweetened-cashewmilk/", 
  category_id: 1,
  brand_id: 3
)

NonDairyOption.create(
  name: "Unsweetened Vanilla Cashew Milk", 
  description: "Silk® Unsweetened Vanilla Cashewmilk delivers irresistibly creamy taste with a delicious note of vanilla. With 1/3 the calories of skim milk and no added sugar, it’s delightfully drinkable.", 
  allergens: "cashews",
  recommendations: "Similar to the regular unsweetened cashew milk, this is one of my favorite non-dairy milk options! It's super creamy so it's much closer to real milk than some of the other alternatives, and with the added bonus of vanilla flavoring! Only downside is the cashews, since cashews are not very allergen friendly.", 
  image: "https://silk.com/wp-content/uploads/2019/02/silk-unsweet-vanilla-cashewmilk.png", 
  link: "https://silk.com/plant-based-products/cashewmilk/unsweetened-vanilla-cashewmilk/", 
  category_id: 1,
  brand_id: 3
)

# So Delicious
NonDairyOption.create(
  name: "Organic Coconut Milk", 
  description: "Oh-so-smooth organic coconutmilk crafted for dairy-free deliciousness in smoothies, over cereal and in recipes. That’s the art of dairy-free.", 
  allergens: "coconut",
  recommendations: "Highly recommended for curries and other dishes that could benefit from some coconut flavoring. Also hello, pina coladas anyone??", 
  image: "https://sodeliciousdairyfree.com/wp-content/uploads/2019/02/original-coconutmilk-organic-32oz_sm.png", 
  link: "https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-original-32oz", 
  category_id: 2,
  brand_id: 4
)

NonDairyOption.create(
  name: "Unsweetened Coconut Milk", 
  description: "Smooth, creamy, organic coconutmilk crafted for dairy-free deliciousness in smoothies, over cereal and more. That's the art of dairy-free.", 
  allergens: "coconut",
  recommendations: "Highly recommended for curries and other dishes that could benefit from some coconut flavoring, but not some much sugar.", 
  image: "https://sodeliciousdairyfree.com/wp-content/uploads/2019/02/original-unsweetened-coconutmilk-organic-32oz-sm.png", 
  link: "https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-32oz", 
  category_id: 2,
  brand_id: 4
)

NonDairyOption.create(
  name: "Vanilla Coconut Milk", 
  description: "Crafted with hints of sweet vanilla and creamy coconutmilk. Tasty in smoothies, over cereal and more. Inspire your taste buds.", 
  allergens: "coconut",
  recommendations: "Works beautifully with baked goods and other desserts that aren't afraid to liven up a bit with both vanilla and coconut flavors!", 
  image: "https://sodeliciousdairyfree.com/wp-content/uploads/2019/02/Bev_Aspt_Ccnt_32oz_Van_sm.png", 
  link: "https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/vanilla-32oz", 
  category_id: 2,
  brand_id: 4
)

NonDairyOption.create(
  name: "Vanilla Coconut Milk", 
  description: "Crafted with hints of sweet vanilla and creamy coconutmilk. Tasty in smoothies, over cereal and more. Inspire your taste buds.", 
  allergens: "coconut",
  recommendations: "Works beautifully with baked goods and other desserts that aren't afraid to liven up a bit with both vanilla and coconut flavors, but that don't need any help with extra sugar!", 
  image: "https://sodeliciousdairyfree.com/wp-content/uploads/2019/02/Bev_Aspt_Ccnt_32oz_UnswVan_sm.png", 
  link: "https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/unsweetened-vanilla-32oz", 
  category_id: 2,
  brand_id: 4
)

# Forager
NonDairyOption.create(
  name: "Organic Cashew Milk", 
  description: "Forager's simplest and purest Cashewmilk. A delicate vegan blend of organic cashewmilk with a hint of coconut cream. Dairy-free, no added sugar, no gums, just simple, organic ingredients.", 
  allergens: "cashews, coconut, oats",
  recommendations: "Personally, prefer this one with desserts and other baked goods (or even with granola!) due to the creaminess, as well as the additional coconut flavor!)", 
  image: "https://29j6k42bpkwj4f6a4v1sncl7-wpengine.netdna-ssl.com/wp-content/uploads/2020/01/master-product-detail-products_Cashewmilk-new-min-e1609783238345.png", 
  link: "https://www.foragerproject.com/product/organic-unsweetened-cashewmilk/", 
  category_id: 1,
  brand_id: 5
)

NonDairyOption.create(
  name: "Organic Oat Milk", 
  description: "Made from gluten-free oats, our organic Oatmilk is naturally creamy and subtly sweet - without any gums, or additives.", 
  allergens: "cashews, coconut, oats",
  recommendations: "Perfect as a barista-style oatmilk for frothing or as a dairy-free milk replacement in recipes.", 
  image: "https://29j6k42bpkwj4f6a4v1sncl7-wpengine.netdna-ssl.com/wp-content/uploads/2020/01/master-product-detail-products-48oz-oatmilk-v2.png", 
  link: "https://www.foragerproject.com/product/organic-oatmilk/", 
  category_id: 1,
  brand_id: 5
)

NonDairyOption.create(
  name: "Organic Coconut Milk", 
  description: "Richer, creamier plant-based blend of organic cashew, oat, and coconut dairy-free milks–pure, simple and versatile.", 
  allergens: "cashews, coconut, oats",
  recommendations: "Use as a vegan milk alternative in cereal, smoothies, cooking, baking, and more!", 
  image: "https://29j6k42bpkwj4f6a4v1sncl7-wpengine.netdna-ssl.com/wp-content/uploads/2020/01/master-product-detail-products-48oz-coconut-cashew-oat-milk.png", 
  link: "https://www.foragerproject.com/product/organic-unsweetened-coconut-cashew-oatmilk/", 
  category_id: 1,
  brand_id: 5
)

# Sproud
NonDairyOption.create(
  name: "Barista Milk", 
  description: "Sproud's barista style vegan milk alternative is rich, foamy and low in sugar. As it is easy to froth, Sproud Barista is perfect for lattes, cappuccinos and other espresso drinks. You can also enjoy it with filter coffee, tea or in most other ways you would use cow’s milk. And the taste is very similar, even though it's made from peas!", 
  allergens: "peas",
  recommendations: "I use this exclusively at home for my coffee. It doesn't have any other flavors going on, so your coffee will still taste like coffee! But, my favorite is to add a splash of vanilla syrup and froth it in my (non-dairy!) milk frother and make homemade lattes!", 
  image: "https://494524-1562353-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2020/04/Barista-frilagd-1.jpg", 
  link: "https://besproud.com/us/product/sproud-vegan-barista-milk/", 
  category_id: 2,
  brand_id: 10
)

# Violife
NonDairyOption.create(
  name: "Cheddar Shreds", 
  description: "Just like the bag says - these are just like cheddar shreds, but vegan! Now you can enjoy your nachos with ready delicious Violife just like Cheddar Shreds. A super easy convenient addition to any fridge.", 
  allergens: "coconut",
  recommendations: "These shreds are some of the closest vegan shreds I've found to regular cheese shreds. They go great on tacos, can be mixed with some milk (recommend Oatly's full-fat oat milk here!) for some great easy vegan mac and cheese, and they're also great for grilled cheese!", 
  image: "https://violifefoods.com/wp-content/uploads/2018/12/5150_AW_Violife_USA_Shreds_Cheddar_227g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-cheddar-shreds/", 
  category_id: 6,
  brand_id: 2
)

NonDairyOption.create(
  name: "Mozzarella Shreds", 
  description: "Try making your own pizza and use our Violife just like Mozzarella Shreds with fresh tomato puree. For the perfect family meal.", 
  allergens: "coconut",
  recommendations: "These shreds are one of the only ones I've found that melts beautifully for pizza. Grab some frozen pizza dough, a jar of your favorite marinara sauce, and a bag of these bad boys and you're golden!", 
  image: "https://violifefoods.com/wp-content/uploads/2017/07/5148_AW_Violife_US%CE%91_Shreds_Mozzarella_227g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-mozzarella-shreds/", 
  category_id: 6,
  brand_id: 2
)

NonDairyOption.create(
  name: "Colby Jack Shreds", 
  description: "Your favorite flavor to be stirred into casseroles, sprinkled over nachos and tacos! A must have for Taco Tuesday nights!", 
  allergens: "coconut",
  recommendations: "Nachos, burritos, tacos, enchiladas - this is the best vegan cheese pairing to go with all of those! Also great for pizzas and pastas if you're trying to add some extra zing!", 
  image: "https://violifefoods.com/wp-content/uploads/2020/05/5802_AW_USA_Violife_Shreds_ColbyJack_227g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-colby-jack-shreds/", 
  category_id: 6,
  brand_id: 2
)

NonDairyOption.create(
  name: "Cheddar Slices", 
  description: "Just like the bag says - these are just like cheddar cheese slices, but vegan! A traditional flavour that all the family will enjoy! Try it with macaroni, sprinkled on pasta, grated on a baked potato or simply on its own. It’s versatile and delicious.", 
  allergens: "coconut",
  recommendations: "While these shreds are pretty decent straight out of the package, they're really best for cheeseburgers (looking at you, Impossible!) and grilled cheese, and anything else you want a melty slice of cheese with!", 
  image: "https://violifefoods.com/wp-content/uploads/2019/02/5808_AW_USA_Violife_SS_Cheddar_200g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-cheddar-slices/", 
  category_id: 5,
  brand_id: 2
)

NonDairyOption.create(
  name: "Mature Cheddar Slices", 
  description: 'For those that really miss the taste of strong cheese this is for you! It’s perfect blend of texture and tang will satisfy your cravings. Also as my husband likes to joke - these slices are "not for kids" ;)', 
  allergens: "coconut",
  recommendations: "I know they're slices, but I highly recommend melting them down with some milk for a more decadent vegan mac and cheese. Bonus points if you mix the mature cheddar slices with the regular cheddar slices, as well as some of Violife's smoked provolone slices!", 
  image: "https://violifefoods.com/wp-content/uploads/2017/09/5809_AW_USA_Violife_SS_MatureCheddar_200g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-mature-cheddar-slices/", 
  category_id: 5,
  brand_id: 2
)

NonDairyOption.create(
  name: "Smoked Provoline Slices", 
  description: "Once tried, forever loved. You’ll be eating it straight out of the pack before long! Try it on crackers with a glass of red wine (we think a hearty Rioja goes well) or grilled on your favourite vegan bread.", 
  allergens: "coconut",
  recommendations: "Great for any dish that you need some cheese and some additional smokey flavor! Also great for sandwiches and wraps!", 
  image: "https://violifefoods.com/wp-content/uploads/2017/09/5810_AW_USA_Violife_SS_Smoked_200g_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-smoked-provolone-slices/", 
  category_id: 5,
  brand_id: 2
)

NonDairyOption.create(
  name: "Feta Block", 
  description: "Looked to our Greek heritage for inspiration with this flavor, toss in a crispy salad with olives and cherry tomatoes or melt into a Portobello mushroom for a delicious snack.", 
  allergens: "coconut",
  recommendations: "This cheese is SO creamy and perfect for pastas, salads, and just eating on its own with some crackers. I was never a huge fan of regular feta, but I could eat this stuff straight out of the package!", 
  image: "https://violifefoods.com/wp-content/uploads/2018/04/5807_AW_USA_Violife_BLK_Feta_200g_95x110mm_73x85mm_1.0_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-feta-block/", 
  category_id: 7,
  brand_id: 2
)

NonDairyOption.create(
  name: "Parmesan Wedge", 
  description: "For those who want a little Italian authenticity on their pasta or crackers, now you can have the flavour without the dairy or gluten. Delizioso!", 
  allergens: "coconut",
  recommendations: "As someone who used to dump loads of parmesan cheese on anything I ate, I highly recommend this parm for everything! Great in larger chunks on salad, or shredded on top of pizza or pasta! Make some kale pesto sauce at home overtop of some penne with some shredded Violife Parm and you've got a perfectly simple and elegant weeknight meal.", 
  image: "https://violifefoods.com/wp-content/uploads/2017/09/5803_AW_USA_Violife_WEDGE_Parmesan_150g_1.0_Folder_550x500.png", 
  link: "https://violifefoods.com/us/product/just-like-parmesan-wedge/", 
  category_id: 7,
  brand_id: 2
)

# Daiya
NonDairyOption.create(
  name: "Cutting Board Cheddar Shreds", 
  description: "Three cheers for Cutting Board Cheddar Style Shreds. One cheer for the full, refined artisan flavor. Another cheer for the ultra cheezy texture that complements all your favorite meals. And a final huge cheer for a melt so ooey and gooey your heart may melt out of pure plant-based love.", 
  allergens: "coconut",
  recommendations: `A classic. Although it has the distinct "Daiya" taste, this stuff is the OG and will always have a place in my heart. While it's not my go-to option anymore, it's still great on nachos, burgers, in grilled cheese, etc - just make sure you melt it! I do not recommend it cold out of the package ever. But it's easily available and for that, I am forever grateful!`, 
  image: "https://daiyafoods.com/wp-content/uploads/2017/06/00321US-Daiya-Cutting-Board-Shreds-Cheddar-Style-7.1-oz-200-g-v1.00-WEB_Tight.png", 
  link: "https://daiyafoods.com/our-foods/shreds/cheddar-cutting-board-shreds/", 
  category_id: 6,
  brand_id: 6
)

NonDairyOption.create(
  name: "Cutting Board Cheddar & Mozz Blend Shreds", 
  description: "Daiya has gone and made a good thing better. Not only is the Cheddar & Mozza blend now made with chickpea protein, but the new-and-improved recipe gives each bite the best taste, texture and flavor yet. You might even think it’s dairy cheese, but we can assure you, this blend is still dairy-free as can be.", 
  allergens: "coconut",
  recommendations: "Okay hear me out - these shreds are great melted overtop of a hotdog (might I recommend Field Roast for those?). First had a hotdog like that at Sticky Finger's bakery in DC and I've been obsessed ever since!", 
  image: "https://daiyafoods.com/wp-content/uploads/2020/03/00326US-Daiya-Cutting-Board-Shreds-Cheddar-Mozza-Style-Blend-7.1-oz-200-g-v0.00-WEB_Tight.png", 
  link: "https://daiyafoods.com/our-foods/shreds/cheddar-mozza-blend-cutting-board-shreds/", 
  category_id: 6,
  brand_id: 6
)

NonDairyOption.create(
  name: "Cutting Board Mozzarella Shreds", 
  description: "Artisan excellence. That’s the driving force behind Daiya's Cutting Board Collection. Deliciously dairy-free and plant-based, Cutting Board Mozzarella Style Shreds give cheese lovers the very finest in taste and texture. Better pizzas, better pastas, better I’ll-have-seconds-please. A classic melt every time.", 
  allergens: "coconut",
  recommendations: `Daiya's cutting board shreds are much better than their regular ones - they've come a long way since they first came about. Daiya does have a distinct "Daiya" taste, and I do recommend that you should only use them if you're going to melt them down (like on top of pizza or in a lasagna).`, 
  image: "https://daiyafoods.com/wp-content/uploads/2017/06/00320US-Daiya-Cutting-Board-Shreds-Mozzarella-Style-7.1-oz-200-g-v1.00-WEB_Tight.png", 
  link: "https://daiyafoods.com/our-foods/shreds/mozzarella-cutting-board-shreds/", 
  category_id: 6,
  brand_id: 6
)

NonDairyOption.create(
  name: "Cutting Board Spicy Monterey Jack Shreds", 
  description: "The perfect pepperjack balances the rich, smooth depth of Monterey Jack with the vivid highlights of chile peppers. Introducing Cutting Board Spicy Monterey Jack Style Shreds. Enjoy the artisan cheezy goodness anywhere you want a flavor boost, from dairy-free nachos to a lively breakfast casserole.", 
  allergens: "coconut",
  recommendations: "Nachos, burritos, tacos, enchiladas - this is the best vegan cheese pairing to go with all of those! Also great for pizzas and pastas if you're trying to add some extra zing!", 
  image: "https://daiyafoods.com/wp-content/uploads/2017/06/00322US-Daiya-Cutting-Board-Shreds-Spicy-Monterey-Jack-Style-7.1-oz-200-g-v101-WEB.png", 
  link: "https://daiyafoods.com/our-foods/shreds/pepperjack-cutting-board-shreds/", 
  category_id: 6,
  brand_id: 6
)

# Parmela
NonDairyOption.create(
  name: "Sharp Cheddar Shreds", 
  description: "Sharp Cheddar, the OG cheese but cranked up a notch, aged 60 days to bring out deep and sharp flavor, a necessity for nachos, a topper for tacos.", 
  allergens: "cashews, coconut",
  recommendations: "No joke - take a handful of these shreds and a splash of your favorite (non-dairy!) milk and heat up in a bowl in the microwave, and you've got a super quick and easy cheese dip for chips, bread, and more!", 
  image: "https://www.parmelacreamery.com/wp-content/uploads/sc-shred.png", 
  link: "https://www.parmelacreamery.com/products/shreds/sharp-cheddar-shreds", 
  category_id: 6,
  brand_id: 7
)

NonDairyOption.create(
  name: "Mild Cheddar Shreds", 
  description: "Mild Cheddar, mellow flavor and smooth texture, your childhood cheese but plant-based, perfect for a loaded baked potato or the creamiest mac ‘n’ cheese.", 
  allergens: "cashews, coconut",
  recommendations: "Just like the description says - one of my favorite cheeses for making an amazingly creamy (and cheesey!) vegan mac and cheese.", 
  image: "https://www.parmelacreamery.com/wp-content/uploads/mc-shred.png", 
  link: "https://www.parmelacreamery.com/products/shreds/mild-cheddar-shreds", 
  category_id: 6,
  brand_id: 7
)

NonDairyOption.create(
  name: "Fiery Jack Shreds", 
  description: "Fiery Jack packs a punch in the spice department, the ideal topping for revved up nachos or hearty chili.", 
  allergens: "cashews, coconut",
  recommendations: "Tacos and nachos are where this cheese thrives. Definitely has a kick so be careful if you're also adding any other heat to your dish. Perfect just sprinkled on top of your dish straight out of the bag, but also makes for a killer queso.", 
  image: "https://www.parmelacreamery.com/wp-content/uploads/fj-shred.png", 
  link: "https://www.parmelacreamery.com/products/shreds/fiery-jack-shreds", 
  category_id: 6,
  brand_id: 7
)

NonDairyOption.create(
  name: "Mozzarella Shreds", 
  description: "Fresh Cultured Mozzarella, the mellowest and creamiest of the Parmela Shreds crew, the perfect addition to a fresh pasta or decadent pizza.", 
  allergens: "cashews, coconut",
  recommendations: "Really good on pastas, and works pretty well with pizza (especially if you can't find Violife's mozz shreds). The shreds will tend to dry out a bit when heated in the oven if you're not careful, but that does make it easier for getting a nice crispy baked ziti crust!", 
  image: "https://www.parmelacreamery.com/wp-content/uploads/mz-shred-2021.png", 
  link: "https://www.parmelacreamery.com/products/shreds/mozzarella-shreds", 
  category_id: 6,
  brand_id: 7
)


puts "Creating board pins 🧷 🧷 🧷"
25.times do
  BoardPin.create(
    non_dairy_option_id: NonDairyOption.all.ids.sample, 
    board_id: Board.all.ids.sample
  )
end

puts "Creating recipe pins 📌 📌 📌"
25.times do
  RecipePin.create(
    non_dairy_option_id: NonDairyOption.all.ids.sample, 
    recipe_id: Recipe.all.ids.sample
  )
end

puts "Data seeded 🌼 🌼 🌼"
