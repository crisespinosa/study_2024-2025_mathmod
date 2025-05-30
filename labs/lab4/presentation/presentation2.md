---
## Front matter
lang: ru-RU
title: "Лабораторная работа №4"
subtitle: Модель гармонических колебаний
author:
  - Эспиноса Василита К.М.
institute:
  - Российский университет дружбы народов, Москва, Россия

date: 05/04/2025

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Эспиноса Василита Кристина Микаела
  * студентка
  * Российский университет дружбы народов
  * [1032224624@pfur.ru](mailto:1032224624@pfur.ru)
  * <https://github.com/crisespinosa/>

:::
::: {.column width="30%"}



:::
::::::::::::::

# Цель работы

Построить математическую модель гармонического осциллятора на языке прогаммирования Julia и посредством ПО OpenModelica.


# Задание

Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев

- Колебания гармонического осциллятора без затуханий и без действий внешней
силы 

- Колебания гармонического осциллятора c затуханием и без действий внешней
силы

 Колебания гармонического осциллятора c затуханием и под действием внешней
силы


# Выполнение лабораторной работы

# Модель колебаний гармонического осциллятора без затуханий и без действий внешней силы

Для начала реализуем эту модель на языке программирования Julia.

![Код 1](image/code1.PNG){#fig:001 width=70%}

# Модель колебаний гармонического осциллятора без затуханий и без действий внешней силы

В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:002]) и его фазового портрета (рис. [-@fig:003]).

![График 1](image/1.PNG){#fig:002 width=70%}

# Модель колебаний гармонического осциллятора без затуханий и без действий внешней силы

![График 2](image/2.PNG){#fig:003 width=70%}

Можно заметить, что колебание осциллятора периодично, график не задухает.

# Модель колебаний гармонического осциллятора без затуханий и без действий внешней силы

Теперь реализуем эту модель посредством OpenModelica.

model lab4_1

  parameter Real g = 0;
  parameter Real w = 2.5;
  parameter Real x0 = -1;
  parameter Real y0 = 2;
  Real x(start=x0);
  Real y(start=y0);
equation
    der(x) = y;
    der(y) = -g .*y - w^2 .*x;
end lab4_1;

# Модель колебаний гармонического осциллятора без затуханий и без действий внешней силы
В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:004]) и его фазового портрета (рис. [-@fig:005]).

![График 1](image/7.PNG){#fig:004 width=70%}

![График 2](image/8.PNG){#fig:005 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

Pеализуем эту модель на языке программирования Julia.

![Код 2](image/code2.PNG){#fig:006 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:007]) и его фазового портрета (рис. [-@fig:008]).

![График 3](image/3.PNG){#fig:007 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

![График 4](image/4.PNG){#fig:008 width=70%}

В этом случае сначала происходят колебания осциллятора, а затем график затухает, поскольку у нас есть параметр, отвечающий за потери энергии.

# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

Теперь реализуем эту модель посредством OpenModelica.


model lab4_2
  parameter Real g = 10;
  parameter Real w = 11;
  parameter Real x0 = -1;
  parameter Real y0 = 2;
  Real x(start=x0);
  Real y(start=y0);
equation
    der(x) = y;
    der(y) = -g .*y - w^2 .*x;
end lab4_2;


# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:009]) и его фазового портрета (рис. [-@fig:010]).

![График 1](image/9.PNG){#fig:009 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и без действий внешней силы

![График 2](image/10.PNG){#fig:0010 width=70%}


# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

Pеализуем эту модель на языке программирования Julia.

![Код 3](image/code3.PNG){#fig:011 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:012]) и его фазового портрета (рис. [-@fig:013]).

![График 4](image/5.PNG){#fig:012 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

![График 5](image/6.PNG){#fig:013 width=70%}

В этом случае сначала происходят колебания осциллятора, а затем график затухает, поскольку у нас есть параметр, отвечающий за потери энергии.

# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

Теперь реализуем эту модель посредством OpenModelica.


model lab4_2
  parameter Real g = 10;
  parameter Real w = 11;
  parameter Real x0 = -1;
  parameter Real y0 = 2;
  Real x(start=x0);
  Real y(start=y0);
equation
    der(x) = y;
    der(y) = -g .*y - w^2 .*x;
end lab4_2;

# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

В результате получаем следующие графики решения уравнения гармонического осциллятора (рис. [-@fig:014]) и его фазового портрета (рис. [-@fig:015]).

![График 1](image/11.PNG){#fig:014 width=70%}

# Модель колебаний гармонического осциллятора c затуханием и под действием внешней силы

![График 2](image/12.PNG){#fig:015 width=70%}

# Выводы

В процессе выполнения данной лабораторной работы я построила математическую модель гармонического осциллятора.