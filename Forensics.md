# Digital Forensics

### بسم الله الرحمن الرحيم  

*Forensics* وهو ال CTF النهاردة هيكون معانا اول نوع من تحديات التقاط العلم
 هحاول اشرح التحدي بطريقة مبسطة وسهلة في هيئة نقاط 

------------------
اول حاجة لازم نعرف ايه هي اقسام النوع ده من التحديات 
 1. Steganography
 2. Misc
 3. Memory Forensics 
 4. Packet analysis

----------------------
طب ايه هي المتطلبات اللازمة لحل النوع ده من التحديات ؟؟

1. *Networking* >>
  - Packet analysis يكون عندك معرفة كافية بالشبكات وده هينفعك جدا وخاصة في تحديات ال 
2. *Operating System Knowledge* >>
  - Commands وال Tools يكون عندك معرفة كافية بأنظمة التشغيل وخاصة اللينكس عشان تعرف تتعامل مع ال
3. *Scripting language* >>
  - automation في حاجات هتحتاج يتعملها manuallyلازم تكون عارف ولو علي الاقل لغة برمحة عشان مش كل حاجة هتتعمل 
      
                                *more programming skills more efficient in cyber security*

## 4. *Analytical Skills*  >> 

    - احنا كلنا بنحل عشان نتعلم فطبيعي جدا انك تلاقي حاجة جديدة اول مرة تشوفها ..فمستغربش وتقول دي صعبة 
       مفيش حاجة صعبة مع التعليم فحاول تفكر بطريقة مختلفة مع الحاجة اللي اول مرة تشوفها ..يعني مثلا لقيت نوع ملف اول مرة تشوفه
       Write-Up تعمل ابه؟؟ تحاول تدور علي برنامج او اداة تفتح الملف او دور علي تحدي يكون شبيه وحد عامله 
       :) ومع البحث اكيد هتلاقي حاجة تفيدك وتخليك تحل التحدي ده 

------------------------------
*Solving Steps* نبدأ بقي ف ال  

## 1. View File

- << file command >> Forensicsده من اهم الاوامر في تحديات ال 

- طب ده ايه لازمته يا معلم ؟؟
ده لازمته انك تعرف نوع الملف ده ايه ..لأنه علي حسب نوع الملف هتتعامل بطريقة مختلفة..لأن مش دايما بيكون الامتداد صح  

                                               * Don't Trust Extention *

## 2. Looking at hex of file "magic bytes"

"corrupted" ساعات فيه تحديات لما بتحملها بيكون الملف بتاعها مش سليم 
 وبتحاول تظبطهاmagic bytes في الحالة دي بتبص علي ال 
  اللي هتحتاجها magic bytesوده لينك في انواع ال 
https://en.wikipedia.org/wiki/List_of_file_signatures

## 3. Search for password 

   - فيه تحديات بتبقي عشان تفتحها لاوم يكون معاك كلمة سر معينة
 #### عليها !!ا`Brute Force`هتقولي هعمل 
 
اللي حددتهاwordlist مش في أغلب التحديات بتكون كلمة السر في ال

##### طب اعمل ايه في الحالة دي يعني؟؟
 وارد تلاقي كلمة السر فيه ..strings ممكن تعمل امر

- `strings <file name>`
 او ممكن تلاقيه في الوصف بتاع التحدي


## 4. Look for embedded files

بتبقي موجود فيها ملفات مستخبية Forensics اغلب تحديات ال 
- طب بجبها ازاي الملفات دي ؟؟؟
فيه امرين في اللينكس بيعملوا الكلام ده وهما 

- `foremost` ,` binwalk `

`foremost <file name>`
`binwalk --dd='.*' <file name>`

طب يعني بعد اما اعمل الكلام ده هلاقي الفلاج ؟؟
في ساعات بتلاقيه وساعات بتلاقي حاجات تساعدك في انك توصله 

-------------------------------
*Steganography* نيجي بقي لاول نوع معانا وهو ال  

المعني الحرفي ليها هو اخفاء المعلومات 

وبتنقسم انواع النوع ده اللي نوعين 

### Audio Steganography , Image Steganography 

1. Image Steganography 

- Exiftool  
ودي طريقة تسطيبها 
https://www.poftut.com/how-to-install-and-use-exiftool-in-linux-windows-kali-ubuntu-mint-with-examples/
المودودة في الملف `metadata` ولكن دي بتطله ال strings ودي شبيه للامر 

- Gimp2 
ده برنامج عرض للصور ولكن بتغير في تباين الصورة ممكن تلاقي كلام او شفرة توصلك للفلاج

- `stegsolve`
Steganography ولكن دي بتبقي احترافية اكتر ومتخصصة في ال Gimpتعتبر شبه ال 

- `zsteg` 
للداتا اللي داخل الملف extract دي اداة بتعمل 

- `steghide`
JPEGللداتا اللي داخل الصورة ال  extract دي اداة بتعمل

- `stegcracker` 
 لكلمة السر للصورة عشان تقدر تستخرج الداتا اللي جواBrute Forceدي بتعمل 

- `Openstego`
PNG للداتا اللي داخل الصورة ال  extract دي اداة بتعمل


------------------------------
2. Audio Steganography
Tools >>
    - Audactiy > download > https://www.audacityteam.org/download/
    - Sonic visualizer > download > https://www.sonicvisualiser.org/download.html
    - Tones encrypt (Morse) > Link > https://morsecode.world/international/decoder/audio-decoder-adaptive.html
    - Deep Sound > download > https://deepsound.en.uptodown.com/windows

شرح الادوات موجود في الفيديو 

---------------------------
*Memory Forensics*


---------------------

## 4. Packet Analysis
وبتحاول تحلل الملف ده وبتطبع الفلاج او حاجة توصلك ليه pcap & pcapng النوع ده من التحديات بيبقي معاك ملف

- Tools >> Wireshark & Network miner  
- Website >> https://packettotal.com/

وبتحاول تطلع اي داتا من جواpcap الادوات دي بتحلل الملفات ال

والفيديو شارح الجزئية دي بالتفصيل 

------------------------------------

## 5. Misc
فملوش قاعدة ثابتة عشان نوضحها Search النوع ده من التحديات بيعتمد بشكل كبير علي ال
ويعتبر النوع ده من الانواع الجميلة جدا لانها بتنمي مهارة البحث عندك وده من اهم الحاجات المطلوبة في امن المعلومات بس مش في تحديات التقاط العلم بس

اللي مشروح في الفيديو log وفي مثال للنوع ده وهو ملف ال

-------------------------------------
References 

- Notes : https://0xmohammed.github.io/Digital-Forensics/#
- magic bytes : https://linux.die.net/man/1/file
- file command : https://linux.die.net/man/1/file
- strings : https://linux.die.net/man/1/strings
- binwalk : https://github.com/ReFirmLabs/binwalk
- foremost : http://foremost.sourceforge.net/
- cracking protected files : https://dfir.science/2014/07/how-to-cracking-zip-and-rar-protected.html
- Digital forensics req : https://blog.eccouncil.org/6-skills-required-for-a-career-in-digital-forensics/
- Steganography : https://en.wikipedia.org/wiki/Steganography
- Tools : https://0xrick.github.io/lists/stego/




