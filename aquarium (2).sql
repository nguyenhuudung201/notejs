-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 02:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aquarium`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_code` varchar(100) NOT NULL,
  `Gallery_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `name_code`, `Gallery_id`) VALUES
(1, 'african penguin', 'african-penguin', 1),
(2, 'Beluga Whale', 'beluga-whale', 2),
(3, 'California Sea Lion', 'california-sea-lion', 3),
(4, 'Common Bottlenose Dolphin', 'bottlenose-dolphin', 4),
(5, 'Tiger Shark', 'tiger-shark', 5),
(6, 'African Butterflyfish', 'dolphin-encounter', 6),
(7, 'African Pancake Tortoise', 'Pike-Fish', 7),
(8, 'Arc-Eye Hawkfish', 'Marline-Fish', 8),
(9, 'Baja Blue Rock Lizard', 'Boar-Fish', 9),
(10, 'Whale Shark', 'Sea-horse', 10),
(11, 'Bignose Unicornfish', 'Hog-Fish', 11),
(12, 'Black Crappie', 'Thread-fin', 12),
(13, 'Black Rockfish', 'Clown-Fish', 13),
(14, 'Black Spot Piranha', 'Sword-Fish', 14),
(15, 'Bat Star', 'Moli-dae', 15),
(16, 'Amazon Puffer', 'Blow-Fish', 16),
(17, 'Asian Small-clawed Otter', 'Asian-Small-clawed-Otter', 17),
(18, 'Banggai Cardinalfish', 'Banggai-Cardinalfish', 18),
(19, 'Blacktip Reef Shark', 'Blacktip-Reef-Shark', 19),
(20, 'Blackbar Soldierfish', 'Blackbar-Soldierfish', 20);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `img_bg` text NOT NULL,
  `img_content` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `time_post` date NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `animal_id`, `img_bg`, `img_content`, `title`, `description`, `time_post`, `author`) VALUES
(1, 1, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_angelfish_eating_fish_food.jpg?v=1676315453&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/koi_eating_pellets.jpg?v=1676315822', 'How to Pick the Best Fish Foods That Aquarium Fish Can’t Resist', 'With so many brands and types of fish foods at the pet store, how do you know which one to get? Many beginners just reach for a jar that has a picture of their fish on the front without considering whether or not their fish will actually eat it. Living animals actually have preferences when it comes to the taste, ingredients, and form factor, and picky eaters may even refuse the most expensive, high-quality brands if they don’t suit their needs. Let’s talk about the different types of fish foods that are most readily available to fishkeepers and what types of fish they are most appropriate for.\r\n\r\nDry, Prepared Fish Foods\r\nFlake foods are one of the most common fish foods at pet stores because of their cheaper cost and universal usage. They float at the surface to feed top-dwelling fish and then slowly sink to feed midwater and bottom-dwelling creatures. They can be crumbled to a smaller size that caters to baby fry and nano species. Plus, they come in many varieties with different ingredients to satisfy the diets of carnivores, omnivores, and herbivores. Because the flakes are so thin and soft, fish can easily bite into them to tear off chunks. However, that also means the flakes can disintegrate quickly in water, so they may not be the best food for slow eaters or constant grazers.', '2023-03-16', 'Sara'),
(2, 2, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_platy_fish.jpg?v=1675193307&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Xiphophorus_maculatus_southern_platyfish.jpg?v=1675193330', ' Aquarium Fish That Love Hard Water', 'Did you know that certain aquarium fish may not do well in your home because they prefer water parameters that are very different from your tap water? For example, if the pH and GH (or general hardness) coming out of your faucet are very high, then discus, crystal shrimp, and other creatures from soft water environments may be more difficult to keep. That being said, do not despair if your water hardness is off the charts and considered to be “liquid rock.” Many species thrive in hard water environments, so we’ve listed our top 10 community fish that can live in high pH and GH conditions.\r\nThis lively, beginner-friendly fish is one of our favorite livebearers to keep because of their bold colors, inexpensive cost, and ease of care. They only grow to 2–3 inches (5–7 cm) long and are very accepting of a broad spectrum of parameters, including harder water. While the southern platy (X. maculatus) is more of a tropical fish, the variatus platy (X. variatus) is accustomed to cooler waters and can live in an unheated tank at home. Like many livebearers, platies are great clean-up crew members that not only pick up leftover fish food around the tank but also nibble on algae without eating the aquarium plants. For more details about their requirements, see our platy article.', '2023-03-08', 'Irene Bearly'),
(3, 3, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_cherry_barb.jpg?v=1674692108&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/female_and_male_cherry_barb.jpg?v=1674692243', 'Care Guide for Cherry Barbs — Peaceful Barb for Community Tanks', 'Barbs often get a bad reputation because of their boisterous, fin-nipping behavior, but cherry barbs are an exception to the rule. This 2-inch (5 cm) schooling fish acts like your average, mild-mannered tetra and mixes well with other community fish. They are commonly sold at pet stores because of their vivid redness, energetic personality, and ease of breeding. Learn all about how to care for this popular and peaceful barb.\r\n\r\nWhat are Cherry Barbs?\r\nPuntius titteya are found in the rainforests of Sri Lanka, an island country off the southern tip of India. As per their common name, the males are bright, cherry red while the females are more tannish-red. Both sexes have a black, horizontal line running down their sides with some scales also rimmed in black. Fish farms have also developed albino and long fin (or veiltail) varieties for the aquarium hobby.\r\n\r\nAre cherry barbs aggressive? No, this easygoing fish is a great addition to community tanks. Similar to tetras, you may see them chase each other around a little as they establish their pecking order or when the males try to initiate breeding, but they do not tend to bother other fish.\r\nHow to Set Up an Aquarium for Cherry Barbs\r\nIn the wild, they inhabit tropical streams with lots of plant life on the banks that drop their leaves and sticks into the water. Because of the seasonal monsoons, cherry barbs are used to living in a wide range of water conditions — such as temperatures between 72–80°F (22–27°C), pH of 6.0–8.0, and soft to hard water. To bring out their crimson coloration, set up a planted aquarium full of greenery with a darker substrate and background. Adding natural decor like driftwood will also enhance the environment and give them more places to explore and take shelter.\r\n\r\nHow many cherry barbs should be kept together? A group of six can be kept in a 10-gallon or larger aquarium. However, the more you get, the more outgoing they will be. While you may be tempted to buy only males because of their deeper reds, try to keep at least 1–2 females for every male because the boys show off their best coloration when they have girls to impress.\r\n\r\nWhat fish can live with cherry barbs? As mentioned before, they are community fish that can live with similar-sized, peaceful creatures, such as tetras, danios, cory catfish, and plecos. While cherry barbs will swim anywhere to feed, they tend to hang out in the middle to bottom levels of the tank, so you may consider pairing them with fish that swim in the upper half — like guppies, blue-eye rainbowfish, and pencilfish. As for dwarf shrimp, they seem to do okay with bigger amano shrimp but may try to go after adult cherry shrimp, so make sure to add plenty of hiding spots for the shrimp and be prepared to remove them if necessary. We have personally kept cherry barbs with betta fish before, but depending on the betta’s personality, they may not get along so watch closely for compatibility issues.', '2023-03-20', 'John'),
(4, 9, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_cherry_shrimp.jpg?v=1672943662&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Orange_sakura_Neocaridina_shrimp.jpg?v=1672943550', 'Care Guide for Cherry Shrimp — Tank Setup, Food, and Breeding', 'The aquarium hobby is crazy about Neocaridina cherry shrimp and for good reason too. Not only are they excellent clean-up crew members that eat algae and leftover fish food, but they come in almost every color of the rainbow and are tiny enough to fit in a 2-gallon nano tank. Compared to other types of ornamental shrimp, they are pretty beginner-friendly and can handle a wide range of water parameters. Finally, these adorable critters are very easy to breed and can be sold at local fish stores and aquarium societies. Learn all about the beautiful cherry shrimp and how to keep them healthy and happy.\r\n\r\nWhat are Cherry Shrimp?\r\nNeocaridina davidi is native to China and Taiwan and normally has a translucent body covered in mottled brown speckling that blends in well with its surroundings. Nowadays, there are many color morphs available on the market — such as red, orange, yellow, green jade, blue dream, blue velvet, chocolate, black rose, and rili (or striped). Red is the most popular color, which is why the species is commonly known as “cherry shrimp” or “red cherry shrimp” (RCS). Lots of companies like to label their RCS with special color grades — like sakura red, fire red, painted fire red, and Bloody Mary — but the quality level is very subjective. The best way to judge color is to visit your local fish store or breeder in person and pick the shrimp that look the best to you.\r\n\r\nHow do you tell a male cherry shrimp from a female? Females are the larger of the two sexes, can grow up to 1.5 inches (4 cm), and display very bright and vivid colors. In adulthood, the female either has a yellow, saddle-like shape at her back (which are unfertilized eggs in the ovaries) or is “berried” and carries fertilized eggs in the swimmerets underneath her tail. Males are a bit smaller at 1–1.25 inches (2.5–3 cm), have a slimmer tail, and are more translucent in color. Juveniles are hard to sex since they all look slender and less colorful than the adults.\r\n\r\nHow to Set Up an Aquarium for Cherry Shrimp\r\nAs mentioned before, Neocaridina shrimp can fit in tiny tanks, but we prefer to use a 10-gallon tank or larger for the purposes of setting up a healthy breeding colony. Ideally, put them in a mature tank that has been running for many months so that it’s chock full of microfauna and mulm for them to graze on. Also, use a sponge filter or cover the filter input with a pre-filter sponge to ensure that no baby shrimp accidentally get sucked up.\r\n\r\nShrimp have a hard, outer structure called an exoskeleton and must regularly molt whenever they outgrow their previous “skin.” In order to make the new exoskeleton, they prefer water with pH levels of 6.5–8.5, GH of at least 6° (110 ppm), and KH of at least 2° (40 ppm). If you have soft water, make sure to add mineral supplements to prevent failed molts (sometimes called the “white ring of death” when a dead shrimp has a white band or gap behind its head). Crushed coral helps to increase KH, while Wonder Shell and Seachem Equilibrium boosts GH. Feeding foods rich in calcium and other minerals also helps with healthy molting, which we will discuss in the next section.\r\n\r\nAfter a shrimp molts, its new exoskeleton is fairly soft, so during this time of vulnerability, the shrimp will hide until the new shell hardens. Provide lots of live aquarium plants, shrimp caves, and other shelter for them to seek cover. Dense plants like mosses also tend to grow algae and biofilm, which cherry shrimp love to forage on.', '2023-03-08', 'Mike'),
(5, 11, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/Betta_albimarginata.jpg?v=1672680426&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Betta_albimarginata.jpg?v=1672680502', 'Easy Fish Breeding Ideas for Your Next 20-Gallon', 'When our founder Cory first got into fishkeeping, funds were tight, so he started breeding fish to help with his hobby expenses. After many years of experience keeping fish rooms and tanks of all sizes, he still loves breeding fish at home in the versatile 20-gallon aquarium (both the high and long versions). Learn about his top 5 favorite fish and invertebrates that are easy to spawn and raise up in a colony setting.Most people know about Betta splendens with their large and colorful fins, but breeding them can be hassle since the male juveniles are too territorial to cohabitate and must be raised in individual jars until they reach a sellable size. However, some of the mouth-brooding Betta species are a little more peaceful where males and females can be kept together in a 20-gallon breeding setup. We’ve personally kept and had success with the strawberry betta (B. albimarginata) and Penang betta (B. pugnax), but there are several other species to try like the snakehead betta (B. channoides) and B. rubra. We like to densely plant the aquarium and add tall hardscape to break up line of sight and provide hiding spots for the future fry. A tight-fitting lid is recommended to increase humidity and prevent fish from jumping out. You can even consider adding some small dither fish like neon tetras to swim out in the open and break up any aggression. Most of these bettas prefer acidic, tannin-stained water, so don’t forget to add catappa leaves and other botanicals.\r\n\r\nAfter the female has spawned and the eggs are fertilized, the male is responsible for holding the brood in his mouth for the next 1.5–3 weeks. Once the babies have hatched and are freely swimming, the male will spit them out and they must fend for themselves. The fry are usually big enough to immediately eat baby brine shrimp, which is an amazing superfood that will help them grow fast and strong. Just know that the male cannot eat while he is holding eggs, so to prevent him from losing too much weight, put the female into a separate tank or breeder box until he has time to regain his mass before breeding them again. As the tank becomes more crowded, remove the juveniles to make room for the next brood and prevent territorial disputes.', '2023-03-07', 'Son'),
(6, 14, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_guppies_in_breeding_tank.jpg?v=1671246747&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/male_and_female_endler_s_livebearer_fa552674-de08-467f-a153-5026c8baa6d3.jpg?v=1671246626', 'Colony Breeding: The Easiest Way to Breed Livebearers for Profit', 'Breeding livebearers like guppies, mollies, and platies is not difficult, and many hobbyists joke that all you need to do is add water. But what if you want to produce large numbers of fish to sell for profit at your local fish store or aquarium society? In addition, what if you are limited by budget or space and cannot afford to set up tons of tanks or giant ponds like the commercial farms? Keep reading to see how we’ve produced hundreds of livebearers in a single fish tank with minimal effort and cost.Most people get fry because their pet fish “accidentally” bred and some of the babies survived. However, if you are looking to supply the local market with a high-quality product, make sure you start off with the best and healthiest parents possible. Look for fish with the ideal colors, patterns, shape, and size. Examine them from both the side view and top view to spot any defects like bent spines, missing fins, or drooping tails. Finally, get a ratio of one male for every two to three females. The bare minimum you should start with is a trio of one male and two females, but you will be more successful if you can start your breeding tank with six, nine, or 12 adult fish instead. Greater quantities not only increase your fry production from the beginning, but they also decrease stress on the females so that they are not constantly hounded by the males.', '2023-03-28', 'Jack'),
(7, 18, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_imgae_-_baby_orange_mollies.jpg?v=1665509506&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/peacock_gudgeon_fry_eating_baby_brine_shrimp_098c3659-aee4-4116-87fa-a7ca66279803.jpg?v=1665509593', 'Tiny Foods to Feed Baby Fish for Healthy Growth', 'Breeding fish is such a fun and rewarding part of the aquarium hobby, but while it can be easy to get fish to spawn, raising their tiny babies is where the real challenge begins. High losses often occur in the newborn phase because of water quality issues, predation, or simply not feeding enough of the right foods. In this article, let’s talk about 5 miniscule foods that you can feed even the smallest fry to help them grow quickly and get past the first few weeks of their lives.If you talk to veteran breeders or fish farms that produce massive numbers of fish, they know that the #1 best food to feed fry is baby brine shrimp (BBS). Newly hatched brine shrimp have a nutrient-packed yolk sac that is chock full of healthy fats and proteins — perfect for feeding baby fish. As a live food, their jerky swimming movements also entice the fry to eat more so they grow faster and stronger. To hatch the brine shrimp eggs, simply soak them in salt water, add aeration with an air pump, and heat the water up to 74-82°F (23-28°C). Within 18–36 hours, the baby brine shrimp are ready for harvesting. As long as you buy good eggs, the recipe is very reliable, so follow the instructions in this article.\r\n\r\nBaby brine shrimp are approximately 400–500 microns in size and are suitable for many baby livebearers, African cichlids, and other species that lay larger eggs. However, if you are hatching tiny fry from egg layers like killifish, rainbowfish, and tetras, the newborns are too little to eat baby brine shrimp. Therefore, the rest of the article focuses on even smaller “starter” foods, with the strong recommendation that you switch over to baby brine shrimp after a couple of weeks once the fry are big enough.', '2023-03-09', 'sara'),
(8, 2, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_red_tail_shark.jpg?v=1665078018&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Red-tailed_black_shark_Epalzeorhynchos_bicolor.jpg?v=1665077847', 'Freshwater Sharks for Aquariums (and How Big They Really Get)', 'You may have gone to the pet store and seen some freshwater fish labeled as “sharks.” These species are not true sharks but rather are members of the Cyprinidae family of carp and minnows. They just happen to look like sharks because of their slender, torpedo-shaped bodies and pointy fins. Beginners often buy freshwater sharks because of their attractive shape and hardiness, but they can grow much bigger than expected and have large tank requirements in adulthood. So, before you take home that adorable 2-inch (5 cm) shark at the pet store, let’s learn about their requirements and see if they are the right fish for you.Also known as the red-tailed black shark or redtail sharkminnow, this species is easily identified by its entirely black body and fins with a bright red tail. While they may be sweet and small as a juvenile at the fish store, an adult red tail shark grows up to 5–6 inches (13–15 cm) and requires an aquarium that’s at least 4 feet (1.2 m) long. They come from Thailand’s rivers, streams, and floodplains during the rainy season, which means they are accustomed to living in a wide range of pH between 6–8 and temperatures from 72–79°F (22–26°C). Like all of the sharks on this list, they are omnivores that will eat almost anything — including sinking wafers, fish flakes, and even certain types of algae.\r\n\r\nRed tailed sharks are solitary creatures and not schooling fish, so as they grow older, they become very territorial towards members of their own species and other sharks. They can handle being with other semi-aggressive, similar-sized fish — such as African cichlids, South and Central American cichlids, and larger gouramis like blue and gold gouramis. You can also pair them with slightly smaller, super-fast schooling fish, like giant danios and barbs. Avoid tank mates that are peaceful fish, slow swimmers, or nano creatures that could be eaten.', '2023-03-01', 'mike'),
(9, 19, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_Boesemani_rainbowfish_in_planted_tank.jpg?v=1665011235&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/Boeseman_s_rainbowfish_Melanotaenia_boesemani.jpg?v=1665011330', 'Care Guide for Boesemani Rainbowfish — Tank Setup, Breeding, and More', 'One of the most striking and recognizable rainbowfish is the Boesemani rainbow. This schooling fish is prized for its unique-looking, bicolored body and is the perfect statement piece for a medium-sized community aquarium. Find out what it takes to keep this stunning species happy, healthy, and showing off the best colors possible.\r\n\r\nWhat are Boesemani Rainbowfish?\r\nMelanotaenia boesemani has the classic rainbowfish profile with its pointed snout, deep-bodied profile, and large, distinct scales. Males grow to 4 inches (10 cm) in size and display an iridescent blue front half and orange back half. Females are less colorful, have a slimmer body, and tend to stay around 3 inches (8 cm) long. They are currently endangered in the wild, so the Boeseman\'s rainbowfish sold in the aquarium hobby are all captive-bred. However, the rainbowfish you see at the pet store are usually 2-inch (5 cm) juveniles that looked washed out and barely resemble their adult counterparts. It can take up to a year of providing good care and high-quality foods for them to color up, but the results are well worth the wait.\r\n\r\nWhat is the lifespan of Boesemani rainbowfish? Depending on the water temperature you keep them at, they can live for about 5–8 years on average, although some hobbyists have reportedly kept them alive for up to 13–15 years.\r\n\r\nHow to Set Up an Aquarium for Boesemani Rainbows\r\nThis species is found in mountain lakes and tributaries in West Papua, Indonesia and usually dwells in the shallower areas where lots of vegetation grows. Thus, they would appreciate a densely planted tank with areas of open space for swimming. In fact, one of their favorite pastimes is traversing back and forth along the entire length of the aquarium, so we recommend getting a fish tank at least 4 feet (1.2 m) in length once they are fully grown. They tend to hang around the middle to top half of the water column, so keep a tight lid on the tank to prevent fish from escaping.\r\n\r\nIn general, Boesemani rainbow fish are very hardy and can tolerate a broad spectrum of water parameters. We like to keep them at tropical temperatures between 75–82°F (24–28°C). They can go warmer, but higher temperatures tend to shorten their life span. Although they are originally from mildly alkaline waters, they can easily handle pH of 6–8, and they do enjoy harder water with 8–20 dGH. If your tap water is softer, consider adding some Wonder Shell or Seachem Equilibrium as a mineral supplement.\r\n\r\nHow many Boesemani rainbow fish should be kept together? As a schooling fish, aim to get six or more rainbows of the same species if possible. Also, try to put together a mix of slightly more females than males because then the boys will display their best colors as they show off to the girls.\r\n\r\nWhat fish can live with Boesemani rainbows? Because of their high activity level, we suggest keeping them with other fast swimmers of a comparable size. This includes other rainbowfish, loaches, barbs, peaceful catfish, gouramis, danios, and medium-sized livebearers. If given the chance, they will eat cherry shrimp, baby fish, and anything else that can fit in their mouths.\r\n\r\n', '2023-03-03', 'sara'),
(10, 4, 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_tiger_barbs_in_planted_tank.jpg?v=1664229010&width=832', 'https://cdn.shopify.com/s/files/1/0311/3149/files/male_and_female_cherry_barbs.jpg?v=1664229025', 'Energetic Barbs to Amp Up Your Next Freshwater Aquarium', 'Barbs have the infamous reputation for being fun, fast, but a bit feisty and prone to fin nipping. This schooling fish is part of the Cyprinidae family of carps and minnows, and they get their common name from the barbels or “whiskers” on their faces. Many of them can live in a community aquarium, as long as you get enough members in their group and pick the right tank mates to match their boisterous personalities. Find out which barbs on our top 10 list are naughty versus nice.Probably the most peaceful barb on our list is the cherry barb because they have the docile personality of your typical nano tetra or rasbora. This 2-inch (5 cm) species hails from Sri Lanka off the southern tip of India and is known as a beginner-friendly fish because of its tolerance for a wide range of tropical temperatures and pH. Per their namesake, males are deep cherry red while females are more tannish-red, and both have a dotted black horizontal line running down their sides. A school of six would look fantastic against a background of green plants in a 10-gallon or larger aquarium. To bring out their vivid redness, feed them high-quality foods like krill flakes and baby brine shrimp. Cherry barbs are quite easy to breed as well. Simply provide some dense plants or a spawning mop for the adults to lay the eggs, and then move the eggs to a hatching container so the adults won’t predate on them.', '2023-03-04', 'alex');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `message`, `phone`, `email`) VALUES
(1, 'Lola Bailey', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '0223456', 'LolaBailey@gmail.com'),
(2, 'Dominic Pelletier', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'Dominic Pelletiery@gmail.com'),
(3, 'Abbie Carterr', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'AbbieCarter@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `banner` text NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `size` varchar(200) NOT NULL,
  `diet` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `habitat` varchar(200) NOT NULL,
  `Physical` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id`, `image`, `banner`, `animal_id`, `content`, `size`, `diet`, `location`, `habitat`, `Physical`) VALUES
