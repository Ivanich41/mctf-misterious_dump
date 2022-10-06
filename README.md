# Mysterious Dump
Misc task for [M*CTF](https://mctf.mtuci.ru)
## Описание таска
Необходимо найти флаг в дампе трафика. Формат флага: mctf{WHat_did_you_found}

Вместо скачивания файла можно поднять контейнер и тянуть файл с порта 9004.
```
sudo docker-compose up
```
## Writeup
Дамп не такой уж большой. В нём можно обнраужить HTTP пакет с небольшой html страничкой.

![image](https://user-images.githubusercontent.com/77790965/188285229-f71a5c60-a3a5-4ccc-80ba-f9a85fb50376.png)

Его можно скачать через меню Файл->Экспортировать объекты->HTTP. 

![image](https://user-images.githubusercontent.com/77790965/188285265-bdab896f-9f75-431a-bcc8-7209e871b409.png)

Открыв страницу увидим следующий текст

![image](https://user-images.githubusercontent.com/77790965/188285328-838ca05a-29d5-42df-ac6b-91f20f2b19b7.png)

IP конечно же не существует

![image](https://user-images.githubusercontent.com/77790965/188285577-f01950c6-bd93-4c0e-82fb-f14816a6c1f7.png)


Но слово locate(определять местанохжддение), подсказывает, что это цифры могут быть координатами. В обоих цифрах нужно отсечь все точки кроме первых, записать через запятую и ввести в карты. Флагом является название этой достаточно известной станции.

![image](https://user-images.githubusercontent.com/77790965/188285490-ba104b76-311b-4350-8874-b8dfa2e9161b.png)

## Flag
```
mctf{Akihabara}
```
