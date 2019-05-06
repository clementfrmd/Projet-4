-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 06 mai 2019 à 18:23
-- Version du serveur :  5.7.25
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `BLOG`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `dateArt` datetime NOT NULL,
  `statut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `dateArt`, `statut`) VALUES
(1, 'Article 1', 'Quand j’écrivis les pages suivantes, ou plutôt en écrivis le principal, je vivais seul, dans les bois, à un mille de tout voisinage, en une maison que j’avais bâtie moi-même, au bord de l’Étang de Walden, à Concord, Massachusetts, et ne devais ma vie qu’au travail de mes mains. J’habitai là deux ans et deux mois. À présent me voici pour une fois encore de passage dans le monde civilisé.\r\nJe n’imposerais pas de la sorte mes affaires à l’attention du lecteur si mon genre de vie n’avait été de la part de mes concitoyens l’objet d’enquêtes fort minutieuses, que d’aucuns diraient impertinentes, mais que loin de prendre pour telles, je juge, vu les circonstances, très naturelles et tout aussi pertinentes. Les uns ont demandé ce que j’avais à manger ; si je ne me sentais pas solitaire ; si je n’avais pas peur, etc., etc. D’autres se sont montrés curieux d’apprendre quelle part de mon revenu je consacrais aux œuvres charitables ; et certains, chargés de famille, combien d’enfants pauvres je soutenais. Je prierai donc ceux de mes lecteurs qui ne s’intéressent point à moi particulièrement, de me pardonner si j’entreprends de répondre dans ce livre à quelques-unes de ces questions.\r\nEn la plupart des livres il est fait omission du Je, ou première personne ; en celui-ci, le Je se verra retenu ; c’est, au regard de l’égotisme, tout ce qui fait la différence. Nous oublions ordinairement qu’en somme c’est toujours la première personne qui parle. Je ne m’étendrais pas tant sur moi-même s’il était quelqu’un d’autre que je connusse aussi bien. Malheureusement, je me vois réduit à ce thème par la pauvreté de mon savoir. Qui plus est, pour ma part, je revendique de tout écrivain, tôt ou tard, le récit simple et sincère de sa propre vie, et non pas simplement ce qu’il a entendu raconter de la vie des autres hommes ; tel récit que par exemple il enverrait aux siens d’un pays lointain ; car s’il a mené une vie sincère, ce doit selon moi avoir été en un pays lointain. Peut-être ces pages s’adressent-elles plus particulièrement aux étudiants pauvres. Quant au reste de mes lecteurs, ils en prendront telle part qui leur revient. J’espère que nul, en passant l’habit, n’en « fera craquer les coutures, car il se peut prouver d’un bon usage pour celui auquel il ira.\r\nCe que je voudrais bien dire, c’est quelque chose non point tant concernant les Chinois et les habitants des îles Sandwich que vous-même qui lisez ces pages, qui passez pour habiter la Nouvelle-Angleterre ; quelque chose sur votre condition, surtout votre condition apparente ou l’état de vos affaires en ce monde, en cette ville, quelle que soit cette condition, s’il est nécessaire qu’elle soit si fâcheuse, si l’on ne pourrait, oui ou non, l’améliorer. J’ai pas mal voyagé dans Concord : et partout, dans les boutiques, les bureaux, les champs, il m’a semblé que les habitants faisaient pénitence de mille étranges façons. Ce que j’ai entendu raconter des bramines assis exposés au feu de quatre foyers et regardant le soleil en face ; ou suspendus la tête en bas au-dessus des flammes ; ou regardant au ciel par-dessus l’épaule, « jusqu’à ce qu’il leur devienne impossible de reprendre leur position normale, alors qu’en raison de la torsion du cou il ne peut leur passer que des liquides dans l’estomac » ; ou habitant, enchaînés pour leur vie, au pied d’un arbre ; ou mesurant de leur« corps, à la façon des chenilles, l’étendue de vastes empires ; ou se tenant sur une jambe au sommet d’un pilier – ces formes elles-mêmes de pénitence consciente ne sont guère plus incroyables et plus étonnantes que les scènes auxquelles j’assiste chaque jour. Les douze travaux d’Hercule étaient vétille en comparaison de ceux que mes voisins ont entrepris ; car ils ne furent qu’au nombre de douze, et eurent une fin, alors que jamais je ne me suis aperçu que ces gens-ci aient égorgé ou capturé un monstre plus que mis fin à un travail quelconque. Ils n’ont pas d’ami Iolas pour brûler avec un fer rouge la tête de l’Hydre à la racine, et à peine est une tête écrasée qu’en voilà deux surgir. ', '2019-04-28 12:05:00', 1),
(2, 'Article 2', 'Je vois des jeunes gens, mes concitoyens, dont c’est le malheur d’avoir hérité de fermes, maisons, granges, bétail, et matériel agricole ; attendu qu’on acquiert ces choses plus facilement qu’on ne s’en débarrasse. Mieux eût valu pour eux naître en plein herbage et se trouver allaités par une louve, afin d’embrasser d’un œil plus clair le champ dans lequel ils étaient appelés à travailler. Qui donc les a faits serfs du sol ? Pourquoi leur faudrait-il manger leurs soixante acres, quand l’homme est condamné à ne manger que son picotin d’ordure ? Pourquoi, à peine ont-ils vu le jour, devraient-ils se mettre à creuser leurs tombes ? Ils ont à mener une vie d’homme, en poussant toutes ces choses devant eux, et avancent comme ils peuvent. Combien ai-je rencontré de pauvres âmes immortelles, bien près d’être écrasées et étouffées sous leur fardeau, qui se traînaient le long de la route de la vie en poussant devant elles une grange de soixante-quinze pieds sur quarante, leurs écuries d’Augias jamais nettoyées, et cent acres de terre, labour, prairie, herbage, et partie de bois ! Les sans-dot, qui luttent à l’abri de pareils héritages comme de leurs inutiles charges, trouvent bien la vie en poussant devant elles une grange de soixante-quinze pieds sur quarante, leurs écuries d’Augias jamais nettoyées, et cent acres de terre, labour, prairie, herbage, et partie de bois ! Les sans-dot, qui luttent à l’abri de pareils héritages comme de leurs inutiles charges, trouvent bien assez de travail à dompter et cultiver quelques pieds cubes de chair.\r\nMais les hommes se trompent. Le meilleur de l’homme ne tarde pas à passer dans le sol en qualité d’engrais. Suivant un apparent destin communément appelé nécessité, ils s’emploient, comme il est dit dans un vieux livre, à amasser des trésors que les vers et la rouille gâteront et que les larrons perceront et déroberont[1]. Vie d’insensé, ils s’en apercevront en arrivant au bout, sinon auparavant. On prétend que c’est en jetant des pierres par-dessus leur tête que Deucalion et Pyrrha créèrent les hommes :\r\nInde genus durum sumus, experiensque laborum\r\nEt documenta damus quâ simus origine nati.\r\nOu comme Raleigh le rime à sa manière sonore :\r\nFrom thence our kind hard-hearted is, enduring pain and care,\r\nApproving that our bodies of a stony nature are.\r\nTel est le fruit d’une aveugle obéissance à un oracle qui bafouille, jetant les pierres par-dessus leurs têtes derrière eux, et sans voir où elles tombaient. ', '2019-04-28 16:15:00', 1),
(3, 'Article 3', 'En général, les hommes, même en ce pays relativement libre, sont tout simplement, par suite d’ignorance et d’erreur, si bien pris par les soucis factices et les travaux inutilement rudes de la vie, que ses fruit plus beaux ne savent être cueillis par eux. Ils ont pour cela, à cause d’un labeur excessif, les doigts trop gourds et trop tremblants. Il faut bien le dire, l’homme laborieux n’a pas le loisir qui convient à une véritable intégrité de chaque jour ; il ne saurait suffire au maintien des plus nobles relations d’homme à homme ; son travail en subirait une dépréciation sur le marché. Il n’a le temps d’être rien autre qu’une machine. Comment saurait se bien rappeler son ignorance – chose que son développement réclame – celui qui a si souvent à employer son savoir ? Ce serait pour nous un devoir, parfois, de le nourrir et l’habiller gratuitement, et de le ranimer à l’aide de nos cordiaux, avant d’en juger. Les plus belles qualités de notre nature, comme la fleur sur les fruits, ne se conservent qu’à la faveur du plus délicat toucher. Encore n’usons-nous guère à l’égard de nous-mêmes plus qu’à l’égard les uns des autres de si tendre traitement.\r\nCertains d’entre vous, nous le savons tous, sont pauvres, trouvent la vie dure, ouvrent parfois, pour ainsi dire, la bouche pour respirer. Je ne doute pas que certains d’entre vous qui lisez ce livre sont incapables de payer tous les dîners qu’ils ont bel et bien mangés, ou les habits et les souliers qui ne tarderont pas à être usés, s’ils ne le sont déjà, et que c’est pour dissiper un temps emprunté ou volé que les voici arrivés à cette page, frustrant d’une heure leurs créanciers. Que basse et rampante, il faut bien le dire, la vie que mènent beaucoup d’entre vous, car l’expérience m’a aiguisé la vue ; toujours sur les limites, tâchant d’entrer dans une affaire et tâchant de sortir de dette, bourbier qui ne date pas d’hier, appelé par les Latins Æs alienum, airain d’autrui, attendu que certaines de leurs monnaies étaient d’airain ; encore que vivant et mourant et enterrés grâce à cet airain d’autrui ; toujours promettant de payer, promettant de payer demain, et mourant aujourd’hui, insolvables.', '2019-04-28 22:24:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `dateCom` datetime NOT NULL,
  `report` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(3, 'Forteroche', '$2y$10$yPuNfVvepgJXkL0JePnvCeceTGp9Hgvgkylzz9yu/LRzMkbAOGIVe');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comArticle` (`articleId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comArticle` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
