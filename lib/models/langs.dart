import 'package:flutter/material.dart';

class PLangs {
  final String name;
  final String description;
  final IconData icon;

  const PLangs({
    required this.name,
    required this.description,
    required this.icon,
  });
}

const List<PLangs> langs = [
  PLangs(
    name: 'Java',
    description: 'Java je objektno orijentirani programski jezik koji su razvili James Gosling, Patrick Naughton i drugi inženjeri u tvrtci Sun Microsystems. Razvoj je počeo 1991. kao dio projekta Green, a objavljen je u studenom 1995. Velika prednost u odnosu na većinu dotadašnjih programskih jezika je to što se programi pisani u Javi mogu izvoditi bez preinaka na svim operativnim sustavima za koje postoji JVM (Java Virtual Machine), dok je klasične programe pisane primjerice u C-u potrebno prilagođavati platformi (operacijskom sustavu) na kojem se izvode. Time i bogatim skupom klasa za rad s mrežnim komunikacijama u jednom trenutku je Java bila najbolji izbor za široku lepezu mogućih aplikacija.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C',
    description: 'C je preceduralni programski jezik osmišljen 1972. u AT&T Bell Labs. Korišten je za programiranje operativnih sustava, kompilatora, videoigara, računalnih mreža, ugrađenih sustava, baza podataka, upravljačkih programa, programskih jezika kao što su Python i Lua, firmwarea. Tijekom razvoja C je postao popularan zbog efikasnosti, prenosivosti, fleksibilnosti i utjecao je na dizajn modernih programskih jezika. Za razliku od drugih programskih jezika, C omogućava komuciranje i upravljanje hardverom uz visoke performanse.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C++',
    description: 'C++ je programski jezik opće namjene i srednje razine s podrškom za objektno orijentirano programiranje. Prvotno je razvijan u Bell Labs (laboratoriju telekomunikacijske tvrtke Bell) pod rukovodstvom Bjarnea Stroustrupa tijekom 1980-ih, i to kao proširenje programskom jeziku C pa mu je originalno ime bilo "C with classes" (engl.. C s klasama). Zbog velike potražnje za objektno orijentiranim jezicima te izrazitim sposobnostima istih, specifikacija programskog jezika C++ ratificirana je 1998. kao standard ISO/IEC 14882.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Rust',
    description: 'Rust je programski jezik koji priotizira brzinu i sigurnost memorije. Rust je sličan jezicima poput C i C++. Napravljen u 2006.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Python',
    description: 'Python je programski jezik opće namjene, interpretiran i visoke razine kojeg je stvorio Guido van Rossum 1990. godine (prva javna inačica objavljena je u veljači 1991. godine), ime dobiva po televizijskoj seriji Monty Pythons Flying Circus. Po automatskoj memorijskoj alokaciji, Python je sličan programskim jezicima kao što su Perl, Ruby, Smalltalk itd. Python dopušta programerima korištenje nekoliko stilova programiranja. Objektno orijentirano, strukturno i aspektno orijentirano programiranje stilovi su dopušteni korištenjem Pythona te ova fleksibilnost čini Python programski jezik sve popularnijim. Python se najviše koristi na Linuxu, no postoje i inačice za druge operacijske sustave.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'C#',
    description: 'C# (engl. C Sharp) je objektno orijentirani programski jezik koji su razvili Anders Hejlsberg i Microsoft objavljeno 2000. Koristi se za programiranje aplikacije, videoigare (koristeći Unity ili MonoGame) i web stranice. C# je osmišljen kako bi .NET platforma dobila programski jezik koji bi što više iskoristio njezine sposobnosti. Sličan je programskim jezicima Java i C++.',
    icon: Icons.terminal_rounded),
  PLangs(
    name: 'Assembly',
    description: 'Asemblerski jezik ili jednostavno asembler je niži simbolički jezik orijentiran računalu (tj. prilagođen radu računala). Svaka instrukcija u asembleru predstavlja jednu instrukciju strojnog jezika. Asembler je programski jezik niske razine, međutim, mnogo je napredniji u odnosu na strojni jezik. Sam način programiranja nije bitno različit u odnosu na strojni jezik, ali je svaki binarni kod zamijenjen slovnom oznakom tako da je ovaj programski jezik mnogo razumljiviji.',
    icon: Icons.terminal_rounded)
];
