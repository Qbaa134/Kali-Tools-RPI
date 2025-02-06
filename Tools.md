# Pełna lista narzędzi i jak je uruchamiać na Raspberry Pi Zero

W tej instrukcji znajdziesz szczegółowy opis najczęściej używanych narzędzi w systemie Raspberry Pi Zero, które zainstalowałeś. Podzielę je na kategorie i opowiem, jak je uruchamiać i wykorzystywać, by maksymalizować ich użyteczność w pracy z systemem, testach penetracyjnych, analizie sieciowej i innych zadaniach związanych z bezpieczeństwem IT.

---

### **1. Narzędzia systemowe**

#### **curl**
`curl` jest narzędziem do transferu danych w sieci, które obsługuje protokoły takie jak HTTP, HTTPS, FTP, SFTP, SCP i inne. Jest to bardzo przydatne narzędzie do pobierania plików lub testowania połączeń z serwerami.

- **Jak uruchomić:**
  W terminalu wpisz:
  ```bash
  curl http://example.com
  ```
  Możesz używać `curl` do pobierania plików:
  ```bash
  curl -O http://example.com/file.zip
  ```

#### **git**
`git` jest systemem kontroli wersji, który pozwala na śledzenie zmian w plikach, współpracę z innymi programistami oraz zarządzanie kodem źródłowym.

- **Jak uruchomić:**
  W terminalu użyj komendy:
  ```bash
  git clone https://github.com/example/repo.git
  ```
  Aby sprawdzić wersję Gita:
  ```bash
  git --version
  ```

#### **vim**
`vim` to zaawansowany edytor tekstu, który pozwala na edytowanie plików w terminalu.

- **Jak uruchomić:**
  Aby edytować plik w terminalu, wpisz:
  ```bash
  vim myfile.txt
  ```
  Jeśli chcesz nauczyć się korzystać z Vima, warto zapoznać się z jego samouczkiem:
  ```bash
  vimtutor
  ```

#### **python3-pip**
`pip` jest menedżerem pakietów dla Pythona. Umożliwia łatwą instalację zewnętrznych bibliotek i modułów.

- **Jak uruchomić:**
  Aby zainstalować bibliotekę Pythona, np. `requests`, użyj:
  ```bash
  pip3 install requests
  ```

#### **wireshark**
`Wireshark` to jedno z najpotężniejszych narzędzi do analizy pakietów sieciowych. Pozwala na monitorowanie ruchu w sieci i analizowanie pakietów.

- **Jak uruchomić:**
  W terminalu wpisz:
  ```bash
  sudo wireshark
  ```
  Wireshark wymaga uprawnień administratora, ponieważ działa w trybie z dostępem do interfejsu sieciowego.

---

### **2. Narzędzia do testów penetracyjnych**

#### **metasploit-framework**
`Metasploit Framework` to jedno z najbardziej znanych narzędzi do przeprowadzania testów penetracyjnych. Umożliwia tworzenie i testowanie exploitów, a także przeprowadzanie ataków na systemy komputerowe.

- **Jak uruchomić:**
  Aby uruchomić Metasploit, w terminalu wpisz:
  ```bash
  msfconsole
  ```

#### **aircrack-ng**
`aircrack-ng` to zestaw narzędzi do audytu sieci bezprzewodowych. Pozwala na łamanie haseł do sieci Wi-Fi, monitorowanie ruchu i testowanie zabezpieczeń.

- **Jak uruchomić:**
  Aby uruchomić Aircrack-ng, w terminalu wpisz:
  ```bash
  aircrack-ng
  ```

#### **john the ripper**
`John the Ripper` to narzędzie do łamania haseł. Obsługuje różne algorytmy, takie jak MD5, SHA1, DES i inne.

- **Jak uruchomić:**
  Aby uruchomić `john`, wpisz:
  ```bash
  john hashfile.txt
  ```

#### **hydra**
`Hydra` to narzędzie do ataków słownikowych na różne protokoły, takie jak HTTP, FTP, SSH i inne.

- **Jak uruchomić:**
  Aby uruchomić Hydra na przykład do testowania protokołu SSH:
  ```bash
  hydra -l user -P /path/to/wordlist.txt ssh://192.168.1.1
  ```

#### **sqlmap**
`sqlmap` to automatyczne narzędzie do wykrywania i eksploatacji luk SQL Injection w aplikacjach webowych.

- **Jak uruchomić:**
  Aby uruchomić sqlmap i sprawdzić stronę pod kątem SQL Injection:
  ```bash
  sqlmap -u "http://example.com/page.php?id=1" --batch
  ```

