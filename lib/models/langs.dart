import 'package:flutter/material.dart';

class PLangs {
  final String name;
  final String type;
  final String description;
  final IconData icon;

  const PLangs({
    required this.name,
    required this.type,
    required this.description,
    required this.icon,
  });
}

const List<PLangs> langs = [
  PLangs(
    name: 'Java',
    type: 'Programski jezik',
    description: 'Java je objektno orijentirani programski jezik koji su razvili James Gosling, Patrick Naughton i drugi inženjeri u tvrtci Sun Microsystems. Razvoj je počeo 1991. kao dio projekta Green, a objavljen je u studenom 1995. Velika prednost u odnosu na većinu dotadašnjih programskih jezika je to što se programi pisani u Javi mogu izvoditi bez preinaka na svim operativnim sustavima za koje postoji JVM (Java Virtual Machine), dok je klasične programe pisane primjerice u C-u potrebno prilagođavati platformi (operacijskom sustavu) na kojem se izvode. Time i bogatim skupom klasa za rad s mrežnim komunikacijama u jednom trenutku je Java bila najbolji izbor za široku lepezu mogućih aplikacija.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C',
    type: 'Programski jezik',
    description: 'C je preceduralni programski jezik osmišljen 1972. u AT&T Bell Labs. Korišten je za programiranje operativnih sustava, kompilatora, videoigara, računalnih mreža, ugrađenih sustava, baza podataka, upravljačkih programa, programskih jezika kao što su Python i Lua, firmwarea. Tijekom razvoja C je postao popularan zbog efikasnosti, prenosivosti, fleksibilnosti i utjecao je na dizajn modernih programskih jezika. Za razliku od drugih programskih jezika, C omogućava komuciranje i upravljanje hardverom uz visoke performanse.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C++',
    type: 'Programski jezik',
    description: 'C++ je programski jezik opće namjene i srednje razine s podrškom za objektno orijentirano programiranje. Prvotno je razvijan u Bell Labs (laboratoriju telekomunikacijske tvrtke Bell) pod rukovodstvom Bjarnea Stroustrupa tijekom 1980-ih, i to kao proširenje programskom jeziku C pa mu je originalno ime bilo "C with classes" (engl.. C s klasama). Zbog velike potražnje za objektno orijentiranim jezicima te izrazitim sposobnostima istih, specifikacija programskog jezika C++ ratificirana je 1998. kao standard ISO/IEC 14882.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Rust',
    type: 'Programski jezik',
    description: 'Rust je programski jezik koji priotizira brzinu i sigurnost memorije. Rust je sličan jezicima poput C i C++. Napravljen u 2006.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Python',
    type: 'Programski jezik',
    description: 'Python je programski jezik opće namjene, interpretiran i visoke razine kojeg je stvorio Guido van Rossum 1990. godine (prva javna inačica objavljena je u veljači 1991. godine), ime dobiva po televizijskoj seriji Monty Pythons Flying Circus. Po automatskoj memorijskoj alokaciji, Python je sličan programskim jezicima kao što su Perl, Ruby, Smalltalk itd. Python dopušta programerima korištenje nekoliko stilova programiranja. Objektno orijentirano, strukturno i aspektno orijentirano programiranje stilovi su dopušteni korištenjem Pythona te ova fleksibilnost čini Python programski jezik sve popularnijim. Python se najviše koristi na Linuxu, no postoje i inačice za druge operacijske sustave.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C#',
    type: 'Programski jezik',
    description: 'C# (engl. C Sharp) je objektno orijentirani programski jezik koji su razvili Anders Hejlsberg i Microsoft objavljeno 2000. Koristi se za programiranje aplikacije, videoigare (koristeći Unity ili MonoGame) i web stranice. C# je osmišljen kako bi .NET platforma dobila programski jezik koji bi što više iskoristio njezine sposobnosti. Sličan je programskim jezicima Java i C++.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Assembly',
    type: 'Programski jezik',
    description: 'Asemblerski jezik ili jednostavno asembler je niži simbolički jezik orijentiran računalu (tj. prilagođen radu računala). Svaka instrukcija u asembleru predstavlja jednu instrukciju strojnog jezika. Asembler je programski jezik niske razine, međutim, mnogo je napredniji u odnosu na strojni jezik. Sam način programiranja nije bitno različit u odnosu na strojni jezik, ali je svaki binarni kod zamijenjen slovnom oznakom tako da je ovaj programski jezik mnogo razumljiviji.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'JavaScript',
    type: 'Skriptni jezik',
    description: 'JavaScript je skriptni programski jezik, koji se izvršava u web pregledniku na strani korisnika. Napravljen je da bude sličan Javi, zbog lakšega korištenja, ali nije objektno orijentiran kao Java, već se temelji na prototipu i tu prestaje svaka povezanost s programskim jezikom Java. Izvorno ga je razvila tvrtka Netscape. JavaScript je primjena ECMAScript standarda. JavaScript s AJAX (Asynchronous JavaScript and XML) tehnikom omogućuje web stranicama komunikaciju sa serverskim programom, što čini web aplikaciju interaktivnijom i lakšom za korištenje.',
    icon: Icons.code_rounded),
  PLangs(
    name: 'PHP',
    type: 'Skriptni jezik',
    description: 'PHP (rekurzivni akronim i backronim za „PHP: Hypertext Preprocessor“, prije „Personal Home Page Tools“) je programski jezik koji se orijentira po C i Perl sintaksi, namijenjen prvenstveno programiranju dinamičnih web stranica. PHP je kao slobodni softver distribuiran pod PHP licencnim uvjetima. PHP se ističe širokom podrškom raznih baza podataka i internet protokola kao i raspoloživosti brojnih programerskih knjižnica.',
    icon: Icons.code_rounded),
  PLangs(
    name: 'Perl',
    type: 'Skriptni jezik',
    description: 'Perl je programski jezik opće namjene. Izvorni autor Perla je Larry Wall, a prva inačica pojavila se 18. prosinca 1987. godine. Perl vuče svoje korijene iz drugih jezika kao što su primjerice C, sed, awk i Unix shell. Perl je danas ne samo programski jezik već i vrlo aktivna zajednica programera i korisnika. Odlikuje ga kvalitetan repozitorij gotovih programskih rješenja (CPAN - kratica od eng. Comprehensive Perl Archive Network) što mu je ujedno i glavna prednost u odnosu na konkurentne jezike.',
    icon: Icons.code_rounded),
  PLangs(
    name: 'Ruby',
    type: 'Skriptni jezik',
    description: 'Ruby je dinamički, objektno orijentirani programski jezik koji kombinira sintaksu inspiriranu Perlom s nekim osobinama Smalltalka. Nastao je u Japanu 90-ih (tvorac Yukihiro Matsumoto), ali izvan Japana postaje popularniji tek u 2000. s pojavom knjige na engleskom jeziku, "Programming Ruby".',
    icon: Icons.code_rounded),
  PLangs(
    name: 'Lua',
    type: 'Skriptni jezik',
    description: 'Lua (por.: "Mjesec") višeplatformski je skriptni programski jezik visoke razine. Osmišljen je 1993. kao jezik za proširivanje softvera radi udovoljavanja sve zahtjevnijim standardima prilagodljivosti sučelja. Pružao je osnovne značajke proceduralnih jezika (poput COBOL-a, BASIC-a i C-a), kao i mehanizme proširivanja sintakse i funkcionalnosti jezika. Kao što je slučaj s Javom, programi pisani na Lui prevode se u zasebnu datoteku koja sadrži računalni bytecode pogodan za izvođenje na jezičnom prevoditelju napisanom na ANSI C-u. Interpreter Luina koda uz potpunu podršku svih standardnih biblioteka ima svega 278 kilobajta, što sam taj jezik čini prenosivim, brzim i neovisnim o uređaju na kojem se izvodi.',
    icon: Icons.code_rounded),
  PLangs(
    name: 'Bash',
    type: 'Skriptni jezik',
    description: 'Bash je najčešće korištena ljuska za unixoidne operacijske sustave. Izvorno napravljena za operacijski sustav GNU, ljuska Bash se temelji na ljusci Bourne koju je 1978. napisao Stephen Bourne, tada zaposlenik u Bell laboratorijama. Bash je pretpostavljena ljuska većine distribucija Linuxa, Mac OS X operacijskog sustava, a može se koristiti i na ostalim unixoidnim operacijskim sustavima. Postoji i inačica za operacijski sustav Microsoft Windows. Bash je kratica od "GNU Bourne-Again SHell". Ljuska Bash je licencirana pod GPL licencom, te spada u slobodnu programsku podršku.',
    icon: Icons.code_rounded)
];
