# Raspberry Pi PenTest Tools 🖥️🔧

## Opis 📜

**Raspberry Pi PenTest Tools** to projekt, który umożliwia łatwe uruchomienie zestawu narzędzi do testów penetracyjnych i cyberbezpieczeństwa na Raspberry Pi. Dzięki temu repozytorium możesz szybko przygotować swoje Raspberry Pi do działań związanych z testowaniem zabezpieczeń, analizą ruchu sieciowego, przechwytywaniem pakietów oraz wieloma innymi zadaniami z zakresu bezpieczeństwa IT. Skrypt automatycznie instaluje i konfiguruje ponad 50 narzędzi, które są powszechnie używane przez profesjonalistów w dziedzinie penetracji systemów komputerowych.

Projekt został zaprojektowany z myślą o użytkownikach, którzy chcą przeprowadzać testy penetracyjne w łatwy sposób, bez konieczności manualnej konfiguracji każdego narzędzia z osobna. Wszystko, co musisz zrobić, to pobrać repozytorium i uruchomić skrypt instalacyjny. 🎉

**Dlaczego warto?**
- **Łatwość instalacji**: Skrypt automatycznie instaluje wszystkie narzędzia.
- **Kompleksowość**: Zawiera ponad 50 narzędzi do testów penetracyjnych, analizowania sieci, przechwytywania pakietów, łamania haseł i wielu innych.
- **Wydajność**: Optymalizowany do działania na Raspberry Pi, szczególnie na modelach Zero oraz Pi 3/4.
- **Dostępność**: Świetny zestaw narzędzi dostępny w każdym momencie, gotowy do użycia!

---

## Spis treści 📚