---

### **3. Narzędzia do analizy sieci**

#### **nmap**
`nmap` to jedno z najczęściej używanych narzędzi do skanowania sieci i wykrywania urządzeń w sieci. Pozwala na audyt sieciowy, wykrywanie otwartych portów i systemów operacyjnych.

- **Jak uruchomić:**
  Aby zeskanować całą sieć, wpisz:
  ```bash
  nmap 192.168.1.0/24
  ```

#### **tcpdump**
`tcpdump` to narzędzie do analizy pakietów w sieci. Może przechwytywać i wyświetlać dane przesyłane przez sieć.

- **Jak uruchomić:**
  Aby przechwycić pakiety na interfejsie `eth0`, użyj:
  ```bash
  sudo tcpdump -i eth0
  ```

#### **mitmproxy**
`mitmproxy` to narzędzie do przechwytywania i manipulowania ruchem HTTP i HTTPS w czasie rzeczywistym.

- **Jak uruchomić:**
  Aby uruchomić `mitmproxy`, wpisz:
  ```bash
  mitmproxy
  ```

#### **ettercap**
`ettercap` to narzędzie do przeprowadzania ataków man-in-the-middle w sieciach komputerowych, zwłaszcza w sieciach lokalnych.

- **Jak uruchomić:**
  Aby uruchomić wersję tekstową `ettercap`, wpisz:
  ```bash
  sudo ettercap -T -q -i eth0
  ```

---

### **4. Pakiety Pythona**

#### **requests**
`requests` to jedna z najczęściej używanych bibliotek Pythona do wykonywania zapytań HTTP w aplikacjach.

- **Jak uruchomić:**
  Aby użyć `requests` do pobrania zawartości strony, wpisz:
  ```python
  import requests
  response = requests.get('http://example.com')
  print(response.text)
  ```

#### **scapy**
`scapy` to narzędzie do analizy pakietów sieciowych, generowania pakietów oraz przeprowadzania testów penetracyjnych.

- **Jak uruchomić:**
  Aby uruchomić `scapy`, w terminalu wpisz:
  ```bash
  scapy
  ```
  Scapy umożliwia tworzenie i wysyłanie własnych pakietów, np. ICMP:
  ```python
  from scapy.all import *
  send(IP(dst="192.168.1.1")/ICMP())
  ```

#### **beautifulsoup4**
`BeautifulSoup` to biblioteka do parsowania HTML i XML. Jest szeroko używana do scrapingowania danych z sieci.

- **Jak uruchomić:**
  Aby używać `beautifulsoup4`, najpierw zainstaluj bibliotekę:
  ```bash
  pip3 install beautifulsoup4
  ```

  Następnie w Pythonie:
  ```python
  from bs4 import BeautifulSoup
  import requests

  url = 'http://example.com'
  page = requests.get(url)
  soup = BeautifulSoup(page.content, 'html.parser')
  print(soup.prettify())
  ```

#### **selenium**
`Selenium` to biblioteka do automatyzacji przeglądarki internetowej. Jest używana do testowania aplikacji webowych i przeprowadzania zautomatyzowanych ataków.

- **Jak uruchomić:**
  Aby używać `selenium`, najpierw zainstaluj przeglądarkę oraz sterownik, np. dla Chrome:
  ```bash
  pip3 install selenium
  ```
  Następnie w Pythonie:
  ```python
  from selenium import webdriver

  driver = webdriver.Chrome()
  driver.get('http://example.com')
  print(driver.page_source)
  ```

---

### **Podsumowanie**

Powyższa lista przedstawia narzędzia i programy, które zainstalowałeś na swoim Raspberry Pi Zero. Wszystkie te narzędzia są potężnymi zasobami do pracy w zakresie bezpieczeństwa komputerowego, testów penetracyjnych, analizy sieciowej oraz administracji systemami.

Każde z narzędzi ma swoje specyficzne zastosowanie, a ich uruchomienie i konfiguracja w systemie jest stosunkowo prosta. Korzystając z nich, masz dostęp do szerokiego wachlarza możliwości, które mogą pomóc Ci w przeprowadzaniu testów bezpieczeństwa, analizie sieci i wielu innych zadaniach związanych z komputerami i sieciami.

Zachęcam Cię do dalszej eksploracji i doskonalenia umiejętności w korzystaniu z tych narzędzi. Większość z nich posiada obszerną dokumentację i liczne tutoriale, które pomogą Ci w pełni wykorzystać ich potencjał.
