SesliSozluk Terminal
====================

Komut satırı üzerinden SesliSözlük'ü kullanabilirsiniz.

Kurulum için öncelikle yüklü değilse bilgisayarınızda Xcode ve command line tools kurulu olmalı. Ardından, **ss** isimli dosyayı
```
/usr/local/bin
```
klasörüne ekleyin. Ekledikten sonra aşağıdaki komutları çalıştırın :

```
sudo cpan
yes [kurulum bitene kadar arka arkaya 3 kere girin]
install HTML::TagParser [cpan çalışmaya başladığında]
exit
```
Bunları yaptıktan sonra, aşağıdaki gibi kullanabilirsiniz :
```
ss [aradığınız kelime]
```
Örnek :
```
ss geoponic
ss easy come easy go
ss haydan gelen huya gider
```
Komut sözcüğünü (**ss**) değiştirmek isterseniz dosyanın ismini değiştirmeniz yeterli olacaktır.

####Hata Durumu

Eğer yukarıdaki adımları izlediğinizde komut bulunamadı (command not found) hatası alıyorsanız, **/usr/local/bin** dizininin **$PATH** değişkenine kayıtlı olduğuna emin olun. Aşağıdaki komutu çalıştırın:
```
echo $PATH
```
Karşınıza gelen dizinlerin arasında **/usr/local/bin** ekli olmalı. Eğer değilse :
```
sudo vim /etc/paths
```
Şifrenizi sorarsa şifrenizi girin. Açılacak text editöründe **i** tuşuna basıp **insert** moduna geçtikten sonra yeni bir satıra **/usr/local/bin** yazın. Ardından sırasıyla aşağıdakileri çalıştırın:
```
:w [Enter]
:q [Enter]
```
