<p align="center">Отчет по лабораторной работе №2</p>
<p align="center">По предмету <i>Операционные системы</i></p>

Тема работы:
Raid, LVM<br>

<p align="right"> Выполнил студент: <i>Мирошникова Мария</i></p>
<p align="right"> Группа: <i>ББСО-01-17</i></p>

<p align="center">Москва, 2019</p>

Установка системы:<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/01.PNG "Настроцка системы 1")<br>
Монтирование boot, настройка pv
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/02.PNG "Настроцка системы 2")<br>
Задание характеристик raid
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/03.PNG "Настроцка системы 3")<br>
Содержание и настройка lvm
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/04.PNG "Настроцка системы 4")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/05.PNG "Настроцка системы 5")<br>
Задание точек монтирования 
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/06.PNG "Настроцка системы 6")<br>
Копирование разделов boot
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Настроцка системы 7")<br>
Вывод fdisk -l
Команда выводит описание дисков и разделов на них в системе<br>
Сначала описываются физические диски, после - логические разделы<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/2.1%20_fdisk_-l.PNG "Настроцка системы 8")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/2.2_fdisk_-l.PNG "Настроцка системы 9")<br>
Вывод lsblk <br>
Команда показывает дерево разделов на дисках<br>
NAME - имя диска/раздела<br>
SIZE - его размар<br>
FSTYPE - тип файловой системы в разделе<br>
TYPE - указывает, чем является описываемое (disk, его часть, составляющая raid-массива, lvm, rom ..)<br>
MOUNTPOINT - точки монтирования разделов<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/3_lsblk.PNG "Настроцка системы 10")<br>
Установка загрузчика системы grub на второй диск, это необхдимо для того, чтобы при отказе одного диска, систему можно было запустить со второго<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/4_install_grub_2.PNG "Настроцка системы 11")<br>
Просмотр состояния raid-массива<br>
Имеем раздел md0 под контролем raid, 2 диска, оба активны<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/5_cat.PNG.PNG "Настроцка системы 6")<br>
Вывод команд pvs, vgs, lv<br>
pvs показывает состояние физических разделов<br>
vgs - логические разделы<br>
lvs - логические тома внутри раздела. их описание<br>
Команда mount выводит списаок всех устройств, вмонтированных в симтему<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/6_pvs_vgs_lvs.PNG "Настроцка системы 6")<br>
В результате выполненных действий имеем установленную операцтонную систему, два подключенных диска и настроенный raid1<br>

#### Задание 2<br>
1. Удаление диска<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.0.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.1.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.2.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/1.3.PNG "Задание 2")<br>
4. Состоянире raid-массива после удаления диска и перезагрузки системы<br>
Активен ранее созданный raid1, один диск отсутствует<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/4.1.PNG "Задание 2")
Диски в системе в данный момент<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/4.2.PNG "Задание 2")<br>
6. Вызов fdisk -l после установки нового диска<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.1_1.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.1_2.PNG "Задание 2")<br>
В настоящий момент в системе два диска, один размеченный, второй новый<br>
Копирование таблицы разделов на новый диск<br><br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.2_1.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.2_2.PNG "Задание 2")<br>
Теперь второй диск также размечен<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.3_1.PNG "Задание 2")<br>
Добавление нового массива в raid и вывод результата<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.4-5.PNG "Задание 2")<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.5.PNG "Задание 2")<br>
Теперь новый диск добавлен в raid<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/6.5_2.PNG "Задание 2")<br>
7. Копирование раздела boot<br>
Видим, что на новом диске изменился тип файловой системы<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part2/7.PNG "Задание 2")<br>
8. Установка grub, состояние raid-массива<br>
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Задание 2")<br>

#### Задание 3<br>
1.
![alt-текст](https://raw.githubusercontent.com/m-lynn/mylab/master/lab_raid/images/part1.2/1.PNG "Задание 3")




