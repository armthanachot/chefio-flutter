List<Map<String, dynamic>> notificationsMock = [
  {"id": 1,"read":true,"showFull":false, "from": "User 1", "content": "Eu exercitation elit ullamco occaecat in sint ut non et laboris et. Labore consectetur irure ut officia deserunt esse id aliqua qui cupidatat sint nostrud laborum tempor. Eiusmod elit Lorem qui aliqua dolore quis ut. Mollit sunt magna ut laborum laborum velit commodo. Proident veniam voluptate anim aliquip veniam aute labore incididunt ad."},
  {"id": 2,"read":true,"showFull":false, "from": "User 2", "content": "Officia reprehenderit duis voluptate nostrud nostrud ullamco sit est excepteur eiusmod. Tempor aute magna voluptate culpa dolore id officia id ea esse consectetur aute nulla. Sit veniam duis ad voluptate aliqua officia Lorem irure sint reprehenderit nisi amet. Id officia proident dolore incididunt ipsum consectetur sit adipisicing eu exercitation dolor labore est ad."},
  {"id": 3,"read":true,"showFull":false, "from": "User 3", "content": "Sunt esse enim ad nisi nulla amet sit magna ex eu. Exercitation ipsum labore duis deserunt deserunt id qui sunt Lorem aliquip et reprehenderit sit. Mollit proident culpa culpa sint amet ipsum deserunt culpa dolor quis quis ad."},
  {"id": 4,"read":true,"showFull":false, "from": "User 4", "content": "Velit nostrud excepteur laboris exercitation cupidatat magna amet minim pariatur cillum reprehenderit duis minim. Ipsum laborum labore cupidatat culpa aute. Magna id id excepteur consequat elit ex id id culpa. Dolor excepteur reprehenderit voluptate laboris sit ut commodo eiusmod enim duis consequat. Ut dolore eiusmod magna ullamco ad laboris sint cillum nisi est nulla ipsum nisi sit."},
  {"id": 5,"read":false,"showFull":false, "from": "User 5", "content": "Voluptate proident sunt enim anim sit aliquip. Excepteur ipsum culpa mollit exercitation nisi id aliqua enim dolor cupidatat labore sint id. Laborum dolor ipsum minim dolore nostrud anim nostrud."},
  {"id": 6,"read":true,"showFull":false, "from": "User 6", "content": "Consequat dolor in officia qui ex mollit ipsum qui aliquip cupidatat nisi consequat sit labore. Elit ut cupidatat dolore officia dolor quis ea Lorem minim. Laborum consectetur nisi occaecat et officia qui reprehenderit. Irure in ut quis consequat."},
  {"id": 7,"read":true,"showFull":false, "from": "User 7", "content": "Excepteur exercitation officia enim laborum. Occaecat do cillum ea cupidatat aliquip culpa proident ut nulla id commodo in irure. Eu deserunt adipisicing esse ullamco mollit minim incididunt cillum mollit. Pariatur exercitation Lorem do magna consequat aliquip amet dolore eu laboris quis."},
  {"id": 8,"read":false,"showFull":false, "from": "User 8", "content": "Pariatur qui exercitation pariatur nisi tempor deserunt nisi occaecat quis ullamco elit commodo non. Enim Lorem duis eu anim minim minim consequat cillum sint. Culpa eiusmod exercitation do do magna irure deserunt ea occaecat esse voluptate. Reprehenderit magna ut anim fugiat mollit. Culpa et enim eu dolor incididunt aliqua qui do non voluptate."},
  {"id": 9,"read":true,"showFull":false, "from": "User 9", "content": "Ut elit cupidatat non laboris sint adipisicing quis irure nisi Lorem aute veniam culpa ad. Anim adipisicing ea Lorem proident id ea tempor laboris qui deserunt incididunt qui eu. Fugiat ad dolore occaecat ut ad. Magna cupidatat ea sint ea in ullamco do tempor. Sunt excepteur sit in non Lorem dolor ut consequat anim in labore."},
  {"id": 10,"read":true,"showFull":false, "from": "User 0", "content": "Exercitation sit voluptate nisi ea sit labore commodo consequat dolore. Adipisicing nostrud ad aliqua dolore enim minim sint labore amet dolor adipisicing consectetur ullamco est. Culpa veniam sit eu elit do adipisicing. Incididunt adipisicing quis irure laboris est veniam duis veniam ad laborum duis irure ad. Deserunt laborum officia ex mollit mollit ullamco labore aliqua enim ut nostrud."},
  {"id": 11,"read":false,"showFull":false, "from": "User 1", "content": "Do mollit ut occaecat enim ullamco veniam. In labore dolor cillum minim aliqua sunt laborum. Quis dolore ea est voluptate laborum mollit et ad enim enim Lorem. Excepteur nostrud ut officia magna."},
  {"id": 12,"read":true,"showFull":false, "from": "User 2", "content": "Nisi consectetur minim cillum non officia fugiat dolor quis sunt officia ullamco enim qui. Aliquip sint non est non dolor qui. Sint ut id ea culpa nulla cupidatat. Consectetur qui tempor aute culpa est."},
  {"id": 13,"read":true,"showFull":false, "from": "User 3", "content": "Ea reprehenderit consectetur veniam qui aute commodo magna proident aliqua quis. Ex deserunt laborum sit elit tempor officia adipisicing labore. Esse consequat proident deserunt sunt aliquip esse occaecat nostrud amet magna. Cillum dolor sunt magna aute labore minim anim do."},
  {"id": 14,"read":true,"showFull":false, "from": "User 4", "content": "Quis non sit elit duis ad tempor elit mollit aliquip aute. Duis nulla proident occaecat commodo veniam occaecat sint. Ad ipsum deserunt incididunt esse ea."},
  {"id": 15,"read":true,"showFull":false, "from": "User 5", "content": "Cillum dolore nisi ut deserunt. Qui ipsum amet quis irure. Velit enim do et eiusmod labore."},
  {"id": 16,"read":true,"showFull":false, "from": "User 6", "content": "In ea velit labore velit ad ea irure ut sint deserunt consectetur. Sint ut laboris cupidatat tempor est enim consequat. Excepteur ea commodo nulla anim."},
  {"id": 17,"read":false,"showFull":false, "from": "User 7", "content": "Ullamco minim Lorem exercitation commodo aute cillum enim velit sit ut est qui ex. Sunt occaecat non cupidatat reprehenderit nostrud sint nisi ut. Adipisicing aliqua incididunt ullamco anim mollit non adipisicing deserunt fugiat in. Elit officia ex ad esse esse labore ad Lorem Lorem laborum."},
  {"id": 18,"read":false,"showFull":false, "from": "User 8", "content": "Elit sint sint ex laborum deserunt enim cillum ad laboris sint. Sit velit nulla veniam ea aliqua esse mollit mollit tempor anim cillum culpa. Dolor eu reprehenderit aliquip sint dolore et nulla veniam ex. Ad id aliqua consequat consectetur amet consectetur occaecat sunt cillum. Qui tempor velit enim mollit ipsum cupidatat. Consectetur adipisicing voluptate irure tempor occaecat aliquip proident ut est nostrud. Nisi ullamco enim cillum nisi sunt ut nulla ullamco amet mollit."},
  {"id": 19,"read":true,"showFull":false, "from": "User 9", "content": "Eiusmod Lorem magna non sunt irure exercitation commodo labore reprehenderit ullamco. Occaecat esse ut amet elit elit reprehenderit. Eiusmod nisi qui eu voluptate tempor nostrud consectetur deserunt labore fugiat mollit eiusmod ipsum."},
  {"id": 20,"read":true,"showFull":false, "from": "User 0", "content": "Dolor occaecat fugiat nisi ea deserunt commodo. Duis laboris tempor adipisicing exercitation ea fugiat. Elit et proident pariatur non qui Lorem id culpa ea. Ad amet veniam sunt cillum aliquip deserunt consectetur sint ut labore veniam. Quis ex ex aute tempor qui eu tempor cillum velit ad in eiusmod sunt ullamco. Ex excepteur eiusmod duis mollit qui."},
];