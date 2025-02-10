'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "b92ad145cd8517dfbb1b56edb6c9104a",
".git/config": "fb8d033787f48e398790953fe847bdb9",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "3cbd8b7047e687ab008f6438a11b955d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "89601b6de63756c6e342cd2b2370713f",
".git/logs/refs/heads/main": "9ffde4b09e44fa9b6a2e0a263a65483b",
".git/logs/refs/remotes/origin/main": "7647379c6f4590a5b3d22a3e88695a34",
".git/objects/02/c9f93a8e4cfcd7001116e1975e7793a726ca89": "6d21aefd3855ab4b610554773e6a442f",
".git/objects/03/8dc60f2995a6f34fe0d4926b1f872468c63f6f": "d5ce9e494cbf1d697f4a6a556ea00e2c",
".git/objects/03/ea8c71eadc8f83952077d0a34c0b586aaa32fa": "d107f8c5454cf4d719e4ef0150ab4b34",
".git/objects/07/5ef014e3890637e390ca97a698b13953d1616f": "1aaced6b1f431ec9d75b2b5e0f6a7002",
".git/objects/07/74c17c0fa7a7e87e24a6935830998d92b52c75": "cd62ee54b7ceea7b2a7804e69b1d9134",
".git/objects/09/5ad4e6b82f871dd76ba13e2a7a1ee62be0442d": "abb75374fde416ebdf53cc350f18480e",
".git/objects/09/d4a24cc08628f1b87f472d19d79e8e7b6706fc": "78fbafcb004c6d46ac6fd21b5010d11a",
".git/objects/0a/7c3361da2003a2c8aeede04fc6848765e5b42f": "5dc7b80b69c238e67638e38deab30f48",
".git/objects/0c/9f77bd962e0e652820dd0f8c23d24def1239e5": "bdb2a579a0cd25db80034be099cd6a46",
".git/objects/0d/85a4c48a2638a23fdfb74a830e6994eef5d62a": "13d9b24f77c106fb6588d90c7a6531d6",
".git/objects/12/6bd22a1d55573265d52aeeb871e03cc69c20fb": "e27078edbe4729beb797cfb682781453",
".git/objects/13/5a3bec248d98fb478c2b9106a05e96cd6f5fa9": "8d3da3f39cf46fb7aa945ea7c5c4ed35",
".git/objects/14/3917431d169d19539fd7f8a50c6a889334faf4": "e64e36cf433ae24d9eabd314337823d2",
".git/objects/14/d77a9c2f87c62ea2c37d158c4ef00e5347ec59": "04ece9a8dad293f1e5119178d6c50271",
".git/objects/16/5ce0ddf03a820a38f48cba9aa0c9df9b6e6b79": "71df17c95c3124eada62b59e7dabda78",
".git/objects/17/4480c61636326e64497bbdddfe204a9eedc102": "8e24c809979b6b166a9a0080a1742f84",
".git/objects/17/9f44e634c15ca00de11a350be1fcd02d8312dc": "ce8a7bfdcba572ba1374c46edce12d26",
".git/objects/17/a4de0aa37da6ae5ee7d0d9c14d2f59bf44dc72": "9ea3daed8e42ae1e70aef767c8fa1119",
".git/objects/18/40e01c58d82cb78c7d9be1a22d85639591bc5d": "1997eca01bcae9b26b691be75f65df3d",
".git/objects/1b/ccb3d07bfc77df8c08bacda9b2e97733ae08af": "eaedbcd714adee7aee97c3f0b7131f5d",
".git/objects/1b/fa639e390246c6fa55d705e60f1fea39181f83": "c83d3b64f4d3616b92d948a652e0a187",
".git/objects/1c/d98a6f298108f1c4ac0d6e3e3f48e923e72438": "7c3109ae117173c2c3c15948e9c33adb",
".git/objects/1c/f52677642eb14b004541dfc47a5ed77c7fe399": "e6d2b974f81462dc4952dcc579f78ef9",
".git/objects/1d/189a4e93c48c284f9f11d3359ec9771c96c3e7": "bb4f197ac1b588f58491b73ea5c5dee8",
".git/objects/1d/7dc079b3bf5aa9285e67722cb6bff6f050af06": "c47fe340fc72be693a7fe1cc2a2d5a61",
".git/objects/1e/0923e42eea9be7bf401235c18a56ed2ee411fd": "4a619718e4885e51ec208ec355b248af",
".git/objects/1f/5f48a5e5b3948bcc3fc805762902b62a115a3f": "9507bb4413ace604ee0db6147576abd4",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/20/67116ebace2e7cc7f0dc28a1e7035d938b3054": "d47b406b850ce1df0ae8a6dd89727768",
".git/objects/20/8180a10143a4c069cafa131ad60b89df7bcddd": "2b9f3f4ffba79325ebaa796d932bf12b",
".git/objects/20/cd590d3deb71b573a1bdc9558b6b0dff66456c": "ede7d731d22ddf1584784fd520d852fb",
".git/objects/21/4ba1b004d874802481d4c5b0431219326212f2": "5f67921c8a8ae6012f2def31b6e79f04",
".git/objects/22/b7a415594bb6b109ba0571dce994a4087d7a90": "f7e4dbdd1abea6677b7ab861baccb3b4",
".git/objects/22/e8f2643b0721ff22997fe04cb21ae88d55ff4e": "5dae35cb9f95d71d2863ea8c7df6b953",
".git/objects/22/feb4c88aa2d3a62b86080b67cb0a90fcf04ad5": "4610ed83fe2b5853d909eac40642c136",
".git/objects/23/f01214bb6ff9f32e6d312b3f85a68c370966b9": "f74c9b1650d82a061e380f3ec931031a",
".git/objects/24/164b5976c59a8656c23bc47a3c6368ead06805": "ade9fa611a5c574671e59a09bdadf52b",
".git/objects/24/8e95c2e1871c78381806e45edb297bf16f3d59": "67b2355458dc2c2a95e951f9490a7a48",
".git/objects/27/2459bcd42312fb40bb620173306d84f494b4c5": "55f59e2239f0655bd11ede23d099e3af",
".git/objects/2a/b022196b0fad3910d38ae050ab6814be931799": "effb58727f53792624b2dede6a94285d",
".git/objects/2b/11a599ac714bc356d3ca0f453afa3d5d5af20c": "bec4394ef47cf55e95e8729db442278d",
".git/objects/2b/66646167bdc8368d816f07cf7929edd50492ee": "ac7e4bebeb8738556034a019bfad8240",
".git/objects/2d/f1bf7f0207b48cdbde416021683d500ba08fa1": "5b98e7d9aeb5eb989b5fb53996de7d93",
".git/objects/2f/a0b9a31488909dc11f384d0d61e5d26c743e42": "4cc4d149eb4e260cac5be6249d6138ee",
".git/objects/33/6eb352836acc173ff314f90ba8cb3eb691faa8": "a99039138e0cef60869c905de7735c65",
".git/objects/33/861b581ebd82a5378da7ef21413358f6674ec0": "2e671a3c1a8b40bf20eea85f6ff969d3",
".git/objects/33/a45b545225602391a9027fa2b6b50084007c9c": "4a2d373efdf691f7046ae310c8889c19",
".git/objects/33/cce270c89fe6cd0f0ff1ecbf4e913116d5295e": "18246700aa340d824897f6714ccb65db",
".git/objects/34/6dbbea6bcb06ec37df5dec5c4b364d9fd4978e": "fc330277dcd553d4b0672df129ba204a",
".git/objects/34/8b42674d04ba0a9f6d134b1303ebcfcaa4163e": "cb115132a077bb9a66ff79524936a024",
".git/objects/34/bf9e383dfff6ce8e12cc411f3437cf984c2da5": "7a7631ffc15482df6121f950df436095",
".git/objects/36/3425ca86e53a6bced022bb815d3f512414866c": "8538381205a933a0982d0128dd435395",
".git/objects/36/e84908eeff824b10cc193cbf6928cfe620a468": "d8009695ea4ccec08c138b8f9fdedad7",
".git/objects/37/00761c19bd7cd81787e8e5a11b10f3ba81d400": "7d6220630f9ad9008ffa0a93278f0e70",
".git/objects/37/21b57196c252716acbf6e419675edc517b1da7": "769afaf81fc4148f89cbd6f4b0febd39",
".git/objects/38/130dae6bc6e4502432ffe6888c08d18574c385": "06c81e1e941a3fe74495944af07a9527",
".git/objects/3a/1de6c1b227b02ec1e42c16ec9080fdf2f296ed": "06979dbe88fbb7266370b80fcd2f472f",
".git/objects/3c/6ccc2cc8ef5329ffa56c163ca6a8c8d7d68673": "4a26548d8f3bdc31f3b79343fbe4075b",
".git/objects/3d/57ebeaa807c11ffbe306da622343d0492a0066": "37714bfbb37669c3242a706232773b88",
".git/objects/3d/7b3a728b918197261e30543c5501b0821c99ae": "cf4ed1b0238bb06bcfc33a2e064446c7",
".git/objects/3f/4246826353c94f0bb73628b0ce014c55600f54": "acbec3b08bf4c13b1e75073d8c7ed556",
".git/objects/40/0a3ba674fb45cb827a99e865c45f8ff6fec861": "6620a2e7c77a009db627efee05764ecc",
".git/objects/40/55861e1ceac96b14f777d48b949f25dfa9297e": "3794c5fbca8f5cd062caa49fc9d85c89",
".git/objects/40/871c318ffcb9d92c6ddb94c8464e9c3b10039c": "a45afdbc97fd332f4729b5d6f5554549",
".git/objects/41/18743ea8540705b23f2f3039141c2a40505a07": "846a02f6af59bd059f6d599d3dfb27aa",
".git/objects/41/9a4e503d59b475ae66148e682957d01e119ebb": "d9bd6371f0172337f4863bc70a146fb0",
".git/objects/43/1cb6c0007f9b28879e7d3513b101a61c813c38": "a5aa95f226dbcca106d7c1cb2537c89d",
".git/objects/44/cff59e95dd105d71714627862325574a1bca4c": "1753ee2005772990d5ddf29bf82ab827",
".git/objects/46/203996d3943540d81e516dc03e54ed112aec36": "92f0c5d2d370b0d8748fc85b4c9fb64c",
".git/objects/47/95541a6364c537c4dbb96f2445260d62aff500": "859f9dd4574ed1e6ab5b015c95e20894",
".git/objects/47/b8cc37775cfbaf144eff995f60035b755fcaee": "e8f2c0b4d8d73729e2dd96a2a204f757",
".git/objects/49/09c86c82a7d41ad24e56c77306f9fe63ffcb04": "50b60cdc1dd33d3ac620c0466f684a35",
".git/objects/4a/39079e580dc9be820cba2fae41238c49eaa798": "ada1a19fea32fbb6719120809b9eae60",
".git/objects/4e/f5284d44dbeb40daba09bb7dc9792c932ff0a2": "34544a27a4a04b0793325a28bb6cd1cc",
".git/objects/4f/2e5b959922535b96a51c8d19a209b6c30a0ad2": "bbe82e97bd50c1d13feca4ae4836baa6",
".git/objects/4f/bb936d702475ec62ceadcfe1a98979c109b069": "1e027a719090a7b3f361034bb45d936b",
".git/objects/50/1e1d860fa1743c2030ec2566ce150812496fdb": "e52a7b52736b2f843423f1afeb6da524",
".git/objects/50/944fae2890b8ebdddb984c2f84b98339a94684": "10f0653c2164fd863d783c0dd04ae251",
".git/objects/52/90e8e4f0aaefb4c92fb38e40cab957f0fd4588": "3f5f0d611d92e21e445e63e22e6df83c",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/53/f14ac64cef046756ea8fa66d50b94c7689e2d3": "dfe2edef2b8206f251fbf8dbd6791731",
".git/objects/55/650c1a5628badd03d93b525f19372dd016e8b4": "25304da4ca102ac3f41dbf4933997742",
".git/objects/55/bc17d809b537738874e350255894b838cc9135": "3cfba8edee49963aa53e60b3ff3767ca",
".git/objects/55/e128c97bf1e96e0719525e5e3608b6fac61f7e": "57bc09b88b95aa0b30693b14031eb935",
".git/objects/57/6f3378e532c6249a53a91df460fe0bbf5112f0": "5a230287b1ee6cf0914febebc8165340",
".git/objects/57/a9d2c3737c44bc9468ed60d31e0e2318a69677": "e44a0b522dbb661e8bc791a8e93746c3",
".git/objects/59/0e1fbe2ac41dc918ec27b8b9be3671c572fafd": "04a490851eb142278283a1137be73a9e",
".git/objects/59/62a92b6dbfe10031152c56f8d6e95ef6fefd9c": "0d7225ccf0016f64fb950dbcb3f0f645",
".git/objects/5a/7b05e1be311772247124911182fda78fde2cec": "d38bfbb93663df272dc4920186bd1040",
".git/objects/5b/1d7595446ff89181833d58ee8dba43e892d5af": "767aa5010419db6c888eef4ba9416516",
".git/objects/5d/8b6773cfc3d3b37c36314fd94e350e826db1f1": "e55bf337470d59ef3b6d128d6b673319",
".git/objects/5d/edc9032c992916a56b40311a0d3fc99daa201f": "b8d5c5766897eea53871975d4ef3dc34",
".git/objects/5f/25987e428bd8d03bd521f9a74e7347c03fa7a3": "8442a2e3f3416b770b2cf1500cf56592",
".git/objects/5f/dc637875ee91576899cdd845ba26fee2896662": "1fdead60e35cc682351812046d6a4d1d",
".git/objects/60/c35889e4206310419fc420aa0d2ac361a57512": "03a2777d2a16d423a4b4530dfcdcd66c",
".git/objects/62/809c6ee6600b8bb943c8c08d6b75d8b2102373": "a7059dfc501389ffaaf6d7f2c0340bab",
".git/objects/63/0e664c6f4e6f5ca94d9a320fb3533aa7b86471": "e43c9c164fb18b023a1fc7234871509c",
".git/objects/64/6f500562f3ef30494d2795faf06113070f5a1e": "de107af9e063cd69366c14cacb1b3b9a",
".git/objects/67/320b0402016c756f8948b8de28d63a87f9c923": "50ef278059b326201291c629b203368f",
".git/objects/67/52d4a18113fd7a9f34cea1a7326cdd26badf19": "0b85e139da3d30304394f6e49470ce16",
".git/objects/69/4ae195490d89b07aeb9f81303ab851ebf3ed2a": "06ca3a3ea68043e1b6c3e4d8541aca4a",
".git/objects/6a/39b5e1b354f0f46f41da9f66c71ab6babf3fdc": "a411116f0d12d784f0f9d9bc26902310",
".git/objects/6b/1485ccb0e3818acf6a652ec18a664f9ee43e9a": "6a4992a05b33a0826099fc1cb57f20f7",
".git/objects/6c/10027a158876f842cb8ebdb4aaf8a408f89376": "84e6884a53ebfa6581f5556460a3bdab",
".git/objects/6c/ec4087641739f46616b2da1aa75b63d6285c81": "f297d7419395733bb11154bbcac15888",
".git/objects/6d/f4d689fb40c76cb01286cc1b2f7e83ab5d8f6e": "65bf0955957cd1cc0b56cc92d9aeeb6e",
".git/objects/6f/9cad4c116bc8d72e2497226abb5c05ee64982c": "0d104480d68c1652a53721377a02a882",
".git/objects/70/91da92813368d0443adfd602447876ff3d328c": "acf1dcf169671b16fe50304802a5e7a0",
".git/objects/70/ffc5a94108b021ed1eb8a7a6c46e3ff4e25c1f": "f49ee293078b8139df32cefe4df1c8f8",
".git/objects/71/39b37a6851966d4421ea6d774b9d618cd7a120": "1d24dd9aae1b7fbe5f1f95928962973a",
".git/objects/71/7117947090611c3967f8681ab1ac0f79bca7fc": "ad4e74c0da46020e04043b5cf7f91098",
".git/objects/71/7809363ed19bdd7e1d78f6e421e40a96bc29e3": "9414a3044cb191cc3f57340f57c3dc93",
".git/objects/72/e05cfc87a835bd3de735f683b6a70bf56ec465": "053c7bb22be6c1691454f2d094137633",
".git/objects/74/f4faed82b0a502335d3018591688c6151dd71b": "a74dfcb7bfc569f7eb299255caeb26cc",
".git/objects/76/7330dc0a7ae745b3ce783bab8143fa7033be03": "0619f7d95c485d0198f34db6c6651cfb",
".git/objects/78/1c9f29e7cd2417ca4c63499f0013ee5ceddd5f": "40d19a3fbd73ab8ca2cfc7c97f39cc2f",
".git/objects/78/64a04e5d125206627787617000fa3305df5909": "a383130cc229116f7163b7d7dfe2616a",
".git/objects/79/0935ce3b4741a06a65518c883b63b73e69df74": "675596808e2c794e775a787c2d391e37",
".git/objects/79/8c9490aa204476b42620b03e5016864802c654": "88995418afca7470dbce862a314b33ae",
".git/objects/7a/34759fda65d08e609cdd381f5145ff24d68f7c": "5a8ff523e9f293a5daa50d562e7b65ae",
".git/objects/7e/cbd9f645dbd186bbde77ad886b087b88632e72": "95a8da9e85b5c262195b9cf8894506f7",
".git/objects/7f/8168823b2e761bfc215b4e573083e790eab9d7": "e3d064f5cd40159d0f5bc6cdb07956f8",
".git/objects/81/374692f900a94b3ba83ad0bb3837f72b34c5f4": "efc7feffe18849046864ecb98f1a7499",
".git/objects/81/64ccad6ecf6f5fe77ef2ba13f06b2b191ce48d": "00959fc04412af7abde17100c64535d3",
".git/objects/82/68110d44f00e3242f3d43bdcadf74069a136a9": "b535e3b2abfd29609f298f58214abb7a",
".git/objects/83/6c780ca7ec29b7c7d2505009d85e8b2f4c26b1": "e54572b22d3ec867696b108771e9d94f",
".git/objects/84/9bea7724ffa03ffdaf81fb7507176918509b0e": "42cef85901fc706bdf8c9ecd1aff33db",
".git/objects/84/d5b8aa9ffebfdc3bd0d240f435cf5aced4e97c": "e52266d270abfd208db72954320125f4",
".git/objects/85/527bebefb5288243d29bf41966d831359d2ec8": "f473ca1133b848390a90fb327f220525",
".git/objects/86/21dd6270f5eb5282b5cf3757fcd064535b382a": "237e9fb8de36cb30ae1737bcc870d189",
".git/objects/87/dc5d8ceabbd3227eab5f24ac01975dd2ed174d": "86deb45fd2f6d6375c93ed5a4ba4a43a",
".git/objects/87/f2c5e49a798c7f5af251626311d49b6a6a617f": "6c4689b3f76e79ad653fa75007b75763",
".git/objects/88/f54fa6a09d8c54396a3e6080cca94bdc91412a": "8c6898cc81744c354da7b9184c94a5ef",
".git/objects/89/3ff4019d7e2c4971d72f0a76aa2af3b495ffc3": "477bc7207d22ee43fe66afe608c7754e",
".git/objects/8a/058ef508751a91ea2ebfe0e4c99a3ba77c0996": "025cea70ec43c79cef94802fcd1eda6a",
".git/objects/8a/d58be05ac48cc31ef56130c6280e7539331047": "3b07e0c6f43a71623254f148146f961a",
".git/objects/8b/29442bae816f67bd2ccfe0c46bfeb0d70419c9": "560ae2f4e832208cc99e878a1433be4e",
".git/objects/8b/c3440fc8c80511e5997a03599360e9359dc92d": "1cd566c99e890b997ec3d99765a1e02c",
".git/objects/8b/d52d9e31f2e2af4dc29344a2653ba1e2feea3e": "3566624a0fabd29d3dd6588e35d56e96",
".git/objects/8c/f9bc3408fc42a32972b7748749eec240e10145": "b7948af1e4ad088b5bc8c584c99d62c5",
".git/objects/8d/443d5d56ac36091e9689cd5d1b1948d9124545": "eb1c5a32937a98bb8b8612d5fad02130",
".git/objects/91/768f3abc682e38d8761c63083327b2554614a5": "c175b7dae30c16e5d5835ff9b5203777",
".git/objects/92/0e0fc0a7190bda847c22a705e9751e8ff305dd": "47dd79476839b9c2f398e69b17520bbd",
".git/objects/92/23bb48676edf22691f8db21000491b78c30ce2": "713076f3628249880792f3c696aab2d3",
".git/objects/92/4be1bd2ebb96311b427463aa98cae27aa77188": "190b5f737ec4d491d1b0d7dc5e7ea00d",
".git/objects/92/6b5397379ce836f3c1f3dbdcc6dcf960e2dae0": "059b1e3641095302515a5ee5862d5c40",
".git/objects/92/788eed4a3b65922be0f8d6abe177ffaf976842": "ff2438048b5b17fb37d5224acf9f2e94",
".git/objects/93/cb117063cccce09d09d775e8db9cbee5912428": "4af1e1931cd799bbed9bce800ddc4623",
".git/objects/94/bfb1463ad8331bfd687bc751b8920b133da744": "fd2d8c0d844b234856b36b93f652048f",
".git/objects/96/cdddb2d530ade7ecc0399b55101359b4e1981f": "3710a33fbbd281f0310d9dd79a7ca5d0",
".git/objects/9c/2b3bf1f9e1eee278c45f4db16649afdb3010e3": "946d772b595c24270276d8cd586e184a",
".git/objects/9c/72f0967221c414af9a5610dfbbe766c8004e59": "83c07b28f8addcd82a9a5b109ff7c4cc",
".git/objects/9c/f17d6748e0a1b6818ca6a8b9cd73f4050e97fb": "730e41bbdd4acb9cec2ffe6a40104e97",
".git/objects/9d/6f3d8c4eccc6a494c8178ada4e4e173382cbe6": "7f2a35048f7f5dbb2dd6cab8961996c3",
".git/objects/9d/b166872bbf48db1fec659637c16354b1bca624": "cafe15eac2dbef9dd8ee671e1541c488",
".git/objects/9e/7f3a22b469042d2d659e5ba9c12720d8c5bf02": "4d002ff9ddc00215da322380a23175b1",
".git/objects/a1/0724cc610c2312eb3adbf776ecebcf5200bc82": "7ce243f3b69cf1eb6aa6d7d339b3264e",
".git/objects/a1/da558b122154d81458fa3d0b909e8b1e892717": "b3f30a38c927e4cc2e72d356f9f9c768",
".git/objects/a4/e8c22c3ef17219f5aa5be84954ab75ccc2e0bd": "ebea49dba7d32965357924ebec9b5b60",
".git/objects/a7/0d404bb91322ecdf3d8f53cb2fc48c893a8de1": "2aa71ac209ef1e995d427bac9ee4d771",
".git/objects/a8/29539912a1ae8291ff51a1d8c6ab5c5b5bb10a": "ed1c4b63204a1adf3453b14c5ed8b06e",
".git/objects/ab/f5f0bb1074dc17b9205b8bb9edb44380a44540": "6646023a860f89c7a66b9ebf7c1814f0",
".git/objects/ac/ef040a167986e2342032c85493793ba0f912f6": "5f07b0696aac45cb9a2e824185e46427",
".git/objects/ad/66817b7cd83d783e205d080b0f7cb01d9cacd8": "e6de1ccd2589ed33f8440a4110e8f964",
".git/objects/ad/7c0953657a828c33882cc5d1991cd8a8333128": "1d6c15865dfbd4566573ac94c3b35bb8",
".git/objects/af/742adee0a85dd21ea96cbd84182e30e085d6cf": "aa25b932ec40efacb1efe27e7cf25d82",
".git/objects/af/982ca8e0891350c392cd274733b7d3263152f2": "fe9d395248d72f68aa780796b5e22660",
".git/objects/b2/d5a5a8d36756a7f5911c8db9dcfaa6e8de0e41": "ee93ebe4c68186090e23d9d7da9f4e5f",
".git/objects/b3/dffe5e7b82f7faf81f85e36d1d90bd13f0e827": "b6fbc0e5ba301b969d5370d212ea184b",
".git/objects/b5/0254288cc6319d153c4af1d64870d95ee2436f": "468a6506934a07c970a4739eae75eedd",
".git/objects/b5/4970e24ce428c97575e1559616d2a06d773814": "a376391f1fb353edea9a056df7ef07ad",
".git/objects/b6/0ae3a979e2d42dd9152f8cb6d0901e11c22bed": "4fb0045473b63ddb3dbbd603120f50de",
".git/objects/b6/70865ee5e2deebfc0611c753c52bd76e0c6461": "ee502339b211c164712544dde248afc9",
".git/objects/b8/5f55a0549f92ffeacbbe9bb926c66998c07917": "e9b45ca4727bd6542800cdfae10fad05",
".git/objects/b8/b18410d26b02eae5a222b07674de44d59528a3": "a86c4bbd333267b4b93dcd17a827f969",
".git/objects/b9/4d47f3af31505f3cfcba533da52b881b6a1b33": "ab777130815383dc41d27318b6ffbe0e",
".git/objects/ba/287f1593dfa33d0a75208460de503c226c0da5": "74b8b6ab98c2ec5728f9d5e7d86f3032",
".git/objects/ba/50c828254e73c225377b30de8f6be700a35916": "87328c8715b1cdbdf29836385def957b",
".git/objects/bb/d9fe28332951a2e7c32f4b3fd856b9a7d33e73": "2430f1ecd4f9b90cae3ee7a93d8345d4",
".git/objects/be/06e7fdca57d8fc360647d7b7a6a0c7b2da7e26": "bae1db93c8ff34b5d96b8a5eaf24771a",
".git/objects/be/bdc3ddfcec59d2783eb0d150e68a0cd81539f7": "072c1559f9809dd76b906bb966e3b7a2",
".git/objects/be/fa1caf35e2593ef36d028cf49dc076c824adfb": "7702b2b27e1d232a25458555809b4a61",
".git/objects/c0/d44a7cd7a69d948c8cfb3fc900a9971464892d": "ce9378939bdd551410962d1b1e4bb06d",
".git/objects/c3/2735ba438c3c189273ce10e51af33dc8708240": "ad6d5cedebe2e85a5a73e539367c5cc4",
".git/objects/c5/f4bc2a4da91586f3005813077f0d0aa9040f82": "3191028b787554cee4652f5050144bff",
".git/objects/c6/7c46fd62d5592392a8f8d40d3ea501c4ae28a9": "b28315fb26db137c1803dc689a59c460",
".git/objects/c6/85cc701f99d7f66f6fd53c81fe198228490367": "77860517c108ab5304ab9e470fd00f90",
".git/objects/c7/649920f3c3c9596177ee05e06b61eec847bde4": "45b92d985432b63ec1d430df380eae1f",
".git/objects/c8/c34e8466db2b6cc1363ca73612707ce284bce7": "aeaa30d6858ced0a6a2e44a0fb794ad6",
".git/objects/c9/fffc92840206ff157a9a1211497dbbe0df1920": "7b49077d4e23bea6fb5bfc1f53783162",
".git/objects/cb/e2ee35a2b49fc777e1d9c60057d15899dd57bc": "e7815089e128f01542779187cf96650c",
".git/objects/cc/76003aad294a13d856ef681748a198b906c57b": "4c0fbb6dee9c9ba1c0f17930b258f111",
".git/objects/cd/eca3ae4fad31dacebccaed5a2839e94c6f39dc": "d83778e1b2ea19e3ef9213b6434b39cb",
".git/objects/cf/b0e4cc433952556d9c5d9374115fd843a0661e": "7c9f29cf8007eeaa983c951b1652dc0a",
".git/objects/d1/2ab5470f4767604c151f99e0b829164b4aeb05": "b6c48a913ad404575dd42f9c6a4b6389",
".git/objects/d1/62cdad3459f669c18f9bca163fce8e20f22d72": "a9f0645e85a4ec5d38cf8c9d3ec4a619",
".git/objects/d1/b7102d9d81c7eebef724613a3f0f8063b4afe3": "96ddc5a647af265e3c4255580f13403b",
".git/objects/d1/ee0932b6ca568616f2945f5fff26a568b14cc8": "da1b4fe5e02404842223558e047804d0",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/872d21810434d2dfadfdafeb86203047b0fb0e": "04f36eb43d761e29171cb0d3072757e8",
".git/objects/d5/b343fd8df65730f9c7ba0ad3e3c9e44606cdc9": "2df10931ff03d1180441c5d2a1b55b97",
".git/objects/d5/beef05defe287a0027548fbb38e44517fd86de": "3771ed2f33d2fc8f6b9ed638fcb1d81d",
".git/objects/d5/ef843a668d605748c3cc6255417a8d95479766": "cbcb334ddc9a352ada489c187c0a8790",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/da/132d63c9f769559be35ac428272f61445d55e7": "09b22b253ee8a865a6476c0fa15122eb",
".git/objects/da/bf7c242e938c49fccd0cba88dc2fdccb2f65ee": "bbf7d12e4139b11a89628b8be2fcfda5",
".git/objects/db/d23409d3b0df0ef50c2cccbb32dadcc8a9304d": "7bba7f28c9134f225d3d1672d42863d1",
".git/objects/e0/4de294698c835e97e1bed23d5ed0b7510e947d": "efd84b15f9b8346c1768010a879bb3f6",
".git/objects/e1/e1dfb49ce4cea21788582e33dfa1b9e5503fbb": "cdbf3007a6fd1830ea95a25bd98e8783",
".git/objects/e2/ea63f177cf471a3a0e6ca3a0bded3cda95538d": "096f6cabcdebdcb55edba3650c7c6302",
".git/objects/e4/0f93bd1d782a6d81dcadeef6669f848925a807": "eb1672e88c52c1b763caf3c8d26d4589",
".git/objects/e4/216b0080850768dcdfe4dd9f424050c0915b11": "deba32adeccb1e3dfefff486868359f9",
".git/objects/e6/25413b5798ece0fedb596cf89408f4e0b5f9ba": "2bcbe4f421eb906b737a2c1bb919a1a1",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e7/746e4b7eda5e72f4f9b654c3e37213b4da88e2": "3d80c363be00d96ff593a2c71ea784a5",
".git/objects/e7/984b5fee4cfa167cba48de327fb6b797406cd7": "bf9468d15456567b218c9fde1206a9c4",
".git/objects/e7/b7497783368cb2118503899cf4448582bd2af5": "84c004c4b67caff3f393635147186fe6",
".git/objects/e7/c3d4d018dcda1d9db8f16bcb6a52dafc3b1a58": "9bcb2028bfc748554504406f9d224bbd",
".git/objects/e8/2c5850db3a3482d0c954a4dc122c02de555ce7": "d357cd906b3805bf81477f5527cca086",
".git/objects/e8/a59023ee0c985a2671a3d600933f009a1edcc7": "a3a7a8db3dbdfdfc74de3cab1165d2a0",
".git/objects/e8/ca24a641289684be3b7f1b15b9e4a0bc9c0b38": "d45c25dcc7fd65c153224a84bdc4a6c6",
".git/objects/e9/0e87ed69a7ebb8d965ec248fb86286423f103f": "4abcf8c77330fc7fd658318fc2374d78",
".git/objects/ea/00904cdc4fa949677a898b1063a840f8dd6e16": "b7f8df6095b8ea795392074f028363f5",
".git/objects/ec/977e14f6fdd4a55d3da3af5e4405e2908e7683": "07216a95e6d768ca777d62980ad52bf2",
".git/objects/ec/c299f2e309b55969e04e60e655ad26dc94a80f": "dd09381ffb9e7f6a5a2b88ceb4bf3fa3",
".git/objects/ed/3647d1760d4531e894a01a3250dfb90a6d2265": "0a0b133eb21ea11b9f109b853e1c5907",
".git/objects/ed/bd857c9b48f6f2d97215a829688067ea667bc7": "0a41a90a287f79a4467ff22e6cd5743e",
".git/objects/ee/29e22d4e08bf25911fd633d2e3bd43707f26cd": "a980d305688e8452ce2f540ace8e0614",
".git/objects/ee/a4983eb16151cce709ad5ccfd3db0d9b942755": "59d1b8f83bb865c2f0eb041c0129cb23",
".git/objects/ee/c5de2a1c97c6bbb222dc9f3d8d8877efa6d084": "bf473316a24c8af97f065f87c8c122ee",
".git/objects/ee/faa3919ee7a6bf6a9048b119222251129c68c9": "25b2917244c58a6db90d54b94a8a0d59",
".git/objects/ef/3fb21419ac9ba202a37445ea193714a6e96a2a": "b949e7da84e2983097de0cdfd9b65d18",
".git/objects/ef/ab2115625abafd4d58ac2ba84a1f6230e748da": "ad3234e94a5d627b97e7d8c09aa2e0fb",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/382063a4c3429a8fca41300f80eb8813375e11": "78b3e00e61fe4bec6ad48d7cc6bf6b67",
".git/objects/f5/494e93f41dbf1032084ea774c8835e319f08a0": "715e37cad7f7bb420745672490258d07",
".git/objects/f5/dbdc2d99159413edf0262b5a6ec6e0d629691a": "c976b776fca2518cad5999684483d1df",
".git/objects/f7/26985c739d31de9c2fb68ab3464db98f1030ba": "ec4f4f0da0ad0092e633b1ae9fec229d",
".git/objects/f8/88837824f50d03a55fd6947242cd0d562ef1e5": "fa4aa795fd15e6121e7939fbbce2fb7e",
".git/objects/f9/b69771f108b3b790e1394bac1ac629eb534e2a": "afc505facbbc154e46b8930d84f75f22",
".git/objects/f9/ffe1746b3e9e5a4369fb2b4c5644661db885b1": "3df93d1d9de2ba3252267b518ee3ea5c",
".git/objects/fa/84cb53e2eba86b467c599e89d697c1487dc930": "8155906b26b2e03142d3172b299b1023",
".git/refs/heads/main": "03768b67c2cb95afe0135ec7153f2bfb",
".git/refs/remotes/origin/main": "03768b67c2cb95afe0135ec7153f2bfb",
"assets/AssetManifest.bin": "7bcca5ac80e614470a5240239e364c1d",
"assets/AssetManifest.bin.json": "063c2d35f44811d19f5fad901cb13d29",
"assets/AssetManifest.json": "24385580052b6e44cf427bf79a4a946d",
"assets/assets/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"assets/assets/images/circle.png": "663d5187ada8666bfa87120d1665605f",
"assets/assets/images/google_play.png": "7c42f3803d546db3d393106501dba541",
"assets/assets/images/ios-down-arrow.png": "fa4679d2972f1d11355142a60ed34ede",
"assets/assets/images/right-arrow.png": "62a7bab73a0fe40acd3f4555adfcab91",
"assets/assets/image_widget.png": "b79b7c405606e61385665ce7020328e4",
"assets/assets/photos/black-white.png": "78d49bb1d6ba051d64f67c019f97786a",
"assets/assets/photos/colored.png": "968671063715cb94339f2bd9bbefbaac",
"assets/assets/photos/me.png": "ba38ad6e7b09b2aabb20ef753cffc597",
"assets/assets/photos/me1.png": "cd10120df2dbbee6746cf85dce7f48f6",
"assets/assets/photos/me2.png": "4e1d5e968fbebcc2368d322332e674f4",
"assets/assets/photos/mobile.png": "b73399d02fceb26b510b6abe92894d80",
"assets/assets/projects/aerium-v1/portfolio_cover.png": "44d787594b26ade2562489ced20d9914",
"assets/assets/projects/aerium-v1/portfolio_design_2.png": "415b12138860ce60055b3ce39e517fde",
"assets/assets/projects/aerium-v1/portfolio_design_3.png": "4b8a024161c0d3f30b858ac60b9286d0",
"assets/assets/projects/aerium-v2/aerium_v2.jpg": "33ec4d62fe74fb6ee3b01301f92ceb9c",
"assets/assets/projects/aerium-v2/first.jpg": "d7a4be69fcea5718ce8fdaa844ce0988",
"assets/assets/projects/aerium-v2/last.jpg": "ee1b6eee2d5df5a5bfdcb686266b75a0",
"assets/assets/projects/aerium-v2/overall.jpg": "f114c609432d9115658f5477900f66a7",
"assets/assets/projects/aerium-v2/typography.jpg": "e16664ace87aa12b2266e6f8127ca05f",
"assets/assets/projects/android.png": "765adf924dae4d5e67bfb640bcd05c48",
"assets/assets/projects/covid.png": "27c600501d335324e8fce4c5d6c22b76",
"assets/assets/projects/covidB.png": "1884ac58a9de5d81e995f1e46e4b7398",
"assets/assets/projects/disneyplus/disneyplus_components.png": "74d9e2263cebd38337ac2ae9d2f23b16",
"assets/assets/projects/disneyplus/disneyplus_cover.png": "ffa11a0c8f114e0a24b31bb1790f2ef8",
"assets/assets/projects/disneyplus/disneyplus_description.png": "f049e03a0d786b44d57f80e702f10a5c",
"assets/assets/projects/disneyplus/disneyplus_designs.png": "084289a49e4ec07af37d41eb0b919123",
"assets/assets/projects/disneyplus/disneyplus_downloads_feature.png": "3bb3d18e2b7af7b62e3bc90a8deed037",
"assets/assets/projects/disneyplus/disneyplus_great_menu.png": "d13b01ee672be2e3e884fe866db90359",
"assets/assets/projects/disneyplus/disneyplus_header.png": "1ef584f42c10fd2f994f44e35d281751",
"assets/assets/projects/disneyplus/disneyplus_home.png": "7c3f46edc91974a22db6ecab11e49cbd",
"assets/assets/projects/disneyplus/disneyplus_mockups.png": "ec3d2333044bc2622030e38eb84a1b90",
"assets/assets/projects/disneyplus/disneyplus_more_description.png": "54c40930e0035fee095cc5f26e09e8d4",
"assets/assets/projects/disneyplus/disneyplus_profiles.png": "ee5c8f987396dbb6157911982b9e983d",
"assets/assets/projects/disneyplus/disneyplus_theme.png": "b4a28335035d4b169f1033313801fcc5",
"assets/assets/projects/disneyplus/disneyplus_the_end.png": "32e658209ce45e9227860a8c0fbf1b54",
"assets/assets/projects/disneyplus/mockups.png": "bfec31223be46e6c269d8bc71f3f707e",
"assets/assets/projects/drop/drop_cover.png": "c50dd8fc206812051747e58cf5a8b345",
"assets/assets/projects/drop/drop_description.gif": "7a0eede4ed79d2468eeaec6d30347b3c",
"assets/assets/projects/drop/drop_easy_access.gif": "7657c8f99a7a3a405cb71cb1f4bee892",
"assets/assets/projects/drop/drop_flowchart.png": "6601108c834215bb982c5fa49f586591",
"assets/assets/projects/drop/drop_minimal_design.png": "06c3434542050151428b3f66a0193244",
"assets/assets/projects/drop/drop_simple.png": "c4c00ba6b1933a304067dda102a922dd",
"assets/assets/projects/drop/drop_thanks.gif": "7f63f39ed7c894ee6e0755f77a39afb5",
"assets/assets/projects/drop/drop_wireframes.gif": "155af5f6c5def746328626cfce09c163",
"assets/assets/projects/dynasty/Driver/Appstore/1.jpg": "1101ea39d937efe30a576bd098c65b03",
"assets/assets/projects/dynasty/Driver/Appstore/2.jpg": "2ab12f3b7a67f899c843254c4ba86279",
"assets/assets/projects/dynasty/Driver/Appstore/3.jpg": "242c4c1c2c810ff1adcc3ea3d8b5a7eb",
"assets/assets/projects/dynasty/Driver/Appstore/4.jpg": "de77fc9166351818acc978afdb29fc53",
"assets/assets/projects/dynasty/Driver/Appstore/5.jpg": "b02dad28cca58f58e97886eb6a1bf88f",
"assets/assets/projects/dynasty/Driver/Appstore/AppIcon%25202.jpg": "21d53b8801fbb93eb80d0f3c3c3d21e9",
"assets/assets/projects/dynasty/Driver/Playstore/1.jpg": "1a8f482218c28b2bf2febec7b1733dec",
"assets/assets/projects/dynasty/Driver/Playstore/2.jpg": "d721e0881bf15527b26e8826c1403d98",
"assets/assets/projects/dynasty/Driver/Playstore/3.jpg": "0f7d415006f81fb136fa11233f1ef8ee",
"assets/assets/projects/dynasty/Driver/Playstore/4.jpg": "499bd435f35f62b5b38dfdf24fef55f4",
"assets/assets/projects/dynasty/Driver/Playstore/5.jpg": "edec22ab44a42b3c34d54a746d66a9a2",
"assets/assets/projects/dynasty/Driver/Playstore/AppIcon%25202.jpg": "9862a0405e134b8674178949e71d64bd",
"assets/assets/projects/dynasty/Driver/Playstore/Feature%2520Graphic%25202.jpg": "8f84635d8d4358b6579c1b040f85e743",
"assets/assets/projects/dynasty/User/Appstore/1.jpg": "445a24caddd9cca25f06da8cf3a84b72",
"assets/assets/projects/dynasty/User/Appstore/2.jpg": "388e790b94cc54d09ae5de897f99286d",
"assets/assets/projects/dynasty/User/Appstore/3.jpg": "6a2179d12164c3223449dd56b7373e38",
"assets/assets/projects/dynasty/User/Appstore/4.jpg": "eea042939a83a3e3ae61614562355ebe",
"assets/assets/projects/dynasty/User/Appstore/5.jpg": "2921e448332e1aa04252bbea13a887cc",
"assets/assets/projects/dynasty/User/Appstore/AppIcon%25201.jpg": "66703591754a1fe070ff8219299f6b5d",
"assets/assets/projects/dynasty/User/Playstore/1.jpg": "124c913baee08bf74be4fd39a681604d",
"assets/assets/projects/dynasty/User/Playstore/2.jpg": "0d39dbb68ecb536ca195a4eccb3b8cc1",
"assets/assets/projects/dynasty/User/Playstore/3.jpg": "9fdd11fe75543eed32dc864137f2ba4c",
"assets/assets/projects/dynasty/User/Playstore/4.jpg": "55e9ec668428d77191f6f2eb52ece795",
"assets/assets/projects/dynasty/User/Playstore/5.jpg": "568eeebe79be9de38bab581e2bfed475",
"assets/assets/projects/dynasty/User/Playstore/AppIcon%25201.jpg": "d0fbefb3749dba0cfb27607547e42d46",
"assets/assets/projects/dynasty/User/Playstore/Feature%2520Graphic%25201.jpg": "50fbc63bbbf0ccf5ba82b4316bc578f3",
"assets/assets/projects/earbender.png": "64099d76f6c7df0fac39c222293fd473",
"assets/assets/projects/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/projects/flutter_catalog/activities.png": "56b8a82f91b3bb17fc2da735be8309e2",
"assets/assets/projects/flutter_catalog/flutter_catalog_cover.png": "529c018ceb7db5d85e0bba13a4cd19c3",
"assets/assets/projects/flutter_catalog/onboarding.png": "78cd62661bd65bca48016781ec5af76d",
"assets/assets/projects/flutter_catalog/screens.png": "f384d904e19edcdf3b83ac9fab4a2514",
"assets/assets/projects/flutter_catalog/stats.png": "c6c5da388e4771644e3a0057737cc018",
"assets/assets/projects/flutter_catalog/thanks.png": "f23385476a0df7db049d7b8f94714706",
"assets/assets/projects/flutter_catalog/typography.png": "b12b17f85e8e12bd2ccab08e987c640c",
"assets/assets/projects/foodybite/foodybite_cover.png": "969daa4932408c630eb26f795cd84840",
"assets/assets/projects/foodybite/foodybite_home.png": "831c86f2e1dd6fa238acd532e41b3607",
"assets/assets/projects/foodybite/foodybite_home_flow.png": "f144497bae302b17e440392f547410e7",
"assets/assets/projects/foodybite/foodybite_review_favorite_notifications_flow.png": "e80ce1073e823a2fc83ddbf1515794f7",
"assets/assets/projects/foodybite/foodybite_starting_flow.png": "77c7833485f0a71c95e3a74f3f01b7c4",
"assets/assets/projects/foodybite/foodybite_typography.png": "af6e1b156ad00cfb382824b30ba38a35",
"assets/assets/projects/hereiam.png": "cbb5a77a5e19e1224080dcaf0e3b5407",
"assets/assets/projects/hereiamB.png": "16ee68a57fbf0eae5c50e1b8376064df",
"assets/assets/projects/image_widget.png": "b79b7c405606e61385665ce7020328e4",
"assets/assets/projects/java.png": "62be9fb6e1d7166e9cbeeed913096752",
"assets/assets/projects/login_catalog/login4.png": "f5eb46c00b1ad99b48dc75648ae232c0",
"assets/assets/projects/login_catalog/login5.png": "bafb620a4388df5ef86cff21ef895491",
"assets/assets/projects/login_catalog/login7.jpeg": "34412e31d874c3147f29d3bc522efbd2",
"assets/assets/projects/login_catalog/login8.png": "2bf8b3ab8d940dfb5c48069195c2d039",
"assets/assets/projects/login_catalog/login9.png": "4eb5737139e26eb31c1bea5e6e2c0a6b",
"assets/assets/projects/login_catalog/login_catalog_cover.jpg": "8142a609044c0f5b26df2964fe9304c4",
"assets/assets/projects/logisx/shipper/shipper.png": "49507a45212f04b6f86ef60a5f7011a3",
"assets/assets/projects/logisx/shipper/ShipperLogo.png": "89f22fab1560d6187d89f1a2aab4d267",
"assets/assets/projects/logisx/trucker/carrier.png": "b8e8633df562979acf18c9664d68ce44",
"assets/assets/projects/logisx/trucker/TruckerLogo.png": "2fe18fd25d81fa61f42e1b6dcd627095",
"assets/assets/projects/medkit.png": "915431d4f438d5bc7c642fed8dbfb419",
"assets/assets/projects/medkitB.png": "058d00d54c3ee8a953442d0cf3bfb866",
"assets/assets/projects/messenger.png": "f28ead750653b586737ed63db6f2d53a",
"assets/assets/projects/nimbus/nimbus.jpg": "9f925a888c2ff02c9f1206f99c2b155d",
"assets/assets/projects/nimbus/nimbus_cover.jpg": "454409edbf32cc8432d70c69155a6016",
"assets/assets/projects/odissea_sarcinii/30.jpg": "3319385b2f511232a678a0cecf0293fc",
"assets/assets/projects/odissea_sarcinii/31.jpg": "6245f4fa6befb531efd201077e648451",
"assets/assets/projects/odissea_sarcinii/32.jpg": "385714780d239e6e1c4d78cdf655edc6",
"assets/assets/projects/odissea_sarcinii/33.jpg": "772b640567b6635b1a9c4b05e1c95be3",
"assets/assets/projects/odissea_sarcinii/34.jpg": "bb4064f5642f4ef5ff7d51c0df66a9f4",
"assets/assets/projects/odissea_sarcinii/35.jpg": "f7cf843a3b2558640ba090475c778698",
"assets/assets/projects/odissea_sarcinii/36.jpg": "844230d4d7cf10a0e8e98b19e4adb8ce",
"assets/assets/projects/odissea_sarcinii/37.jpg": "2d7df8500d8505eb146cf5914c3edb1f",
"assets/assets/projects/odissea_sarcinii/Appicon-playstore.jpg": "0e8ad9e00e23afd61af2d8f71d370b6d",
"assets/assets/projects/odissea_sarcinii/Appstore/20.jpg": "aa92f43bd6758b5467c75bd8191b7948",
"assets/assets/projects/odissea_sarcinii/Appstore/21.jpg": "0e86cb76073d67d8488fe061542c988e",
"assets/assets/projects/odissea_sarcinii/Appstore/22.jpg": "3e9e60f81a48ab178053c3a2b8a1785e",
"assets/assets/projects/odissea_sarcinii/Appstore/23.jpg": "939fd2ed0b814fb855e606612a6bd6b6",
"assets/assets/projects/odissea_sarcinii/Appstore/24.jpg": "75ad0af0f0979429dbd0aed192e72f92",
"assets/assets/projects/odissea_sarcinii/Appstore/25.jpg": "d80916aff3e4b9a32efcae98fcb8d1a7",
"assets/assets/projects/odissea_sarcinii/Appstore/26.jpg": "ab220b58479ea614e50f8cd30d0c1224",
"assets/assets/projects/odissea_sarcinii/Appstore/27.jpg": "cd06c6ab241660edc034771cc1a6a047",
"assets/assets/projects/odissea_sarcinii/Appstore/appstore.jpg": "79d36d9ec1c5822913a458daac7abed8",
"assets/assets/projects/odissea_sarcinii/Feature_Graphic.jpg": "5a9a541ba48b79fb2d047b0a56fa268b",
"assets/assets/projects/outfitr/outfitr_1.jpeg": "5a72c14039670e01bcbfaccbff889551",
"assets/assets/projects/outfitr/outfitr_2.jpeg": "b5c6638904552202a14d3d65f6d69116",
"assets/assets/projects/outfitr/outfitr_4.jpeg": "4f45a2d1f2735a813f9e3ce4ca83f351",
"assets/assets/projects/outfitr/outfitr_5.jpeg": "32317c7e7d7bf50c3ca110d6d393e670",
"assets/assets/projects/outfitr/outfitr_6.jpeg": "8a986255dfcd301d00891cf0a6288df8",
"assets/assets/projects/outfitr/outfitr_cover.jpg": "73c49501f831207eb63ca115c5b1dd31",
"assets/assets/projects/quran.png": "55e8a0c928bc192f682ca0e61cb61ce3",
"assets/assets/projects/quranB.png": "3cf070457b64cf93d11ad2073bff88e2",
"assets/assets/projects/roam/roam_cover.jpeg": "a67b0ed338d81feb4cf60955c3a821b2",
"assets/assets/projects/roam/roam_explore.jpeg": "545a73fcfd824fdc7aa66ec3b5601cf8",
"assets/assets/projects/roam/roam_flow_chart.png": "50aa1d22e98a682fb24ad8beca7f306f",
"assets/assets/projects/roam/roam_home.jpeg": "9bcacb5453047dca89cf69352742765f",
"assets/assets/projects/roam/roam_onboarding.jpeg": "d6f2a2c09df8af0fc8708db8bd3c9a93",
"assets/assets/projects/roam/roam_overall.jpeg": "5c76cf22ede0a7955733f39d4439a055",
"assets/assets/projects/roam/roam_profile.jpeg": "3351fb0171a75f53d2974e20e586db86",
"assets/assets/projects/roam/wireframes_app.jpeg": "2fba25598d725ec44a6b828448535e3a",
"assets/assets/projects/roam/wireframes_onboarding.jpeg": "0793bcaad704dc77c2115eca32ec488b",
"assets/assets/projects/roam/wireframes_signup_login.jpeg": "3f9c2d5af711cbc401036749fca0ec76",
"assets/assets/projects/snackbar.png": "426d7d3320b4207468e1dec6322b3b08",
"assets/assets/services/app.png": "9d2da88edb7f550ef24874b306b4ae12",
"assets/assets/services/blog.png": "5e1cbb2c67e2b8ea9ae4bcce0705d2a4",
"assets/assets/services/fiverr.png": "9d4018924e1f0e983a86e7eaf8a0958b",
"assets/assets/services/open.png": "4a5996597d32b06d91183f0860c29aab",
"assets/assets/services/open_b.png": "b65517dd1a07922b014409bb8dcb1e81",
"assets/assets/services/rapid.png": "8d3ff9fbdddae77403af46662f011ee8",
"assets/assets/services/ui.png": "3cf727247752b730a05f51fe0177036f",
"assets/assets/work/cui.png": "b5608c4d79345ca955f990a24a454554",
"assets/assets/work/dsc.png": "bd954ceeeb42b91899ebe1c3b0d79850",
"assets/assets/work/flutterIsl.png": "aaaeddae163a2e71636d9d494e16f2db",
"assets/assets/work/st.png": "0957bd1682c5a518247a1844656c0f7e",
"assets/data.json": "d9afe6f372ea4e8f98852f77b0306d5a",
"assets/FontManifest.json": "2c93c538554f5f2082b5039d89294e1f",
"assets/fonts/agustina/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/fonts/MaterialIcons-Regular.otf": "1b952af1dd270d7d1e32aad7eed0e376",
"assets/fonts/montserrat/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/NOTICES": "6806a012f10c3b9cb9c416d4d0c6efb8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "c96dc22ca29a082af83cce866d35cebc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "bbc3a2d2265f7ff6bef4ba339a0ba4c9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "dbf0a93d2b23d99b7af4b1a6ab94e122",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4bc7849a5c7774cfa18e4bc2ef82404a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "c4503a48e68b26f9bf8141f9075e1591",
"favicon2.png": "61b493df9635f221d909421e8769acb0",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "002516a4b23f153b7ac2928347c377b1",
"icons/Icon-512.png": "84780d2dfe97536ad1b68213079cc78b",
"index.html": "109bbea114080ddc0c63c61ca52bff8c",
"/": "109bbea114080ddc0c63c61ca52bff8c",
"main.dart.js": "4c09af711f9ad9241092853a41f5f6cc",
"manifest.json": "7013f221c31963b33a5cba9ada2ceaa3",
"version.json": "a29e8b22a08aa0274b027931eec216c4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
