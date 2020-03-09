-- Tests

INSERT INTO `apoatest`.`tests` (`id`, `test_name`) VALUES ('1', 'Consent');
SELECT `id`, `test_name` FROM `apoatest`.`tests` WHERE  `id`=1;
INSERT INTO `apoatest`.`tests` (`id`, `test_name`) VALUES ('2', 'Maslach');
SELECT `id`, `test_name` FROM `apoatest`.`tests` WHERE  `id`=2;
INSERT INTO `apoatest`.`tests` (`id`, `test_name`) VALUES ('3', 'PIL');
SELECT `id`, `test_name` FROM `apoatest`.`tests` WHERE  `id`=3;
INSERT INTO `apoatest`.`tests` (`id`, `test_name`) VALUES ('4', 'ERI');
SELECT `id`, `test_name` FROM `apoatest`.`tests` WHERE  `id`=4;

-- Instructions

-- Maslach
INSERT INTO `apoatest`.`instructions` (`test_name`, `instruction`) VALUES ('2', 'Խնդրում ենք պատասխանել, թե որքան հաճախ եք ունենում հարցարանում նշված զգացումները։ Հարցերի շուրջ երկար մի՛ մտածեք, պատասխանեք առաջին տպավորությամբ առաջնորդվելով։');

-- PIL
INSERT INTO `apoatest`.`instructions` (`test_name`, `instruction`) VALUES ('3', 'Ձեզ կառաջարկվեն հակադիր պնդումների զույգեր։ Ձեր առաջադրանքն է ընտրել 2 պնդումներից Ձեր կարծիքին առավել համապատասխանը, և նշել 1, 2, 3 թվերից մեկը՝ կախված նրանից, թե որքան եք վստահ Ձեր ընտրության մեջ (կամ 0, եթե 2 պնդումն էլ Ձեզ համար հավասարապես ճիշտ են)։');

-- ERI
INSERT INTO `apoatest`.`instructions` (`test_name`, `instruction`) VALUES ('4', 'Ստորև նշված կետերը վերաբերում են Ձեր ներկայիս աշխատանքին։ Յուրաքանչյուր պնդման համար խնդրում ենք նշել արդյոք բացարձակապես համաձայն եք, համաձայն եք, համաձայն չեք կամ ընդհանրապես համաձայն չեք։');

-- Consent
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('1', 'Բարև Ձեզ: Մենք հրավիրում ենք Ձեզ մասնակցելու սույն հետազոտությանը, որի նպատակն է` ուսումնասիրել Հայասատանում ուռուցքաբանների շրջանում հուզական այրման տարածվածությունը և այն պայմանավորող գործոնները։ <br> Հետազոտությունը կտևի ոչ ավել քան 15 րոպե: Հետազոտության ընթացքում Ձեզ կտրվեն հարցարաններ: Խնդրում ենք հարցարանները լրացնել ինքնուրույն: Ձեր պատասխանները կընդհարացվեն մյուս մասնակիցների պատասխանների հետ, և ոչ մի անձնական տեղեկություն չի ներկայացվի հետազոտության զեկույցներում: <br> Ձեր անձի գաղտնիությունը լիովին երաշխավորվում է: Լրացված հարցաթերթիկները կարխիվացվեն և կպահվեն ապահով վայրում, իսկ վերջնական վերլուծությունից հետո` կոչնչացվեն: Ձեր մասնակցությունն այս հետազոտությանը կամավոր է: Ձեզ ոչինչ չի սպառնում, եթե Դուք հրաժարվեք մասնակցությունից: <br> Դուք կարող եք հրաժարվել պատասխանել ցանկացած հարցի կամ ցանկացած պահի ընդհատել Ձեր մասնակցությունը: Դուք չեք ստանալու որևէ ֆինանսական հատուցում կամ պարգևատրում հետազոտությանը մասնակցելու դեպքում: <br> Դուք ոչ մի ռիսկի չեք դիմում մասնակցելով այս հետազոտությանը: Ձեր անկեղծ պատասխանները կօգնեն այս հետազոտության իրականացնմանը, որը թույլ կտա ավելի լավ հասկանալ Հայասատանում ուռուցքաբանների շրջանում հուզական այրումը պայմանավորող գործոնները և մշակել կանխարգելման հնարավոր եղանակաները: Այս հետազոտության վերաբերյալ հարցեր ունենալու դեպքում կարող եք զանգահարել հետազոտության համակարգողին՝ Եվա Ասրիբաբայանին (+37493) 058794 հեռախոսահամարով: <br> Համաձա՞յն եք մասնակցել');