1. [Wymagania](#wymagania)
2. [Instalacja](#instalacja)
3. [Konfiguracja](#konfiguracja)
4. [Użycie](#użycie)
5. [Zainstalowane narzędzia](#zainstalowane-narzędzia)
6. [Przykłady użycia](#przykłady-użycia)
7. [Rozwiązywanie problemów](#rozwiązywanie-problemów)
8. [Rozwój i kontrybucje](#rozwój-i-kontrybucje)
9. [Licencja](#licencja)
10. [Podziękowania](#podziękowania)

---

## Wymagania ⚙️

Aby móc korzystać z tego zestawu narzędzi, będziesz potrzebować kilku rzeczy:

- **Raspberry Pi**: Ten skrypt działa na Raspberry Pi Zero (W) oraz innych modelach (Pi 3, Pi 4).
- **System operacyjny**: Raspberry Pi OS (Lite lub Desktop) z najnowszymi aktualizacjami.
- **Połączenie internetowe**: Skrypt pobiera pakiety z internetu, więc musisz być podłączony do sieci.
- **Karta microSD**: Zalecana minimalna pojemność 8 GB.
- **Zasilacz**: Power bank lub zasilacz o napięciu 5V i natężeniu 2A.
- **Uprawnienia administratora (sudo)**: Skrypt wymaga uprawnień `sudo` do instalacji narzędzi.
- **Dodatkowa przestrzeń dyskowa**: W zależności od liczby narzędzi, które chcesz zainstalować, zaleca się mieć co najmniej 16 GB dostępnej przestrzeni na karcie microSD.

---

## Instalacja ⚡

Zainstalowanie zestawu narzędzi na Raspberry Pi jest szybkie i proste. Postępuj zgodnie z poniższymi krokami:

### 1. Klonowanie repozytorium

Zacznij od sklonowania repozytorium na swoje Raspberry Pi. Jeśli nie masz jeszcze zainstalowanego Git, możesz to zrobić za pomocą poniższej komendy:

```bash
sudo apt install git
```

Następnie sklonuj repozytorium:

```bash
git clone https://github.com/your-username/rpi-pentest-tools.git
cd rpi-pentest-tools
```

### 2. Przyznanie uprawnień do skryptu

Nadaj uprawnienia do wykonania skryptu instalacyjnego:

```bash
chmod +x install.sh
```

### 3. Uruchomienie skryptu instalacyjnego

Teraz wystarczy uruchomić skrypt instalacyjny:

```bash
./install.sh
```

Po uruchomieniu skryptu instalacyjnego zostaniesz poproszony o podanie hasła administratora. Skrypt będzie pobierał i instalował wszystkie wymagane pakiety.

### 4. Poczekaj na zakończenie instalacji

Skrypt może potrwać od kilku minut do godziny, w zależności od wydajności Twojego Raspberry Pi i prędkości internetu. Po zakończeniu instalacji zobaczysz komunikat:

```
Instalacja zakończona. Wszystkie narzędzia zostały zainstalowane! 🎉
```

---

## Konfiguracja 🛠️

Po zakończeniu instalacji istnieje kilka rzeczy, które możesz skonfigurować lub dostosować do swoich potrzeb. Oto kilka z nich:

### Dodanie użytkownika do grupy `wireshark`

Aby uzyskać dostęp do Wiresharka bez konieczności używania `sudo`, możesz dodać użytkownika do grupy `wireshark`:

```bash
sudo usermod -aG wireshark pi
```

Po tej operacji należy wylogować się i zalogować ponownie, aby zmiany weszły w życie.

### Ustawienia Metasploit

Metasploit wymaga uprawnień administratora, więc będziesz musiał/a uruchomić go z `sudo`, aby nie napotkać problemów z dostępem do niektórych funkcji.

---

## Użycie 💻

Po zakończeniu instalacji możesz zacząć korzystać z narzędzi. Oto kilka przykładów użycia popularnych narzędzi.

### 1. **Metasploit Framework** 🕵️‍♂️

Metasploit to potężne narzędzie do testów penetracyjnych. Uruchom Metasploit, wpisując:

```bash
msfconsole
```

Aby przeprowadzić atak na zdalny system, możesz użyć poniższych komend:

```bash
use exploit/windows/smb/ms08_067_netapi
set RHOST 192.168.1.10
run
```

### 2. **Nmap** 🌐

Nmap to narzędzie do skanowania sieci. Możesz przeprowadzić szybkie skanowanie portów w sieci lokalnej:

```bash
nmap -sP 192.168.1.0/24
```

Do skanowania bardziej szczegółowego:

```bash
nmap -sS -T4 -A -v 192.168.1.10
```

### 3. **Wireshark** 📶

Wireshark to narzędzie do analizy pakietów. Aby rozpocząć przechwytywanie pakietów:

```bash
sudo wireshark
```

### 4. **Hydra** 🔐

Hydra to narzędzie do łamania haseł. Oto przykład ataku na FTP:

```bash
hydra -l admin -P /path/to/wordlist.txt ftp://192.168.1.1
```

### 5. **SQLMap** 💻

SQLMap to narzędzie do wykrywania i eksploatacji podatności SQL Injection. Aby sprawdzić, czy dana strona jest podatna na SQL Injection:

```bash
sqlmap -u "http://example.com/vulnerable.php?id=1" --dbs
```

---

## Zainstalowane narzędzia 🔧

Skrypt instaluje zestaw ponad 50 narzędzi, w tym:

### Testy penetracyjne 🕵️‍♀️

- **Metasploit Framework** 💥
- **Hydra** 🔑
- **John the Ripper** 🔐
- **SQLMap** 💻
- **Nikto** 🌐
- **Gobuster** 🚀
- **Sublist3r** 📝
- **Burp Suite** 🍪
- **Nessus** 🕷️
- **Netcat** 🌍

### Analiza sieci 🌐

- **Nmap** 🔎
- **Tcpdump** 🐾
- **Wireshark** 📶
- **Scapy** 🧪
- **Mitmproxy** 🧰
- **Ettercap** 🍂

### Inżynieria wsteczna 🧠

- **GDB** 🐞
- **Radare2** 🛠️
- **Binwalk** 💾
- **Pwndbg** ⚡
- **Volatility** 🧊

---

## Przykłady użycia 🔨

Poniżej znajdziesz kilka przykładów użycia narzędzi w różnych scenariuszach testów penetracyjnych.

### Przykład 1: Skanowanie sieci

Za pomocą Nmap możesz zeskanować całą sieć:

```bash
nmap -sP 192.168.0.0/24
```

### Przykład 2: Skanowanie portów z wykrywaniem wersji

Aby przeprowadzić pełne skanowanie portów z wykrywaniem wersji usług:

```bash
nmap -sV 192.168.1.1
```

---

## Rozwiązywanie problemów 🛑

### Problem: Błąd podczas instalacji

Jeśli napotkałeś problem podczas instalacji, upewnij się, że masz aktywne połączenie internetowe i zaktualizowane repozytoria:

```bash
sudo apt update && sudo apt upgrade
```

### Problem: Narzędzia nie działają po instalacji

Jeśli któreś z narzędzi nie działa poprawnie, spróbuj je ręcznie zainstalować lub sprawdź, czy brakuje jakichś zależności.

---

## Rozwój i kontrybucje 🚀

Chciałbyś pomóc w rozwoju tego projektu? Świetnie! Oto jak możesz przyczynić się do jego rozwoju:

1. **Fork repozytorium** i stwórz własną gałąź.
2. **Dodaj nowe narzędzia** do listy instalacji.
3. **Zgłoś problem** lub **stworzyć pull request** z poprawkami.

Wszystkie kontrybucje są mile widziane!

---

## Licencja 📝

Projekt objęty jest licencją **MIT**. Więcej informacji znajdziesz w pliku [LICENSE](LICENSE.md).

---

## Podziękowania 🙏

Dziękujemy wszystkim osobom, które przyczyniły się do tego projektu, w tym autorom narzędzi, które zostały uwzględnione w tym zestawie.👏
