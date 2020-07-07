### بسم الله الرحمن الرحيم
# **Cryptography** شرح النهاردة هيكون عن تحديات ال 
# Contents :-
- **Number Systems**
- **Ascii**
- **Bitwise operations and their implementations in python**
- **Encoding**
- **Hashes**
- **Encryption**

---
### Number Systems
-: النظام الرقمي بينقسم لأربعة اقسام وهما  
- 10 أساسه (Decimal) النظام العشري 
- 2 أساسه (Binary) النظام الثنائي 
- 8 أساسه (Octal) النظام الثماني 
- 16 أساسه (Hexadecimal) النظام الست عشري
---
1. نبدأ بأول حاجة وهي النظام العشري 
- 10 هو نظام من انظمة الارقام بيبقي اساسه الرقم 
- وارقامه من 0 : 9 
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c1.jpeg)
- [Read About Decimal](https://en.wikipedia.org/wiki/Decimal)
2. النظام الثنائي
- 2ده نظام اساسه هو الرقم 
- 1 , 0 وارقامه هي
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c2.jpeg)
- [Read About Binary](https://en.wikipedia.org/wiki/Binary)
3. النظام الثماني
- ده نظام اساسه الرقم 8
- وارقامه من 0 : 7
- [Read About Octal](https://en.wikipedia.org/wiki/Octal)
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c3.jpeg)
4. النظام الست عشري 
- ده نظام اساسه الرقم 16 
- (0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f) وارقامه هي 
- [Read About Octal](https://en.wikipedia.org/wiki/Hexadecimal)
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c4.jpeg)
---
### Ascii (*A*merican *S*tandard *C*ode *f*or *I*nformation *I*nterchange)
- باختصار شديد هو رمز او جدول لتمثيل 128 حرف باللغة الانجليزية الي ارقام
- في تمثيل النص عشان تسهل نقل الملفات من جهاز لأخرascii ومعظم اجهزة الكومبيوتر بتستخدم ال 
![image](https://upload.wikimedia.org/wikipedia/commons/d/dd/ASCII-Table.svg)
- [Read about Ascii](https://en.wikipedia.org/wiki/ASCII)
---
### Bitwise operations
- Types
1. Not ~
2. Or |
3. AND &
4. •XOR ^
5. Bit Shift
---
- Bitwise operations Not :-
- ~ رمزها
- 1 to 0 ببساطة دي بتحول ال 
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c5.jpeg)
- 1 NOT = 0
- 0 NOT = 1
---
- Bitwise operations OR :-
- | رمزها
- ببساطة دي لو دخلها 1 بيطلع 1 الا لو دخلها صفرين
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c6.jpeg)
- 1 OR 0 = 1
- 1 OR 1 = 1
- 0 OR 0 = 0
---
- Bitwise operations AND :-
- & رمزها 
- ببساطة دي بتطلع 0 في اي وضع الا لو دخلها واحدين يعني  
- 1 AND 1 = 1 
![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c7.jpeg)
- 1 AND 0 = 0
- 0 AND 0 = 0
- 1 AND 1 = 1
---
- Bitwise operations XOR :-
- ^ رمزها 
- دي بتطلع 1 في اي وضع الا لو في صفرين 
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c8.jpeg)
1 
---
- Bitwise operation Bit Shift :-
- الرموز 
- > Left <<
- > Right >>
- دي بتحرك الرقم الثنائي علي حسب الاتجاه المطلوب
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c9.jpeg)
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c10.jpeg)
#### [Read about Bitwise Operations](https://en.wikipedia.org/wiki/Bitwise_operation)
---
## Encoding :- 
[Read about Encoding](https://techterms.com/definition/encoding)
> **Base encode**
- Base64
- Base32
- Base56
- Base62
- decode بتختار النوع وبتعمله 
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c11.png)
#### [CyberChef](https://techterms.com/definition/encoding) 
- عاما Cryptoالموقع ده من المواقع الكويسة في تحديات ال
---
## Hashes :-
1. Types
- MD Family
- Secure hash algorithm
---
- من المواقع اللي بتعمل تحليل للهاش من خلال طوله وبتجيب نوعه
- (Hash analyzer)[https://www.tunnelsup.com/hash-analyzer/]
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c13.jpeg)
- [hashid](https://github.com/psypanda/hashID) وفي من ادوات اللينكس اداة اسمها 
- ![image](https://raw.githubusercontent.com/Mahmoud-joo/Intro-To-CTF/master/Cryptography/CryptoImages/c12.jpeg)
- طب كده عرفنا نوع الهاش هنكركه ازاي ؟؟
---
- [Crackstation](https://crackstation.net/) فيه موقع اون لاين زي 
## [JohnTheRipper](https://github.com/magnumripper/JohnTheRipper)وفيه ادوات زي 
### [JohnTheRipper CheatSheet](http://pentestmonkey.net/cheat-sheet/john-the-ripper-hash-formats)
## [HashCat](https://github.com/hashcat/hashcat) وزي 
### [HashCat CheatSheet](https://github.com/frizb/Hashcat-Cheatsheet)

##### لو عايز تطبق علي النوعين اللي فاتوا خش هنا 
[Test YourSelf](https://tryhackme.com/room/c4ptur3th3fl4g)
---

## Encyption :-
- معينة Algorithm وهي انك تكتب رسالة متتفكش الا ب  
#### Types
1. [Asymmetric encryption](https://hitachi-id.com/resource/itsec-concepts/asymmetric_encryption.html)
- Use pair of public-key for encryption and private key for decryption
- RSA
2. [Symmetric encryption](https://www.cryptomathic.com/news-events/blog/symmetric-key-encryption-why-where-and-how-its-used-in-banking)
- Use one key for both operations
- AES & DES

- **الفيديوهات شارحة الكلام ده بالتفصيل**
- **موجود ومهم جدا بردو RSA,AES وشرح**