-- Questions

-- Maslach

INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Հուզական առումով ես ինձ սպառված եմ զգում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Աշխատանքային օրվա ավարտին ես ինձ քամված կիտրոնի պես եմ զգում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես ինձ հոգնած եմ զգում, երբ առավոտյան արթնանում եմ և պետք է գնամ աշխատանքի։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես լավ եմ հասկանում, թե ինչ են զգում իմ պացիենտները, և դա օգտագործում եմ ավելի արդյունավետ բուժում իրականացնելու համար։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես իմ պացիենտների (հիվանդների) հետ միայն պաշտոնական շփման մեջ եմ՝ առանց ավելորդ հույզերի, և փորձում եմ նրանց հետ շփման ժամանակը հասցնել նվազագույնի։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես ինձ էներգիայով և հույզերով լի եմ զգում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Հիվանդների և նրանց հարազատների հետ կոնֆլիկտային իրավիճակներում ես կարողանում եմ ճիշտ լուծումներ գտնել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես ինձ ճնշված և ապաթիկ եմ զգում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես կարողանում եմ դրական ազդեցություն թողնել հիվանդների (պացիենտների) ինքնազգացողության և տրամադրության վրա։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Վերջերս ես ավելի անզգա եմ դարձել պացիենտների նկատմամբ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Որպես կանոն, իմ շրջապատի մարդիկ ինձանից չափազանց շատ են պահանջում։ Նրանք ավելի շուտ հոգնեցնում են ինձ, քան ուրախացնում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես շատ պլաններ ունեմ ապագայի հետ կապված, ես հավատում եմ դրանց իրագործմանը։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Կյանքում ես ավելի ու ավելի շատ հիասթափություններ եմ ապրում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես անտարբերություն և հետաքրքրության կորուստ եմ զգում շատ բաների հանդեպ, որոնք ինձ նախկինում ուրախացնում էին։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Պատահում է, ես իրոք անտարբեր եմ լինում այն ամենի հանդեպ, ինչ կատարվում է որոշ իմ հիվանդների հետ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես ուզում եմ առանձնանալ և հանգստանալ ամեն ինչից և բոլորից։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Իմ գործընկերների և հիվանդների հետ շփման մեջ ես հեշտությամբ կարողանում եմ ստեղծել բարյացակամության և լավատեսության մթնոլորտ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես հեշտությամբ եմ շփվում իմ հիվանդների և նրանց հարազատների հետ ՝ իրենց սոցիալական դիրքից և բնավորությունից անկախ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես շատ բաներ եմ հասցնում անել օրվա ընթացքում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես ինձ զգում եմ հնարավորությունների սահմանագծին։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Ես իմ կյանքում դեռ շատ բաների կարող եմ հասնել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('2', 'Հիվանդները, որպես կանոն, անշնորհակալ մարդիկ են։');

-- PIL

INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Սովորաբար ես շատ եմ ձանձրանում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Սովորաբար ես էներգիայով լի եմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Կյանքը ինձ համար միշտ հուզառատ և հետաքրքիր է։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Կյանքը ինձ համար բացարձակապես հանգիստ է և միապաղաղ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Այս կյանքում ես չունեմ որոշակի նպատակներ և միտումներ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Այս կյանքում ես ունեմ հստակ նպատակներ և միտումներ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը ինձ թվում է չափազանց անիմաստ է և աննպատակ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը ինձ թվում է լիարժեք հիմնավորված է և նպատակաուղղված։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ամեն օրը ինձ թվում է նոր և մյուսներից տարբերվող։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ամեն օրը ինձ թվում է բացարձակապես նման մնացած բոլոր օրերին։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Թոշակի անցնելուց հետո, ես կզբաղվեմ այնպիսի հետաքրքիր գործերով, որոնց մասին միշտ երազել եմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Թոշակի անցնելուց հետո, ես կփորձեմ չծանրաբեռնել ինձ որևէ հոգսով։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը դասավորվել է այնպես, ինչպես երազել եմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը չի դասավորվել այնպես, ինչպես երազել եմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես հաջողությունների չեմ հասել իմ կյանքի ծրագրերի իրականացման մեջ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես իրագործել եմ այն ամենի մեծ մասը, ինչ կյանքում պլանավորել էի։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը դատարկ է և անհետաքրքիր։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը լի է հետաքրքիր գործերով։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Եթե անհրաժեշտ լիներ այսօր ամփոփել իմ կյանքը, ապա ես կասեի, որ այն ամբողջապես իմաստավորված է։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Եթե անհրաժեշտ լիներ այսօր ամփոփել իմ կյանքը, ապա ես կասեի, որ այն անիմաստ է անցել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Եթե ես ընտրության հնարավորություն ունենայի, ապա կկառուցեի իմ կյանքը ամբողջովին այլ կերպ');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Եթե ես ընտրության հնարավորություն ունենայի, ես իմ կյանքը նորից կապրեի այնպես, ինչպես հիմա։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Երբ ես նայում եմ ինձ շրջապատող աշխարհին, այն հաճախ է ինձ մոտ առաջացնում է շփոթվածություն և անհանգստություն ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Երբ ես նայում եմ ինձ շրջապատող աշխարհին, այն ինձ մոտ բացարձակապես չի առաջացնում շփոթվածություն կամ անհանգստություն։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես շատ պատրաստակամ մարդ եմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես բացարձակապես պատրաստակամ մարդ չեմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես կարծում եմ, որ յուրաքանչյուր մարդ հնարավորություն ունի իրականացնելու իր կենսական ընտրությունը ըստ իր ցանկության։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես կարծում եմ, որ մարդը զրկված է ընտրության հնարավորությունից՝ բնական կարողությունների և պարտականությունների ազդեցության պատճառով։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես միանշանակ կարող եմ ինձ նպատակասլաց մարդ կոչել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես չեմ կարող ինձ նպատակասլաց մարդ կոչել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես դեռ չեմ գտել կյանքում իմ կոչումն ու նպատակները։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես գտել եմ կյանքում իմ կոչումն ու նպատակները։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ աշխարհայացքը դեռ չի ձևավորվել։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես ունեմ որոշակի ձևավորված աշխարհայացք։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես կարծում եմ, որ ինձ հաջողվել է գտնել կյանքում իմ կոչումն ու հետաքրքիր նպատակները։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Ես հազիվ թե ընդունակ եմ գտնել իմ կոչումն ու հետաքրքիր նպատակները կյանքում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը իմ ձեռքերում է, ես ինքս եմ այն կառավարում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ կյանքը իմ ենթակայության տակ չէ և այն կառավարվում է արտաքին իրադարձություններով։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ առօրյա գործերը ինձ հաճույք և բավարարվածություն են պատճառում։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('3', 'Իմ առօրյա գործերը ինձ միայն տհաճություններ և անհանգստություններ են պատճառում։');

-- ERI

INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Աշխատանքային ծանրաբեռնվածության պատճառով ես անընդհատ ժամանակի սղություն ունեմ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Աշխատանքս կատարելիս շատ են պատահում ընդհատումներ և խանգարումներ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Վերջին մի քանի տարվա ընթացքում աշխատանքս դարձել է ավելի ու ավելի խստապահանջ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ վերադասից կամ այլ համարժեք անձից ես ստանում եմ այնն հարգանքը որին արժանի եմ');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատանքային առաջընթացի հեռանկարները քիչ են։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատանքային իրավիճակում տեղի ունեցել է կամ սպասվում է անցանկալի փոփոխություն։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատանքային անվտանգությունը խղճուկ է։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատավայրում ես ստանում եմ իմ բոլոր ջանքերին և ձեռքբերումներին համապատասխան հարգանք և համբավ։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատանքային առաջընթացի հեռանկարները համարժեք են իմ ջանքերին և ձեռքբերումներին:');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Իմ աշխատավարձը / եկամուտը համարժեք է իմ բոլոր ջանքերին և ձեռքբերումներին։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Ես հեշտությամբ եմ ճնշվում աշխատավայրում ժամանակի սղության պատճառով։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Առավատյան արթնանալուն պես՝ սկսում եմ մտածել աշխատանքային խնդիրների մասին։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Երբ գալիս եմ տուն, հեշտությամբ թուլանում եմ և «անջատվում» աշխատանքից։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Ինձ մտերիմ մարդիկ ասում են, որ ես չափից շատ բաներ եմ զոհաբերում աշխատանքիս համար։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Դժվարությամբ եմ կտրվում աշխատանքից, այն իմ մտքում է անգամ անկողնում պառկած։');
INSERT INTO `apoatest`.`questions` (`test_name`, `question`) VALUES ('4', 'Գիշերը չեմ կարողանա քնել, եթե այսօրվա անելիքներիցս ինչ-որ բան հետաձգեմ։');