(1, 'https://www.aviary.org/wp-content/uploads/2021/11/African-Penguin-2-edited-scaled.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/african-penguin-3-1440x454.jpg', 1, 'This small, distinctive penguin is found on the rocky coasts of Southwestern Africa, in the countries of Namibia and South Africa. They feed exclusively on marine species, mainly fish and squid. Hunting involves venturing from shore, sometimes as far as nine miles off the coast, and swallowing food whole.', '18-25 inches (46-64 cm) tall', 'Fish, crustaceans, squid', 'Southernmost coast of Africa', 'Temperate climates near water', 'Size\r\n\r\nThe adult African penguin stands 18 to 25 inches (46-64 cm) tall and weighs 6 to 7 lbs. (2.7 – 3.2 kg).\r\nAppearance\r\n\r\nBlack back and a white breast. The chest and belly may also have black markings. The white color extends in a semicircular pattern behind and over the head. A horseshoe-shaped black stripe extends across the chest and flanks. Bare flesh-pink skin surrounds the eyes.\r\nJuvenile feathers are shades of grey with a lighter belly and chest. They maintain their juvenile feathers for one year post-fledging when they molt to their adult plumage.\r\nBoth sexes look the same, which means they are not sexually dimorphic.\r\nFeathers/Allopreening\r\n\r\nPenguin feathers are stiff and overlap in layers to trap air next to the skin for insulation. The feathers are very resistant to wind and water.\r\nThe birds waterproof themselves by using their beak to spread oil from a gland at the base of the tail.\r\nAfrican penguins are often seen preening each other (allopreening). Allopreening helps birds preen clean and arrange feathers in areas they cannot reach, such as their neck.\r\nAllopreening plays a role in strengthening bonds between mates.'),
(2, 'https://www.coolantarctica.com/Antarctica%20fact%20file/wildlife/Arctic_animals/Delphinapterus_leucas_Steve-snodgrass-CC2-Att-Gen.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/beluga-whale-3-1440x454.jpg', 2, 'Beluga whales are small, white whales that live in the cold waters throughout the Arctic and some subarctic locations. Belugas are social, and form groups called pods.', '11-15 feet (3.4-4.6 m)', 'Fish, mollusks, crustaceans and even zooplankton', 'Found throughout the Arctic', 'Varies from deep offshore waters to shallow bays and estuaries', 'Unfused cervical vertebrae allows for neck flexibility. This adaptation allows for maneuverability in shallow water to hunt and to escape from predators.\r\nVery thick layer of blubber, thick skin, relatively small tail flukes and pectoral flippers, and absence of a dorsal fin are adaptations for life in cold water.\r\nThe melon is the rounded structure on the top of the beluga’s head, just in front of the blowhole. It is composed of lipids (fats) and can change shape when the whale is producing sounds. The melon focuses and projects echolocation signals through the water. It is unique to toothed whales and not found on baleen whales.\r\nLips can be pursed to form the shape of an “O.”\r\nTongue forms a tight seal around fish which allows the beluga to swallow prey without ingesting water.\r\nRather than a dorsal fin, which would be prone to injury from ice and heat loss, a beluga has a dorsal ridge.\r\nGenerally pale gray to pure white as adults, belugas are a light gray color at birth. Their light coloration is believed to camouflage the animal in snowy, icy surroundings.\r\nAreas such as the dorsal ridge, the edges of the pectoral flippers and the edges of the tail flukes may be darker on adult belugas.\r\nAverage weight and length of an adult ranges between 1100-2500 lbs (499-1143 kg) and 11-15 feet (3.4-4.6 m).\r\nAverage calf birth weight is 119-145 lbs (54-66 kg) and length is 4.5-5.1 feet (137-155 cm).\r\nThe maximum adult weight reported is 3600 lbs (1633 kg).\r\nBelugas show sexual dimorphism, with males being approximately 25% larger than females.\r\nThe beluga whale has 30-40 homodont (of similar size and shape), conical teeth.\r\nTeeth are not replaced if lost.\r\nA calf’s teeth begin to come in between 1 and 2 years of age.\r\nThe teeth of Odontocetes contain growth rings, called “Growth Layer Groups” (GLG).'),
(3, 'https://nationalzoo.si.edu/sites/default/files/styles/1400x700_scale_and_crop/public/animals/californiasealion-001.jpg?itok=GE8b5iTA&timestamp=1520538731', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/truist-pier-225-2-1440x454.jpg', 3, 'California sea lions are social animals that communicate with various barks, growls, honks and clicks. Their sleek bodies, powerful flippers and excellent vision allow this species to hunt a variety of prey.', '6-8 feet (2-2.4 m)', 'Squid, anchovy, rockfish, whiting and mackerel', 'Eastern Pacific Ocean', 'Near-shore waters', 'The maximum length is 6.6 feet (2 m) for females and 7.8 feet (2.4 m) for males.\r\nCommon weight is about 220 lbs. (100 kg) for females and 770 lbs. (350 kg) for males.\r\nThe maximum weight for males is more than 850 lbs. (390 kg). The maximum weight for females is more than 240 lbs. (110 kg).\r\nThe average weight at birth is 13-20 lbs. (6-9 kg).\r\nThe average length at birth is 30 inches (75 cm).\r\nFlippers\r\n\r\nTwo long, powerful, wing-like front flippers with short claws and two smaller rear flippers.\r\nUses front flippers for propulsion and back flippers to steer while swimming.\r\nRotates all four flippers underneath the body to walk on land.\r\nFlippers are supported by a skeletal structure similar to the bones in a human hand.\r\nMay hold flippers out of the water to thermoregulate.\r\nBody/Fur/Whiskers\r\n\r\nStiff, thick whiskers, or “vibrissae,” made of keratin found around the muzzle. Help to feel the shape and size of objects and detect vibrations and sounds.\r\nFemale coloration is lighter brown while males are typically darker brown, though males range in color from light brown to black. The fur on the male’s head may become lighter with age and the coat appears darker when wet.\r\nMales develop a bony bump on their head known as a sagittal crest at approximately five years of age.\r\nPups are dark brown in color at birth, then shed juvenile fur and grow adult fur at 4-6 months of age.\r\nTwo layers of fur – outer guard hairs and an inner underfur.\r\nDoes not molt annually, but instead sheds and replaces fur all year long.\r\nBlubber helps keep sea lions warm.\r\nMale has a larger, thicker body shape than female.\r\n Vision/Eyes\r\n\r\nLarge eyes with excellent vision both in and out of the water and in low-light conditions.\r\nHearing/Ears\r\n\r\nMember of the family Otariidae, or “eared seals,” and therefore has small, external ear flaps, or “pinnae” (as opposed to a “true seal,” a member of family Phocidae, which has only small ear holes).\r\nCan hear above and below water.\r\nSmell\r\n\r\nA well-developed sense of smell on land, but cannot smell underwater.\r\nMales may use smell to detect a female ready to mate.\r\nMother and pup may use smell and vocalizations to identify one another.'),
(4, 'https://www.blue-world.org/bw/wp-content/uploads/2017/05/140929_92_1_0030.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/common-bottlenose-dolphin-2-1440x454.jpg', 4, 'Common bottlenose dolphins are well-known for their acrobatic stunts and social behavior. Dolphins have varied social structures, pods of 2 to 15 individuals are common for this species, but solitary coastal individuals have been seen all over the world. Dolphins have a wide range of vocalizations, including whistles, grunts, trills, squeaks and moans that they use to communicate in order to hunt efficiently, raise young and guard against predators.', '7-9 feet (2-2.7 m)', 'Fish, cephalopods, crustaceans, small rays or sharks', 'Tropical and temperate waters around the world', 'Bays, tidal creeks, inlets, marshes, rivers and along open ocean beaches', 'Color\r\n\r\nGenerally, slate gray to charcoal in color, including countershading (darker dorsally and lighter ventrally).\r\nThe sides of the body often have light brush markings.\r\nSize\r\n\r\nAverage weight and length of an adult ranges between 485 – 595 lbs. (220 – 270 kg) and 7-9 feet (2-2.7 m).\r\nLength and weight vary widely according to geographic region.\r\nBody size also typically varies inversely with the water temperature of its location (i.e., larger animals occur in colder regions).\r\nAverage weight and length of a calf is 22-44 lbs. (9.9-20 kg); 2.7-4.6 feet (0.8-1.4 m).\r\nThe maximum adult weight reported in the ocean:\r\n626 lbs. (284 kg) from the western North Atlantic\r\n1400 lbs. (635 kg) from the eastern North Atlantic.\r\nTeeth\r\n\r\nThe common bottlenose dolphin has 72 to 104 teeth.\r\nTeeth are not replaced if lost.\r\nSkin\r\n\r\nHighly specialized and contains tiny ridges that play an important role in reducing drag.\r\nThe outer layer of skin is shed approximately every two hours to increase swimming efficiency by maintaining a smooth body surface.\r\nThe skin is also an important sensory organ.\r\nThe epidermis (outer layer of skin) is approximately 15-20 times thicker than that of a human.\r\n'),
(5, 'https://i.natgeofe.com/n/5d39be8b-c79c-4781-89a6-4f4c7d447fd5/tiger-shark_thumb.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2020/09/tiger-shark-2-1440x454.jpg', 5, 'The tiger shark is named for its distinctive \"tiger-striped\" pattern.', '16 feet (4.9 m) and more than 1,400 pounds (635 kg)', 'Bony fishes, sharks, rays, marine mammals and reptiles, invertebrates and sea birds', 'Tropical and temperature ocean environments worldwide', 'Continental shelves or islands and coral reefs', 'Juveniles have tiger-like stripes, which give this species its name. Stripes fade as sharks grow into adulthood but are still visible.\r\nUnlike many shark species, the male tiger shark is larger than the female.\r\nMay grow longer than 16 feet (4.9 m) and weigh more than 1,400 pounds (635 kg).\r\nOne of the largest carnivores in the ocean.\r\nBroad, wedge-shaped head with blunt snout.\r\nColoration is dark gray to bluish or greenish-grey on the dorsal surface. The underside is stark white.'),
(6, 'https://www.liveaquaria.com/images/categories/large/lg89621AfricanButterfly.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/african-butterflyfish-1440x454.jpg', 6, 'The African butterflyfish is an insectivore and has sensors that detect small waves in the water caused by insects hitting the water\'s surface.', '2-4 inches (5-10 cm)', 'Terrestrial insects, aquatic larvae, crustaceans and fish', 'Africa', 'Upper surface of open water', 'The body is compressed with a large, upward-facing mouth with a prominent lower jaw and numerous teeth. Large, flat eyes sit high on the head.\r\nEye placement allows the African butterfly to see both above and below the water’s surface at the same time.\r\nEnlarged pectoral fins that extend outward. Ventral fins are thread-like and project down below the body while the caudal and anal fins are large and broad.\r\nColoration consists of brown, gray or olive, all with a silver sheen.\r\nOften have dark markings on their fins and underside.\r\nAverage size is 2-4 inches (5-10 cm). Maximum recorded length of 5.9 inches (15 cm).'),
(7, 'https://nationalzoo.si.edu/sites/default/files/styles/1400x700_scale_and_crop/public/animals/african-pancake-tortoise-001-20180131-6629jj.jpg?itok=kA8Yq5QF&timestamp=1562165662', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/african-pancake-tortoise-2.jpg', 7, 'The thin, flat and flexible shell of the African pancake tortoise allows it to swiftly flee danger and hide in rocky crevices and savanna scrub. Its yellow and brown coloration blends in with the vegetation and dry grasses that make up its diet.', '7 inches (17.8 cm)', 'Vegetation and dry grasses', 'Tanzania and Kenya', 'Crevices on rocky hillsides', 'Coloration is brown and yellow.\r\nShell is thin, flat and flexible.\r\nShell bones have many openings, which allow the tortoise to be lighter and more agile to escape predators.\r\nInstead of retreating into its shell, the African pancake tortoise will flee danger. Its flexible shell allows it to hide in narrow crevices.\r\nCarapace length to 7 inches (17.8 cm).'),
(8, 'https://www.tankfacts.com/photos/12/Fish/thumb_455x300/Arc_Eye_Hawkfish.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/arc-eye-hawkfish-2-1440x454.jpg', 8, 'The arc-eye hawkfish can often be spotted perching on rocky outcropping or coral – like a hawk in a tree!', '6-8 inches (15-20 cm)Shrimp, small fishes, and crustaceans', 'Shrimp, small fishes, and crustaceans', 'Indo-Pacific', 'Lagoons and seaward reefs', 'A small, grouper-like fish with a maximum length of about 8 inches (20 cm).\r\nDisplays a range of colors from olive to red, brown and even yellow; generally darker dorsally.\r\nHas a distinctive dark ring extending around and behind the eyes.'),
(9, 'https://www.niabizoo.com/wp-content/uploads/2018/08/Rep_BajaBlueRockLizard.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2021/05/baja-blue-rock-lizard-1440x454.jpg', 9, 'The Baja blue rock lizard is diurnal, meaning it\'s active during the day. They can often be seen basking in full sun, even on very hot days.', '7-10 inches (18-25 cm)', 'Leaves, fruit, flowers and insects', 'Mexico', 'Found in rocky, lightly vegetated areas', 'Common length of 7-10 inches (18-25 cm).\r\nA grayish-blue lizard with a speckled banding pattern across its back. Darker bars often mark the lizard from the neck to the upper back.\r\nThe face and tail are often a brighter blue than the rest of the body, and the head and neck can sport yellow, orange and red highlights.'),
(10, 'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTCw9BMTPvnnTWWgBV1lNvEmPFEQPogjVTFCrrnQHDcF0_8zMQJnjwZ1T0ob1gJmt98', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/whale-shark-3-1440x454.jpg', 10, 'The whale shark is the largest fish in the sea!', '18-32 feet (5.5-9.8 m)', 'Zooplankton', 'Tropical Atlantic, Pacific, and Indian Oceans', 'Typically found offshore', 'Size\r\n\r\nThe whale shark is the largest fish in the world and the largest fish known to have lived on this planet. Because of its size and cartilaginous skeleton, it does not fossilize well and in life it is very difficult to weigh accurately.\r\nThe largest accurately measured whale shark was 61.7 feet (18.8 m).\r\nThe average length is between 18 and 32 feet (5.5-9.8 m).\r\nNewborns measure 21 to 25 inches (53-64 cm) long.\r\nBody Composition\r\n\r\nWhale sharks have a broad, flat head, relatively small eyes, five large gill slits, two dorsal fins, two long pectoral fins, two pelvic fins, one anal fin and a large sweeping tail. It has a vestigial spiracle behind the eye, which is an evolutionary remnant of its common ancestry with bottom-dwelling (benthic) carpet sharks.\r\nUnlike most shark species, its mouth is located at the front of the head (terminal) instead of the underside of the rostrum (subterminal).\r\nThe whale shark has a huge mouth, which can reach up to 4 feet (1.2 m) across, located at the front of the head.\r\nInside the mouth are specialized flaps called velums. These stop the backflow of water as the whale shark closes its mouth, preventing the loss of food.\r\nThe skin of an adult whale shark can be as thick as 4 inches (10 cm) and has the consistency of strong rubber, which limits possible predators to killer whales, great white sharks, tiger sharks and humans.\r\nColor\r\n\r\nWhale sharks have a two-toned pattern of light spots on their dark gray back with a white underside.\r\nEach whale shark has its own individual spot pattern; like human fingerprints, no two are exactly alike.\r\nTeeth\r\n\r\nThe teeth of the whale shark are tiny and pointed backward; they are thought to have no function in feeding.\r\nThere are about 300 rows of tiny teeth along the inner surface of each jaw, just inside the mouth.'),
(11, 'https://www.oceanario.pt/content/img/820x560/naso_vlamingii_172653131_henner_damke.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/bignose-unicornfish-2-1440x454.jpg', 11, 'An adult bignose unicornfish has a long, curved snout.', 'Up to 21.5 inches (55 cm)', 'Zooplankton', 'Indo-Pacific', 'Deep lagoon and seaward reefs', 'Adults have a long, curved snout with tall anal and dorsal fins.\r\nHas vertical blue lines running along the side of the body.\r\nMaximum length of 21.5 inches (55 cm).'),
(12, 'https://www2.illinois.gov/dnr/education/WAImages/WAFBlackCrappie-EE.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/black-crappie-2-1440x454.jpg', 12, 'The black crappie does not tolerate murky waters well. It prefers a habitat with clear water.', '8 to 12 inches (20-30 cm)', 'Small fishes and larger invertebrates', 'North America', 'Lakes, rivers, ponds', 'A deep body that is strongly compressed laterally.\r\nDark green to black mottling throughout its body with a greenish back and silvery-green sides. Median fins are yellowish green with dusky, wavy lines and white spots.\r\nCommon length of 8-12 inches (20-30 cm); maximum length of 19 inches (48 cm).\r\nMaximum weight of 6 lbs (2.7 kg).'),
(13, 'https://www.adfg.alaska.gov/static/species/speciesinfo/blackrockfish/images/blackrockfish_adfg.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/10/black-rockfish-1440x454.jpg', 13, 'The black rockfish has quite the lifespan, living up to 50 years.', '25 inches (63.5 cm)', 'Smaller fish, benthic crustaceans and mollusks', 'Eastern Pacific', 'Near rocky reefs in shallow water', 'Black rockfish can reach a length of about 25 inches (63.5 cm) and weigh about 11 lbs. (5 kg). It is reported to live up to 50 years.\r\nThis species is dark grey to black with light grey mottling and lighter coloring ventrally.'),
(14, 'https://www.biolib.cz/IMG/GAL/433314.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/black-spot-piranha-2-1440x454.jpg', 14, 'These infamous “man-eaters” form large schools and can inflict serious bites, however, black spot piranha feed primarily on fish and insects, and are not dangerous to humans.', '11 inches (28 cm)', 'Fish, birds, benthic crustaceans, insects, aquatic vegetation', 'South America', 'Tropical freshwater areas', 'The upper body of the black spot piranha is silvery grey, while the lower body is red to red-orange, but varies among individuals. There is a black spot behind the operculum.\r\nPectoral and anal fins are orange to red and the dorsal fin is black.\r\nJuveniles have black spots on the upper body.\r\nThis piranha can reach 11 inches (28 cm) in length and about 1.2 lbs. (0.6 kg), with a maximum weight of 5 lbs. (2.3 kg).\r\nFemales are generally larger than males.'),
(15, 'http://4.bp.blogspot.com/_L3sNLmoKUl4/TA7_yx1QYoI/AAAAAAAAE6E/bCFyNLqToIY/s320/ml5977.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/batstar520.jpg', 15, 'Although it is most commonly reddish orange or mottled white, the bat star can be found in a variety of patterns and colors including brown, green, purple or pink!', '4-8 inches (10-20 cm)', 'Other sea stars, tunicate worms and algae', 'Along the U.S. Pacific coast', 'Intertidal zones', 'Most commonly reddish-orange or mottled white, but can be found in a variety of patterns and colors including brown, green, purple or pink.\r\nUsually has five, short, triangular arms, but can have from four to nine. The arms appear to have webbing between them and resemble a bat’s wing, hence the species’ common name. It is also called the “webbed star.”\r\nThis sea star typically has a radius of about 4 inches (10 cm) but can reach 6 to 8 inches (15-20 cm).'),
(16, 'https://www.tfhmagazine.com/-/media/Project/OneWeb/TFH/US/articles/the-fun-friendly-freshwater-amazon-puffer/amazon-pufferfish.jpg?h=355&iar=0&w=755&hash=4A44247B9F39F961E3A2729680837362', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/03/amazon-puffer-1440x454.jpg', 16, 'Also known as the South American puffer, the Amazon puffer is a small, colorful fish typically occurring in South America. Unlike most other freshwater puffers, the Amazon puffer does neither maintain a territory nor displays aggression toward other fishes.', 'Up to about 5 inches (13 cm)', 'Small invertebrates', 'South America', 'Tropical fresh and brackish waters', 'Coloration is yellow-green with black stripes along its body and a white ventral region.\r\nA distinct black spot appears at the base of its caudal fin.\r\nMay reach about 5 inches (13 cm) in total length.'),
(17, 'https://wildwelfare.org/wp-content/uploads/otter-365370_1920-980x380.jpg.webp', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/asian-small-clawed-otter-3-1440x454.jpg', 17, 'These small social otters usually live in extended family groups and can be seen sliding on mud banks and chasing each other through the mangrove swamps and freshwater wetlands of southern India, China and Southeast Asia. The least aquatic of the 13 otter species, Asian small-clawed otters forage along the shoreline and shallows during daylight hours.', '4 to 11 lbs (2-5 kg)', 'Mollusks, fish, frogs, and crustaceans', 'Southeast Asia and southern India', 'Freshwater wetlands and mangrove swamps', 'Size\r\n\r\nThe world’s smallest otter. It ranges in size from 4 to 11 lbs (2 – 5 kg), with a head and body length of 16 to 24 inches (41 – 61 cm) and a tail length of 10 to 12 inches (25 – 30 cm).\r\nFur/Whiskers\r\n\r\nPredominantly dark brown in color with a lighter patch on its throat. Fur is relatively short.\r\nWhiskers help it to detect changes in water current and pressure.\r\nSwimming/Diving\r\n\r\nThe body is also adapted for diving, in that its heart rate and oxygen consumption are reduced while submerged. The otter can also seal its nose and ear canals while underwater.\r\nThe body of the small-clawed otter is elongated so that it can easily move through the water.\r\nFeet are only webbed to the last joint and are tipped with short, blunt claws. This structure aids in swimming, and still allows considerable dexterity.\r\nThe tail is very thick and muscular at the base and is gradually tapered to a thin tip. Lateral motions of the tail help to propel the otter while diving.\r\nVision\r\n\r\nThe eyes adjust easily as the otter goes from land to water. In bright light, vision was found to be equal in air and water.'),
(18, 'https://reefbuilders.com/wp-content/blogs.dir/1/files/2020/06/Banggai-Cardinalfish-Personality.jpg', 'https://www.tfhmagazine.com/-/media/Project/OneWeb/TFH/US/articles/471_cardinal_sin_the_plight_of_the_banggai.jpg?h=355&iar=0&w=755&hash=CC77368A4FEB84EB9375300FDA3577FD', 18, 'The Banggai cardinalfish are mouth brooders and will hold eggs in their mouth until fry hatch and are ready to go out on their own.', 'Up to 3 inches (8 cm)', 'Copepods, marine worms, mollusks and fish larvae', 'Banggai Islands of eastern Indonesia', 'Shallow coral reefs and bays', 'Coloration is silver with three vertical black bands across the body. White dots are present between bands and on all fins except the front dorsal fin. These dots are unique to each individual fish.\r\nThe first dorsal fin is shorter and tasseled while the second dorsal, anal and caudal fins are all elongated.\r\nMaximum length of 3 inches (8 cm).'),
(19, 'https://s3-ap-southeast-1.amazonaws.com/bbfreesing/wp-content/uploads/2020/12/14210001/BlackTip_Reef_Shark.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/blacktip-reef-shark-2-1440x454.jpg', 19, 'Not to be confused with the blacktip shark, a larger species with similar fin coloration, the blacktip reef shark can be found in shallow inshore waters throughout the Indo-Pacific, including coral reefs, reef flats and near drop-offs.', '7 feet (2m)', 'Fish, crustaceans and mollusks', 'Indo-Pacific', 'Coral reefs, intertidal zone and near reef drop-offs', 'The blacktip reef shark reaches a maximum size of 7 feet (2m).\r\nA smaller shark with a rounded snout and distinct black-tipped fins.\r\nThe blacktip reef shark exhibits counter-shading, being gray to gray-brown on the upper body and white ventrally.\r\nAlso displays a conspicuous white band on its flanks, which extends back to the pelvic fins.'),
(20, 'https://www.tankfacts.com/photos/12/Fish/thumb_455x300/Big_Eye_Black_Bar_Soldierfish.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/09/blackbar-soldierfish-2-1440x454.jpg', 20, 'During the day, this species takes shelter within the reef, coming out at night to feed on plankton and small crustaceans. Its large eyes help take in more light in dark waters, making this species well-adapted for nocturnal feeding.', '8 inches (20 cm)', 'Plankton, small shrimp and other crustaceans', 'Western Atlantic', 'Shallow water crevices and holes in coral and rock reefs', 'Maximum length of 10 inches (25 cm) in length, but usually does not exceed about 8 inches (20 cm).\r\nThe blackbar soldierfish is recognizable by its often bright red coloration on the back and sides of its body, and a broad, black bar running from slightly behind the eye to the top edge of the pectoral fin on either side. Its fins are red with white markings.\r\nIts eyes are large which aids in finding prey at night.');

-- --------------------------------------------------------

--
-- Table structure for table `eventt`
--

CREATE TABLE `eventt` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `BEGIN_time` date NOT NULL,
  `END_time` date NOT NULL,
  `price_personal` int(11) NOT NULL CHECK (`price_personal` > 0),
  `price_family` int(11) NOT NULL,
  `description` text NOT NULL,
  `images` text NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `eventt`
--

INSERT INTO `eventt` (`id`, `name`, `BEGIN_time`, `END_time`, `price_personal`, `price_family`, `description`, `images`, `banner`) VALUES
(1, 'CHEERSPORT 2023', '2023-02-07', '2023-02-27', 27, 60, 'THREE CHEERS FOR FUN! Georgia Aquarium is excited to welcome all Cheersport attendees from near and far with a special discounted admission rate valid ANYTIME between February 15 – February 22.', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/01/cheersport-2019-3-250x175.png', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/GAQ-Feb2019-695-Jellyfish-0010-1440x454.jpg'),
(2, 'Career Day 2023', '2023-02-07', '2023-03-27', 27, 60, 'Georgia Aquarium’s Education department is otter-ly excited to announce the return of our Career Day, Thursday, March 2nd from 10am to 1pm.', 'https://www.georgiaaquarium.org/wp-content/uploads/2021/05/careers-3-250x175.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg'),
(3, 'Protected: IMATA/ABMA Conference', '2023-02-07', '2023-02-14', 27, 60, 'Georgia Aquarium site visit for IMATA/ABMA conference. We look forward to seeing everyone on-site!.', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/08/twilight-tickets-2-1440x454.jpg'),
(4, 'Georgia Aquarium 2023 5K', '2023-02-07', '2023-02-28', 27, 60, 'Georgia Aquarium’s 5K walk/run returns for its sixth year. Starting and finishing at one of the most recognizable landmarks in downtown Atlanta, this Peachtree Qualifier 3.1-mile course is a quick “out and back” run/jog/walk sponsored by Dermaglove returns for all ages..', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/12/georgia-aquarium-2023-5k-11-210x210.jpeg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/12/georgia-aquarium-2023-5k-1440x454.jpg'),
(5, '\r\nEDUCATIONAL\r\n\r\nTuesdays in the Field – Marine Mammal Madness', '2023-03-14', '2023-03-31', 27, 60, 'What do sea otters​, dolphins, and seals all have in common? They are all marine mammals. ​Marine mammals are animals that possess mammalian characteristics (produce milk, breathe through lungs, are warm-blooded and have hair) and live most or all of their lives in/near the ocean. They come in all shapes and sizes and have unique adaptations that allow them to thrive in diverse habitats. Join us in March for Tuesdays in the Field and get ready for some Marine Mammal Madness.', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/01/tuesdays-in-the-field-prehistoric-seas-210x210.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg'),
(6, 'Unwind by the Water – Sound Bath', '2023-03-21', '2023-03-29', 25, 65, 'Unwind and relax with a unique sound bath experience led by a healing practitioner and Reiki Master from SND Bath. This journey of sound incorporates angelic healing sounds which radiate from quartz crystal bowls tuned to your body’s energy system. The process works to move energetic blockages, reduce stress, and promote healing in the body.\r\n\r\nYou will hear native drums that mimic the cleansing and clearing sound of ocean waves and gentle tones from Koshi chimes tuned specifically to the four elements. You will see calming ocean views that include whale sharks, manta rays, and so much more.\r\n\r\nGet tickets now, space is limited! Tickets are $25 per person and include a 60-minute class and complimentary parking in Georgia Aquarium’s parking garage. Doors open at 6:00 pm; class begins at 6:30 pm.', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/05/unwind-by-the-water-sound-bath-10.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/05/unwind-by-the-water-sound-bath-8.jpg'),
(7, 'Sips Under the Sea ? St. Patrick’s Day', '2023-03-15', '2023-03-29', 27, 60, 'Get ready to shamrock & roll at our Sips Under the Sea: St. Patrick’s Day, exclusively for our 21+ guests. Wear your favorite green attire as you stroll through our galleries, grab a drink, and dance.\r\n\r\nSips Under the Sea is a unique, themed cocktail party exclusively for adults 21 and older. This after-hours event features popular cocktails, dining options, a live set DJ from AMP’D Entertainment and access to the Aquarium’s main galleries.', 'https://www.georgiaaquarium.org/wp-content/uploads/2023/02/680x680-Featured-500x500.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2023/01/sips-under-the-sea-f09f8d80-st-patricks-day.jpg'),
(8, 'Yoga by the Water', '2023-03-08', '2023-03-23', 20, 60, 'Break a sweat at the most unique and inspiring fitness studio Atlanta has to offer – Georgia Aquarium!\r\n\r\nYoga by the Water offers yoga classes led by Dancing Dogs Yoga instructors which are designed to challenge students of all experience levels. Sessions take place in our magnificent Oceans Ballroom, offering incredible views of manta rays and whale sharks while you challenge your mind and body. If your fitness goal is to become a happier and healthier version of yourself, this is the studio for you!\r\n\r\nTickets are $25 and include a 60-minute class and complimentary parking in Georgia Aquarium’s garage. Doors open at 6:00 pm; class begins at 6:30pm. All proceeds from Yoga by the Water benefit Georgia Aquarium’s research and conservation initiatives.', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/yoga-by-the-water-5-210x210.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/12/yoga-by-the-water-23-1440x454.jpg'),
(9, 'Breathe by the Water', '2023-03-08', '2023-03-27', 27, 60, 'Join us for a one-of-a-kind experience led by the certified breathwork facilitator from A Breath of Sage. This meditative art form uses a circular breathwork pattern to relieve stress and remove emotional blocks. Participants often experience a wave of relief and euphoria during and after the session. Enjoy this while taking in the ocean views that include whale sharks, manta rays, and so much more.\r\n\r\nGet tickets now, space is limited! Tickets are $25 per person and include a 60-minute class and complimentary parking in Georgia Aquarium’s parking garage. Doors open at 6:00 pm; class begins at 6:30 pm.', 'https://www.georgiaaquarium.org/wp-content/uploads/2023/01/breathe-by-the-water-3-210x210.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2023/01/breathe-by-the-water-1440x454.jpg'),
(10, 'Barre by the Water', '2023-03-15', '2023-03-30', 27, 60, 'Sweat it out this summer with an immersive workout experience. Barre by the Water is a full-body workout that transforms you physically and mentally. This musically driven group class focuses on low-impact, high-intensity movements that strengthen and tone your body.​\r\n\r\nThis class will be held in the Ocean Voyager exhibit which has up-close views of whale sharks, manta rays and our famous green sea turtle. Pure Barre instructors teach to all experience levels, so if you’re new to barre this is a great place to start.\r\n\r\nSupport from Pure Barre: Inman Park, Druid Hills, Westside, Brookhaven, Buckhead, Chastain and Vinings.\r\n\r\nHurry, space is limited! Tickets include a 60-minute class and complimentary parking. Doors open at 6:00pm; class begins at 6:30pm.\r\n\r\n', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/11/barre-by-the-water-6-210x210.jpg', 'https://www.georgiaaquarium.org/wp-content/uploads/2022/11/barre-by-the-water-8-1440x454.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`) VALUES
(1, 'African Penguins'),
(2, 'Beluga Whale'),
(3, 'California Sea Lion'),
(4, 'Common Bottlenose Dolphin'),
(5, 'Tiger Shark'),
(6, 'African Butterflyfish'),
(7, 'African Pancake Tortoise'),
(8, 'Arc-Eye Hawkfish'),
(9, 'Baja Blue Rock Lizard'),
(10, 'Whale Shark'),
(11, 'Bignose Unicornfish'),
(12, 'Black Crappie'),
(13, 'Black Rockfish'),
(14, 'Black Spot Piranha'),
(15, 'Bat Star'),
(16, 'Amazon Puffer'),
(17, 'Asian Small-clawed Otter'),
(18, 'Banggai Cardinalfish'),
(19, 'Blacktip Reef Shark'),
(20, 'Blackbar Soldierfish');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `conmment` text NOT NULL,
  `img_rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `event_id`, `name`, `conmment`, `img_rating`) VALUES
(1, 1, 'sara', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(2, 2, 'saxra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(3, 4, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(4, 2, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(5, 2, 'sasra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `single_post`
--

CREATE TABLE `single_post` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `img_content` text DEFAULT NULL,
  `img_bg` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `single_post`
--

INSERT INTO `single_post` (`id`, `description`, `title`, `img_content`, `img_bg`, `author`) VALUES
(1, 'Fish diseases can be notoriously hard to diagnose, but one of the more easily recognizable illnesses is an internal parasite called the camallanus red worm. There are multiple species of nematodes or roundworms that are part of the Camallanus genus that can infect aquarium fish. They feed by attaching to the intestinal walls and can often co-exist with their host for a long time. However, added stress factors like bad water quality or tank aggression may weaken the immune system, allowing the worms to cause serious damage and even mortality.In the early stages of the disease, the fish looks quite normal for a while. Then you may start to notice that juvenile fish are growing more slowly than usual, the adults may not be breeding as much, and you are gradually losing a few fish here and there over the course of months. Some hobbyists also reported a loss in appetite.\r\n\r\nThe telltale sign of this sickness is when you see one or more small, red worms coming out of the fish’s anal vent. It can look like a cluster of little, scarlet threads sticking out about ¼ to ½ inch (0.6–1.3 cm). At this point, the disease is at a very advanced stage where the fish may look abnormally thin (from the worms absorbing all the nutrients) or have a belly swollen with worms. Because the worms are blocking the intestines, secondary infections can take root and cause other symptoms to appear.\r\n\r\nCamallanus red worms are often more noticeable in small livebearers like guppies because it only takes a few worms to cause serious problems in a nano fish. The worms need a much longer time to multiply to a point where the population that is large enough to take down bigger fish like angelfish.If infected fish are introduced to your aquarium, the sick fish passes out the worm larvae in its waste, which are eaten by tiny crustaceans like cyclops. When a healthy fish eats the infected crustaceans, it becomes contaminated and the larvae mature in the fish’s body into adults that can reproduce, thus continuing the cycle. Some species of camallanus worms do not need an intermediate host, and fish can get infected directly by nibbling on fish feces that contain larvae. Either way, the disease is fairly contagious, so adding plants, gravel, or equipment from an infected tank to a healthy tank can cause cross contamination that also spreads the parasite.', 'How to Treat Camallanus Red Worms in Aquarium Fish', 'https://cdn.shopify.com/s/files/1/0311/3149/files/guppy_with_camallanus_worm.jpg?v=1668629851', 'https://cdn.shopify.com/s/files/1/0311/3149/articles/featured_image_-_dwarf_water_lettuce_with_baby_fish.jpg?v=1668626028&width=832', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` int(11) NOT NULL CHECK (`price` > 0),
  `time_vist` date NOT NULL,
  `phone_guest` varchar(20) NOT NULL,
  `name_guest` varchar(100) NOT NULL,
  `email_guest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `event_id`, `unit`, `price`, `time_vist`, `phone_guest`, `name_guest`, `email_guest`) VALUES
(1, 1, 2, 20, '0000-00-00', '03333666', 'alex', 'alex@gmail.com'),
(2, 1, 1, 50, '0000-00-00', '033313666', 'sara', 'sara@gmail.com'),
(3, 2, 4, 240, '0000-00-00', '033133666', 'willam', 'william@gmail.com'),
(4, 3, 15, 220, '0000-00-00', '0333366645', 'san', 'sanx@gmail.com'),
(5, 2, 20, 220, '0000-00-00', '033336667', 'son', 'son@gmail.com'),
(6, 3, 22, 205, '0000-00-00', '033336666', 'alexsanro', 'alexsanro@gmail.com'),
(7, 2, 21, 205, '0000-00-00', '033336566', 'gata', 'afax@gmail.com'),
(8, 2, 12, 204, '0000-00-00', '0333253666', 'asax', 'fa@gmail.com'),
(9, 3, 25, 204, '0000-00-00', '033233666', 'fami', 'alex@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Gallery_id` (`Gallery_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_animal` (`animal_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `eventt`
--
ALTER TABLE `eventt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_eventt` (`event_id`);

--
-- Indexes for table `single_post`
--
ALTER TABLE `single_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `eventt`
--
ALTER TABLE `eventt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `single_post`
--
ALTER TABLE `single_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Gallery_id`) REFERENCES `gallery` (`id`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
