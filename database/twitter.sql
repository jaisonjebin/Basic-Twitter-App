-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 26, 2019 at 10:55 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_13_121953_create_tweets_table', 1),
(4, '2017_07_13_125319_create_tweet_mentions_table', 1),
(5, '2017_07_13_130418_create_user_follows_table', 1),
(6, '2017_07_13_193652_CreateSocialAccountsTable', 1),
(7, '2017_07_16_083609_create_user_likes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
CREATE TABLE IF NOT EXISTS `social_accounts` (
  `user_id` int(11) NOT NULL,
  `social_network_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_network` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ownerUserId` int(10) UNSIGNED NOT NULL,
  `content` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likesCount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tweets_owneruserid_foreign` (`ownerUserId`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `ownerUserId`, `content`, `likesCount`, `created_at`, `updated_at`) VALUES
(1, 5, 'Bill,\' thought Alice,) \'Well, I can\'t show it you myself,\' the Mock Turtle went on eagerly. \'That\'s enough about lessons,\' the Gryphon.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(2, 4, 'March Hare. \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle recovered his voice, and, with tears again as she spoke.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(3, 5, 'Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I shall be punished for it was empty: she.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(4, 6, 'Dodo managed it.) First it marked out a history of the house till she got into it), and sometimes shorter, until she had nibbled some more.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(5, 2, 'Hatter, \'you wouldn\'t talk about her any more HERE.\' \'But then,\' thought Alice, \'and if it makes me grow larger, I can guess that,\' she.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(7, 6, 'Dodo said, \'EVERYBODY has won, and all sorts of things, and she, oh! she knows such a pleasant temper, and thought to herself as she.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(8, 10, 'Presently she began fancying the sort of life! I do hope it\'ll make me smaller, I suppose.\' So she set the little crocodile Improve his.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(9, 10, 'Dormouse into the air off all its feet at once, she found it advisable--\"\' \'Found WHAT?\' said the Mock Turtle went on again:-- \'You may.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(10, 9, 'There was a real nose; also its eyes by this very sudden change, but very glad to find herself still in existence; \'and now for the end of.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(11, 1, 'Duchess said to herself, \'Why, they\'re only a pack of cards: the Knave \'Turn them over!\' The Knave did so, very carefully, nibbling first.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(12, 10, 'Queen, stamping on the stairs. Alice knew it was only sobbing,\' she thought, and it sat for a few minutes she heard the Rabbit hastily.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(13, 3, 'Alice was beginning very angrily, but the tops of the party sat silent for a minute or two, which gave the Pigeon in a low, timid voice.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(14, 8, 'Dormouse,\' the Queen left off, quite out of sight, he said in a trembling voice, \'Let us get to the other: the only difficulty was, that.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(15, 3, 'The poor little feet, I wonder what they\'ll do well enough; and what does it matter to me whether you\'re a little of her childhood: and.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(16, 1, 'Gryphon went on. Her listeners were perfectly quiet till she was now the right size to do such a capital one for catching mice you can\'t.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(17, 10, 'CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Anything you like,\' said the Mouse, turning to Alice: he had taken.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(18, 6, 'Hatter. \'I deny it!\' said the Eaglet. \'I don\'t see how he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\'.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(19, 5, 'Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the bread-and-butter. Just at this corner--No, tie \'em together first--they.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(20, 10, 'Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall do nothing of the Gryphon, and the whole.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(21, 10, 'How the Owl had the dish as its share of the deepest contempt. \'I\'ve seen a cat without a cat! It\'s the most important piece of rudeness.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(22, 3, 'The Mouse did not quite know what \"it\" means well enough, when I was going on, as she left her, leaning her head on her lap as if it had.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(23, 10, 'He got behind him, and said \'What else had you to get rather sleepy, and went on: \'But why did they live at the stick, and tumbled head.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(24, 3, 'Alice. \'Come on, then!\' roared the Queen, and Alice, were in custody and under sentence of execution. Then the Queen to play croquet.\'.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(25, 8, 'I eat one of them at dinn--\' she checked herself hastily, and said \'What else have you executed, whether you\'re nervous or not.\' \'I\'m a.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(26, 4, 'Duchess, it had no very clear notion how long ago anything had happened.) So she began thinking over all she could not even room for her.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(27, 1, 'WOULD put their heads down! I am to see if she were saying lessons, and began to get in?\' asked Alice again, for she was looking at Alice.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(28, 2, 'Alice began to tremble. Alice looked all round the court and got behind Alice as he found it advisable--\"\' \'Found WHAT?\' said the King.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(29, 8, 'Caterpillar The Caterpillar and Alice looked all round her at the window, I only wish people knew that: then they both sat silent for a.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(30, 6, 'Alice replied very politely, \'for I can\'t get out of sight: \'but it doesn\'t matter much,\' thought Alice, \'and those twelve creatures,\'.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(31, 9, 'The Caterpillar and Alice was rather doubtful whether she could not help thinking there MUST be more to be rude, so she felt sure it would.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(32, 10, 'Alice, very loudly and decidedly, and the Hatter asked triumphantly. Alice did not like to have any pepper in that ridiculous fashion.\'.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(33, 8, 'There was a dead silence instantly, and neither of the players to be listening, so she set the little golden key in the long hall, and.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(34, 9, 'YET,\' she said to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, the Dormouse went on, \'you see, a dog growls when it\'s.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(35, 3, 'I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt so.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(36, 4, 'Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall do nothing of the legs of the baby?\' said.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(37, 1, 'ONE with such a pleasant temper, and thought it would be grand, certainly,\' said Alice, in a very grave voice, \'until all the time it.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(38, 1, 'And she began thinking over all she could remember them, all these strange Adventures of hers that you think I can remember feeling a.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(39, 8, 'Alice. \'Come on, then,\' said the Pigeon in a voice of the baby?\' said the King, the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'ve.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(40, 5, 'Alice; \'I daresay it\'s a very poor speaker,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(41, 1, 'Shakespeare, in the act of crawling away: besides all this, there was no use in knocking,\' said the Cat. \'Do you take me for a minute or.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(42, 8, 'IN the well,\' Alice said very politely, \'if I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to the porpoise.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(43, 1, 'Alice. \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing what she did, she picked her way into a cucumber-frame, or something.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(44, 10, 'I wonder what they said. The executioner\'s argument was, that she was considering in her head, and she tried the effect of lying down on.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(45, 4, 'Lory positively refused to tell its age, there was mouth enough for it flashed across her mind that she began again: \'Ou est ma chatte?\'.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(46, 6, 'I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was quite out of the others all joined in chorus, \'Yes.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(47, 1, 'White Rabbit as he fumbled over the jury-box with the end of the trial.\' \'Stupid things!\' Alice began in a low voice, to the Knave. The.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(48, 6, 'AND SHOES.\' the Gryphon interrupted in a low voice, \'Your Majesty must cross-examine the next witness.\' And he got up and rubbed its eyes.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(49, 8, 'She was a sound of many footsteps, and Alice could see it again, but it had VERY long claws and a crash of broken glass, from which she.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(50, 7, 'She said this last remark. \'Of course not,\' Alice cautiously replied: \'but I must be removed,\' said the King: \'leave out that she tipped.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(51, 10, 'Oh dear! I shall ever see you any more!\' And here Alice began telling them her adventures from the shock of being such a tiny little.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(52, 9, 'See how eagerly the lobsters and the other side of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\".', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(53, 2, 'Dormouse shook its head down, and nobody spoke for some minutes. The Caterpillar and Alice guessed who it was, and, as the game was in.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(54, 7, 'ARE OLD, FATHER WILLIAM,\' to the confused clamour of the house, and found herself at last turned sulky, and would only say, \'I am older.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(55, 5, 'Alice could see it written down: but I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(56, 5, 'Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the Gryphon: and Alice thought she might as well go back, and.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(57, 6, 'Canary called out in a ring, and begged the Mouse to Alice to herself. \'Shy, they seem to be\"--or if you\'d like it put the Lizard in head.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(58, 6, 'Queen was to eat her up in great disgust, and walked two and two, as the door that led into a large pigeon had flown into her eyes; and.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(59, 7, 'I\'d only been the whiting,\' said Alice, a little way out of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(60, 9, 'Alice panted as she fell past it. \'Well!\' thought Alice to find her in such a new pair of boots every Christmas.\' And she began again: \'Ou.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(61, 1, 'However, when they hit her; and when she caught it, and found herself at last the Dodo could not think of nothing else to do, and perhaps.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(62, 7, 'This of course, I meant,\' the King said, with a growl, And concluded the banquet--] \'What IS the same solemn tone, only changing the order.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(63, 5, 'How I wonder who will put on her lap as if she was talking. Alice could see it trying in a very small cake, on which the March Hare and.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(64, 9, 'Gryphon went on saying to herself \'Suppose it should be like then?\' And she kept tossing the baby at her as she spoke, but no result.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(65, 1, 'Queen! The Queen!\' and the roof of the jury had a little pattering of feet in a solemn tone, \'For the Duchess. \'Everything\'s got a moral.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(66, 6, 'Alice thought she might find another key on it, (\'which certainly was not otherwise than what you had been for some while in silence.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(67, 2, 'I only wish they WOULD put their heads down! I am in the night? Let me see: four times six is thirteen, and four times six is thirteen.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(68, 6, 'So they began solemnly dancing round and look up in a great hurry. \'You did!\' said the Caterpillar. Alice said nothing; she had this fit).', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(69, 4, 'The Knave shook his head off outside,\' the Queen in a pleased tone. \'Pray don\'t trouble yourself to say \"HOW DOTH THE LITTLE BUSY BEE,\".', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(70, 10, 'White Rabbit with pink eyes ran close by her. There was no use denying it. I suppose I ought to have him with them,\' the Mock Turtle.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(71, 4, 'Alice; \'it\'s laid for a minute or two the Caterpillar called after it; and while she was near enough to get her head on her toes when they.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(72, 5, 'When the Mouse to tell its age, there was a large pool all round her, about four inches deep and reaching half down the little door, so.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(73, 2, 'I could let you out, you know.\' He was looking at them with large round eyes, and half of anger, and tried to speak, but for a dunce? Go.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(74, 10, 'Shakespeare, in the air. This time Alice waited till the Pigeon in a languid, sleepy voice. \'Who are YOU?\' said the King, looking round.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(75, 2, 'Majesty,\' he began, \'for bringing these in: but I don\'t know the meaning of half those long words, and, what\'s more, I don\'t like it, yer.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(76, 7, 'Waiting in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a different person then.\' \'Explain all that,\' he said to herself, rather.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(77, 10, 'Alice looked round, eager to see it trying in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the roof.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(78, 6, 'And concluded the banquet--] \'What IS the use of a tree a few minutes it puffed away without speaking, but at any rate, there\'s no harm in.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(79, 3, 'Alice looked at each other for some time without interrupting it. \'They must go back by railway,\' she said to herself, \'if one only knew.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(80, 8, 'Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse heard this, it.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(81, 4, 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'I\'ve often.', 1, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(82, 6, 'Hatter: \'let\'s all move one place on.\' He moved on as he said to herself \'It\'s the first minute or two. \'They couldn\'t have done that?\'.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(83, 10, 'RABBIT\' engraved upon it. She went on for some time with one of them hit her in an offended tone. And the Gryphon remarked: \'because they.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(84, 9, 'Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned angrily away from her as hard as he.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(85, 3, 'Tortoise--\' \'Why did they draw?\' said Alice, a little pattering of feet on the shingle--will you come to the King, \'that saves a world of.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(86, 7, 'As she said to the little glass table. \'Now, I\'ll manage better this time,\' she said, as politely as she picked up a little bit, and said.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(87, 6, 'Rabbit coming to look at all what had become of it; then Alice dodged behind a great letter, nearly as large as the Caterpillar took the.', 10, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(88, 6, 'Alice: he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, \'and those twelve creatures,\' (she was.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(89, 9, 'Wonderland, though she knew that were of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King and.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(90, 3, 'Alice ventured to say. \'What is it?\' he said, turning to Alice: he had taken his watch out of THIS!\' (Sounds of more broken glass.) \'Now.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(91, 8, 'Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter shook his grey locks, \'I kept all my life, never!\' They.', 2, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(92, 6, 'THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Duchess: you\'d better leave off,\' said the Duchess: you\'d better ask.', 9, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(93, 7, 'After these came the royal children, and everybody laughed, \'Let the jury had a bone in his throat,\' said the Cat, \'if you only walk long.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(94, 4, 'Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, the Dormouse.', 3, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(95, 5, 'Alice! when she had not long to doubt, for the baby, the shriek of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried.', 4, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(96, 1, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had fits, my dear, and that he had come to the seaside once in the house, and have.', 8, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(97, 1, 'Gryphon is, look at the time he was in the pool of tears which she had to do it.\' (And, as you can--\' \'Swim after them!\' screamed the.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(98, 5, 'March Hare will be the right words,\' said poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in a.', 6, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(99, 9, 'Alice. One of the right-hand bit to try the whole head appeared, and then quietly marched off after the rest were quite dry again, the.', 7, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(100, 10, 'I or she should chance to be ashamed of yourself,\' said Alice, \'it\'s very easy to know your history, you know,\' Alice gently remarked.', 5, '2019-10-26 01:43:31', '2019-10-26 01:43:31'),
(101, 1, 'Sint laudantium la', NULL, '2019-10-26 01:44:45', '2019-10-26 01:44:45'),
(102, 1, 'ഹലോ വേള്‍ഡ്...!!!', NULL, '2019-10-26 01:45:10', '2019-10-26 01:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `tweet_mentions`
--

DROP TABLE IF EXISTS `tweet_mentions`;
CREATE TABLE IF NOT EXISTS `tweet_mentions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tweetId` int(10) UNSIGNED NOT NULL,
  `mentionedUserId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tweet_mentions_tweetid_foreign` (`tweetId`),
  KEY `tweet_mentions_mentioneduserid_foreign` (`mentionedUserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `followersCount` int(11) DEFAULT NULL,
  `followingCount` int(11) DEFAULT NULL,
  `tweetsCount` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `followersCount`, `followingCount`, `tweetsCount`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rynyvu', 'nojuruf', 'cifebeviq@mailinator.com', '$2y$10$RKqheb3P4fMyYOxr8qVofObrpi0V25ZfahuEPZKsEEFH.Fkjm6z0S', NULL, NULL, NULL, NULL, '2019-10-26 01:44:04', '2019-10-26 01:44:04'),
(2, 'zopehecy', 'cedawuh', 'momozeteg@mailinator.net', '$2y$10$T8jC.8mmilTG1juX/F.8ieHiqhhG3acztDMHvLmLPFLXITACHW5XC', NULL, NULL, NULL, NULL, '2019-10-26 02:03:44', '2019-10-26 02:03:44'),
(3, 'xabebej', 'byrikeroc', 'judilaf@mailinator.com', '$2y$10$AUCTffirWB0XR24ZYIb4RebSv/DpwM4AXHF7SbLetHS6otZ8fSMbe', NULL, NULL, NULL, NULL, '2019-10-26 04:51:11', '2019-10-26 04:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_follows`
--

DROP TABLE IF EXISTS `user_follows`;
CREATE TABLE IF NOT EXISTS `user_follows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `followerId` int(10) UNSIGNED NOT NULL,
  `followedId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_follows_followerid_foreign` (`followerId`),
  KEY `user_follows_followedid_foreign` (`followedId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_likes`
--

DROP TABLE IF EXISTS `user_likes`;
CREATE TABLE IF NOT EXISTS `user_likes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tweetId` int(10) UNSIGNED NOT NULL,
  `likerId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_likes_tweetid_foreign` (`tweetId`),
  KEY `user_likes_likerid_foreign` (`likerId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
