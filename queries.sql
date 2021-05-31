SELECT COUNT(*) 
FROM book_2010;
 
 count 
-------
 55300
(1 row)


SELECT AVG(rating) AS AVG_Feynman
FROM review_2010
WHERE book_id IN 
(SELECT id
FROM book_2010
WHERE title LIKE '%Feynman%');

    avg_feynman     
--------------------
 3.7936507936507937
(1 row)


SELECT b.isbn, b.title
FROM book_2010 b, author_book_2010 ab
WHERE b.id=ab.book_id 
AND ab.author_id IN 
(SELECT id 
FROM author_2010
WHERE name LIKE 'Alan Moore');

    isbn    |                                                                               title                                                                               
------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 1845767721 | Batman: The Killing Joke
 1848563396 | Absolute V for Vendetta
 1840232021 | Saga Of The Swamp Thing
 8865431792 | La Lega degli Straordinari Gentlemen: Black Dossier
 8685489482 | V Kao Vendeta
 9515784875 | Helvetistä : osa 5 (Helvetistä #5)
 8467476044 | Batman: The killing Joke Edizione Assoluta
 0930289455 | Batman: The Killing Joke
 1401202853 | Tom Strong, Book 3
 1401228429 | Absolute Promethea, Book Two
 0930289234 | Watchmen
 9515784646 | Helvetistä : osa 4 (Helvetistä #4)
 160309329X | The League of Extraordinary Gentlemen (Volume III): Century
 1563897849 | Promethea: Book Two of the Groundbreaking New Series (Promethea, #2)
 193226504X | Heroes & Monsters: The Unofficial Companion to the League of Extraordinary Gentlemen (The Unofficial Companion to the League of Extraordinary Gentlemen, #1)
 140120306X | The League of Extraordinary Gentlemen: Black Dossier
 1401201180 | The League of Extraordinary Gentlemen, Vol. 2
 0971024952 | Supreme: The Story of the Year
 0861661834 | Nemo: Heart of Ice
 2840552515 | Watchmen: Les Gardiens, Édition Intégrale
 2840552639 | V Pour Vendetta, L'intégrale
 1592910076 | Another Suburban Romance
 1401205909 | The Ballad of Halo Jones
 1401211089 | Tom Strong, Book 6
 8865431121 | The League of Extraordinary Gentlemen: Century
 1878574450 | A Small Killing
 1401216676 | Batman: The Killing Joke
 3866076401 | Batman: The Killing Joke
 1592910386 | Hypothetical Lizard
 1401222668 | Watchmen
 1605490571 | Swampmen: Muck-Monsters of the Comics
 857351549X | Watchmen - Edição Definitiva
 1401248195 | Watchmen
 086166230X | Nemo: The Roses of Berlin
 1401205720 | Tom Strong, Book 4
 1401254934 | Top 10
 1607061511 | Spawn Origins Collection: Deluxe Edition Volume 1
 1870923006 | The Adventures Of Luther Arkwright, Book 2: Transfiguration (The Adventures Of Luther Arkwright, #2)
 1905437188 | The Complete Ballad Of Halo Jones (2000 Ad)
 1401226809 | Tom Strong: Deluxe Edition, Vol. 2 (Tom Strong Deluxe, #2)
 8446801914 | Batman: El regreso del Señor de la Noche (Batman: El regreso del Señor de la Noche, #1-4)
 156971732X | The Spirit: The New Adventures Archives
 1781085420 | The Complete Skizz (Skizz, #1-2)
 1603093974 | From Hell
 8583680604 | Promethea: Edição Definitiva - Volume 1
 1603090630 | The Bojeffries Saga
 8494218719 | Ángeles fósiles
 9518870039 | Halo Jones, osa #2
 3899219724 | Watchmen
 8484315762 | Batman: La broma asesina
 190426588X | The Complete Alan Moore Future Shocks
 1401223478 | Superman: Whatever Happened to the Man of Tomorrow?
 1592911315 | Alan Moore's Neonomicon
 1592911307 | Neonomicon
 1840232218 | The League Of Extraordinary Gentleman Vol. 1
 1401214460 | Green Arrow/Black Canary: For Better or for Worse
 0857682350 | Saga of the Swamp Thing, Book 4
 1401226221 | Tales of the Green Lantern Corps, Vol. 2
 8861233724 | Un disturbo del linguaggio
 8891226149 | Providence (Providence, #3)
 9524693623 | V niin kuin verikosto
 0234971649 | Batman: Killing Joke Deluxe Edition
 1891830740 | Lost Girls (Lost Girls, #1-3)
 1606996320 | Bread and Wine
 0878164065 | Lost Girls: Book One
 8073416905 | V jako Vendeta
 1852861355 | Skizz
 9522337129 | Kerrassaan merkillisten herrasmiesten liiga 1
 0446391905 | V For Vendetta
 1848562918 | Superman: Whatever Happened To The Man Of Tomorrow?
 8861235921 | La luce del tuo volto
 1435243625 | Promethea
 8416374198 | V de Vendetta
 8865430354 | Neonomicon
 1401207200 | Vertigo: First Taste
 1401201474 | Alan Moore's America's Best Comics
 8467462051 | Star Wars: Devilworlds
 0861662334 | Nemo: River of Ghosts
 1401233392 | DC Universe by Alan Moore
 1852860820 | Batman: Killing Joke
 1848561598 | Watchmen: The Official Film Companion
 0785154647 | Miracleman, Book Two: The Red King Syndrome
 8496370291 | Hellboy #2 Despierta al demonio
 1563896656 | The League of Extraordinary Gentlemen
 9515782597 | Helvetistä : osa 3 (Helvetistä #3)
 1563898047 | Swamp Thing, Vol. 5: Earth to Earth
 1563899752 | Swamp Thing, Vol. 6: Reunion
 1401205712 | Tom Strong, Book 4
 189986637X | The Worm: The Longest Comic Strip in the World
 2911033922 | La Ligue Des Gentlemen Extraordinaires Volume 1
 1781082197 | Ro-Busters: The Disaster Squad of Distinction
 1603090002 | The League of Extraordinary Gentlemen: Century 1910
 0861661605 | The League of Extraordinary Gentlemen: Century: 1910
 1932265104 | A Blazing World: The Unofficial Companion to the Second League of Extraordinary Gentlemen (The Unofficial Companion to the League of Extraordinary Gentlemen, #2)
 1401207510 | Absolute League of Extraordinary Gentlemen: The Black Dossier
 3936068291 | From Hell
 184856788X | Saga of the Swamp Thing, Book 3
 1592910157 | Alan Moore's the Courtyard
 1592910122 | Alan Moore's Writing for Comics
 1401209270 | DC Universe: The Stories of Alan Moore
 1401205739 | Top 10: The Forty-Niners
 140120290X | Smax
 280945583X | Providence Act 2
 8877590777 | V for Vendetta
 3866075057 | V wie Vendetta
 0861661419 | From Hell
 156389985X | Tomorrow Stories, Vol. 1
 1563898802 | Tom Strong, Book 2
 1563896648 | Tom Strong, Book 1
 1401206220 | Terra Obscura: Volume 2
 1401225365 | Tom Strong: Deluxe Edition, Vol. 1
 1563896540 | Tom Strong, Book 1
 140120029X | Tom Strong's Terrific Tales, Book 1
 9524690918 | Kerrassaan merkillisten herrasmiesten liiga
 1848563973 | Superman: Whatever Happened to the Man of Tomorrow?
 8415163681 | El amnios natal
 0907610889 | Swamp Thing: Volume 1: Book 1
 8877591919 | Futuri incredibili
 1592912915 | Providence ACT 1
 1401219861 | Green Lantern: In Brightest Day
 0594034205 | The League of Extraordinary Gentlemen
 1603092749 | Nemo: Heart of Ice
 0907610714 | Shocking Futures (Best of 2000 A.D.)
 1401238580 | V for Vendetta Deluxe Collector Set
 1401225446 | Saga of the Swamp Thing: Book Two
 8863461899 | Capitan Bretagna
 1401207928 | V for Vendetta
 8439502508 | From Hell: Quinta parte (From Hell, #5)
 1592912818 | Providence Act 1
 1840234555 | Swamp Thing, Vol. 5: Earth to Earth
 0785137602 | Captain Britain: Omnibus
 0907610633 | The Ballad Of Halo Jones, Book One
 9604972561 | V for Vendetta
 1603090061 | The League of Extraordinary Gentlemen: Century: 1969
 2756021059 | Spawn/WildC.A.T.S.
 8583681406 | V de Vingança
 1907992529 | The Complete Alan Moore Future Shocks
 849638912X | Superman (Clásicos del Cómic #4)
 1603090916 | Harvey Pekar's Cleveland
 8890307102 | Writing for Comics
 0861661710 | A Disease of Language
 1401219268 | Watchmen
 1563896575 | Top 10 Book 1
 0962486450 | The One
 1592910025 | Magic Words Volume 1
 1840233451 | The Complete D.R. & Quinch
 1846534593 | Captain Britain: End Game
 0446386898 | Watchmen
 1606993461 | Meat Cake
 1840233427 | The Complete Ballad of Halo Jones
 1401220827 | Saga of the Swamp Thing, Book 1
 1563897199 | Swamp Thing, Vol. 4: A Murder of Crows
 0930289544 | Swamp Thing, Vol. 2: Love and Death
 1941250122 | Brighter Than You Think: 10 Short Works by Alan Moore: With Critical Essays by Marc Sobel
 1592912923 | Providence Act 2
 8498148464 | Top 10
 8887006490 | Promethea vol. 1 (Promethea, #1)
 1401238254 | Absolute Top 10
 1401203078 | Black Dossier
 8467494182 | V de Vendetta
 1840235519 | Promethea, Vol. 3
 1401200311 | Promethea, Vol. 4
 1563899574 | Promethea, Vol. 2
 1401206204 | Promethea, Vol. 5
 1401247040 | Superman: A Celebration of 75 Years
 8200230080 | Providence #1
 086166180X | Lost Girls (Lost Girls, #1-3)
 1563896559 | Promethea: Book One (Promethea, #1)
 1887279539 | Spawn, Book 2: Dark Discoveries
 9524691922 | Kerrassaan merkillisten herrasmiesten liiga II
 2809404518 | Tom Strong présente Terra Obscura
 9515781825 | Helvetistä : osa 1 (Helvetistä #1)
 0785154620 | Miracleman, Book One: A Dream of Flying
 0930289226 | Swamp Thing, Vol. 1: Saga of the Swamp Thing
 1563896486 | Planetary, Vol. 1: All Over the World and Other Stories
 0861661621 | The League of Extraordinary Gentlemen: Century 1969
 1401220835 | Saga of the Swamp Thing: Book One
 178108453X | Monster
 9507823794 | Superman (Biblioteca Clarín de la Historieta, #12)
 0980020603 | Heartburst and Other Pleasures
 8877591846 | Lost Girls, Volume 1 (Lost Girls, #1)
 1582406812 | Spawn Collection, Vol. 3
 160309007X | The League of Extraordinary Gentlemen: Century 2009
 8446801590 | V de Vendetta Tomo 1 (V for Vendetta #1 de 2)
 1607061538 | Spawn Origins, Book 1
 068140969X | The Complete Frank Miller Batman
 8498473667 | Lost Girls, libro 2: El País de Nunca Jamás (Lost Girls, #2)
 1401202861 | Terra Obscura: Volume 1
 8877590335 | V for Vendetta
 1603093206 | Nemo: The Roses of Berlin
 1401207138 | Absolute Watchmen
 9049500943 | From Hell (Vanuit de hel deel, #3)
 2809436363 | Providence #1
 1607060728 | Spawn Origins, Volume 2
 1401227678 | Saga of the Swamp Thing: Book Three
 8439504322 | From Hell
 184023203X | Swamp Thing, Vol. 2: Love and Death
 8498474647 | Lost Girls, libro 3: Grande y terrible (Lost Girls, #3)
 184856466X | Saga of the Swamp Thing, Book 2
 9759050366 | V for Vendetta
 9792224394 | V for Vendetta
 0936211571 | From Hell
 8869260461 | Tempestosa (Elric #2)
 1401213790 | Wild Worlds
 1563896974 | Swamp Thing, Vol. 3: The Curse
 1592910092 | A Small Killing
 1893905241 | The Extraordinary Works of Alan Moore
 1906735883 | The Complete D.R. and Quinch
 1592912648 | Crossed +100 Volume 1 (Crossed +100, #1)
 1401223613 | V for Vendetta
 3957985714 | Providence (Providence, #1)
 1904265480 | The Complete D.R. and Quinch
 846749753X | La cosa del pantano de Alan Moore Nº 01 de 03 (Swamp Thing Nº 20-34, Annual nº 02 USA)
 1592912117 | Fashion Beast
 1853863203 | 2000 A.D. Yearbook 1994
 1560600802 | Miracleman, Book Three: Olympus
 1439556695 | V For Vendetta
 1592910637 | Light of Thy Countenance
 0951372602 | AARGH!
 8865431563 | La Lega degli Straordinari Gentlemen, Vol. I, 1898
 8073411725 | Z pekla
 0861660625 | Seven Deadly Sins
 1401206115 | The League of Extraordinary Gentlemen, Vol. II
 178276125X | Stormbringer (Michael Moorcock's Elric, #2)
 8439591586 | From Hell: Obra completa
 9895590601 | Hellboy: Despertar o demónio (Hellboy, #2)
 832376171X | Strażnicy
 0974056715 | The Spiral Cage
 1563895331 | Voodoo: Dancing in the Dark
 1401201172 | The League of Extraordinary Gentlemen (Vol. 2 )
 B000F4MJ9Q | V for Vendetta
 140123321X | The League of Extraordinary Gentlemen Omnibus
 1401270344 | Watchmen (Watchmen #1-12)
 1592910262 | Yuggoth Cultures and Other Growths
 1607064995 | Spawn Compendium, Volume 1
 1592912656 | Crossed + One Hundred (Crossed +100 #1)
 2809406405 | Watchmen
 0861662318 | The Bojeffries Saga
 9524695731 | Vartijat
 0913035610 | Miracleman, Book One: A Dream of Flying
 1560600365 | Miracleman, Book Two: The Red King Syndrome
 1401230962 | Saga of the Swamp Thing: Book Five
 1616551461 | Star Wars Omnibus: Wild Space, Vol. 1
 1563896591 | Mr. Majestic
 8573515473 | Batman: A Piada Mortal
 8865431679 | La Lega degli Straordinari Gentlemen, Vol. II
 1401240836 | The League of Extraordinary Gentlemen Omnibus
 1401240461 | Saga of the Swamp Thing: Book Four
 1890451029 | Bread and Wine
 1401223729 | Absolute Promethea, Book One
 9518954801 | Halo Jones, osa #1
 1401232981 | Saga of the Swamp Thing, Book 6
 8086321185 | Liga výjimečných
 8467439963 | The League of Extraordinary Gentlemen, Volumen II (La Liga de Hombres Extraordinarios, #2)
 140120094X | Promethea, Vol. 3
 1631405136 | The MAXX: Maxximized, Volume 5 (The Maxx: Maxximized, #5)
 1603093036 | From Hell Companion
 8498148316 | Tom Strong Volumen 1
 1401200877 | Across the Universe: The DC Universe Stories
 1401205798 | Skizz (Skizz, #1)
 1592910602 | Alan Moore The Courtyard
 1603090444 | Lost Girls
 1568620179 | From Hell, Vol. 2
 1401218571 | America's Best Comics Sampler
 0907610900 | Batman: The Dark Knight Returns
 0974166456 | Judgment Day
 1840233702 | Promethea: Book Two of the Groundbreaking New Series (Promethea, #2)
 1401225322 | Saga of the Swamp Thing: Book Two
 1840233028 | The League Of Extraordinary Gentlemen
 8877591900 | Lost Girls, Volume 3 (Lost Girls, #3)
 1848560060 | Watchmen. Alan Moore, Writer
 8467903473 | Hellboy Integral, Volumen 1 (Hellboy: Despierta al Demonio, Semilla de destrucción, El ataúd encadenado, La mano derecha del destino; Integral, #1)
 1401215459 | Alan Moore's Complete WildC.A.T.s
 0457780220 | Occupy Comics #1
 8866911496 | V for Vendetta
 8415480849 | From Hell
 1401230180 | Saga of the Swamp Thing: Book Four
 1845762274 | V for Vendetta
 1840231912 | Promethea: Book One (Promethea, #1)
 1401206255 | Tom Strong, Book 5
 1401242561 | Superman vs. Mongul
 8887006245 | La Lega degli Straordinari Gentlemen Vol. 1
 8484315487 | V de Vendetta (Colección Vertigo #215)
 1606902091 | Vampirella Masters Series Vol, 4: Visionaries
 156389582X | WildC.A.T.s: Homecoming
 1401200303 | Tom Strong's Terrific Tales - Book One
 1902197232 | The Haunter of the Dark and Other Grotesque Visions
 9170890099 | Watchmen
 1592910629 | Alan Moore's Light of thy Countenance
 1907992502 | Complete Alan Moore Future Shocks
 0907610722 | Twisted Times
 8467473266 | Absolute Watchmen
 0930289528 | V for Vendetta
 1840237759 | The Complete DR and Quinch
 0861661532 | A Disease Of Language
 184576093X | Tom Strong, Vol. 4
 1563895609 | WildC.A.T.s: Gang War
 1401201652 | Tomorrow Stories, Vol. 2
 0762433949 | The Mammoth Book of Best Crime Comics
 6059155014 | Batman: Öldüren Şaka
 0446391921 | Swamp Thing: Love and Death
 8496389855 | Capitán Britania de Alan Moore
 8817811416 | Watchmen
 3551744084 | Watchmen, Complete Edition
 1563899663 | Top 10, Vol. 2
 1845763513 | Albion
 1852862912 | V For Vendetta
 1401230954 | Saga of the Swamp Thing: Book Five
 1848561857 | Saga of the Swamp Thing, Book 1
 386607607X | Watchmen
 0861660544 | Outrageous Tales From The Old Testament
 1563896672 | Promethea, Vol. 1
 8467456736 | V for Vendetta
 1845761499 | Top Ten: 49'ers
 1401211097 | Tom Strong, Book 6
 8416475784 | Watchmen
 0958578346 | From Hell
 1852860243 | Watchmen
 1401238963 | Watchmen
 1563897571 | Top 10: The Forty-Niners
 8467420928 | V de Vendetta
 9788415990 | ¿Qué fue del Hombre del Mañana? y otras historias
 1401246923 | Saga of the Swamp Thing: Book Six
 0907610684 | The Ballad Of Halo Jones, Book Three (The Ballad Of Halo Jones, #3)
 0907610641 | The Ballad Of Halo Jones, Book Two
 2847890742 | Au nom du Diable (Hellboy #2)
 1592912931 | Providence Act 3 Limited Edition Hardcover
 1563896680 | Top 10, Vol. 1
 0971024960 | Supreme: The Return
 1891830457 | The Mirror of Love
 9518870209 | Halo Jones, osa  #3
 1563898586 | The League of Extraordinary Gentlemen, Vol. 1
 1401233406 | DC Universe by Alan Moore
 1845761685 | Absolute Watchmen
 0861662326 | The League of Extraordinary Gentlemen, Volume Three: Century (The League of Extraordinary Gentlemen, Vol. 3)
 140122766X | Saga of the Swamp Thing: Book Three
 8415925603 | Batman: La broma asesina
 0785108556 | Captain Britain
 1401245250 | Watchmen
 140120841X | V for Vendetta
 1906838445 | It's Dark in London
 1879450658 | The Bojeffries Saga
 0785154663 | Miracleman, Book Three: Olympus
 284055514X | From Hell: Une autopsie de Jack l'Éventreur
 1401206247 | Tom Strong, Vol. 5
 8416194602 | La cosa del pantano Libro 4
 8416303150 | La cosa del pantano. Libro seis
 8861231098 | Lo specchio dell'amore
 1563893150 | Superman: Whatever Happened to the Man of Tomorrow?
 1603093818 | The League of Extraordinary Gentlemen: Nemo
 8877590890 | From Hell: Dall'Inferno. Un melodramma in sedici parti
 8877591897 | Lost Girls, Volume 2 (Lost Girls, #2)
 8865432748 | La saga dei Bojeffries
 8817009288 | V per Vendetta
 086166163X | The League of Extraordinary Gentlemen: Century 2009
 1582405638 | Spawn Collection, Vol. 1
 9049500927 | From Hell (Vanuit de hel deel, #1)
 8498857236 | Neonomicon
(358 rows)


---Error!!, that s my try
/*BEGIN;
DELETE FROM orders_2010 WHERE user_id= '3a827f1395b5776dabb8778597a39be1';
INSERT INTO orders_2010
SELECT (user_id,user_addr) VALUES ('3a827f1395b5776dabb8778597a39be1', '0012 Matthew Point\nLake Stephen, SD 03850'); 
INSERT INTO order_books_2010 (book_id) VALUES(28159930) 
COMMIT;*/


