<p align="center">Отчет по лабораторной работе №2</p>
<p align="center">По предмету <i>Операционные системы</i></p>

Тема работы:
Raid, LVM<br>

<p align="right"> Выполнил студент: <i>Мирошникова Мария</i></p>
<p align="right"> Группа: <i>ББСО-01-17</i></p>

<p align="center">Москва, 2019</p>

Установка системы:<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/01.PNG "Настроцка системы 1")
Монтирование boot, настройка pv
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/02.PNG "Настроцка системы 2")
Задание характеристик raid
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/03.PNG "Настроцка системы 3")
Созжание и настройка lvm
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/04.PNG "Настроцка системы 4")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/05.PNG "Настроцка системы 5")
Задание точек монтирования 
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/06.PNG "Настроцка системы 6")
Копирование разделов boot
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Настроцка системы 6")
Вывод fdisk -l
Команда выводит описание дисков и разделов на них в системе
Сначала описываются физические диски, после - логические разделы
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/2.1%20_fdisk_-l.PNG "Настроцка системы 6")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/2.2_fdisk_-l.PNG "Настроцка системы 6")
Вывод lsblk 
Команда показывает дерево разделов на дисках
NAME - имя диска/раздела
SIZE - его размар
FSTYPE - тип файловой системы в разделе
TYPE - указывает, чем является описываемое (disk, его часть, составляющая raid-массива, lvm, rom ..)
MOUNTPOINT - точки монтирования разделов
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/3_lsblk.PNG "Настроцка системы 6")
Установка загрузчика системы grub на второй диск, это необхдимо для того, чтобы при отказе одного диска, систему можно было запустить со второго
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/4_install_grub_2.PNG "Настроцка системы 6")
Просмотр состояния raid-массива
Имеем раздел md0 под контролем raid, 2 диска, оба активны
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/5_cat.PNG.PNG "Настроцка системы 6")
Вывод команд pvs, vgs, lv
pvs показывает состояние физических разделов
vgs - логические разделы
lvs - логические тома внутри раздела. их описание
Команда mount выводит списаок всех устройств, вмонтированных в мимтему
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/6_pvs_vgs_lvs.PNG "Настроцка системы 6")
В результате выполненных действий имеем установленную операцтонную систему, два подключенных диска и настроенный на ниъ raid1

#### Задание 2
1. Удаление диска
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.0.PNG "Задание 2)
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.1.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.2.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.3.PNG "Задание 2")
4. Состоянире raid-массива после удаления диска и перезагрузки системы
Активен ранее созданный raid1, один диск отсутствует
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/4.1.PNG "Задание 2")
Диски в системе в данный момент
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/4.2.PNG "Задание 2")
6. Вызов fdisk -l после установки нового диска
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.1_1.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.1_2.PNG "Задание 2")
В настоящий момент в системе два диска, один размеченный, второй новый
Копирование таблицы разделов на новый диск
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.2_1.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.2_2.PNG "Задание 2")
Теперь второй диск так же размечен
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")
Добавление нового массива в raid и вывод результата
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.4-5.PNG "Задание 2")
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.5.PNG "Задание 2")
Теперь новый диск добавлен в raid
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.5_2.PNG "Задание 2")
7. Копирование раздела boot
Видим, что на новом диске изменился тип файловой системы
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/7.PNG "Задание 2")
8. Установка grub, состояние raid-массива
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Задание 2")

#### Задание 3
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Задание 3")




