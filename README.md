#Образ cups для docker на основе alpine x86

x86 потому что используются драйверы x86

Решеные проблемы:

Cupsd не стартует в  docker version 23-24

В логе появляется ошибка:
```
# [19/Dec/2023:08:36:45 +0000] cupsdDoSelect() failed - Bad address!
# [19/Dec/2023:08:36:45 +0000] Listeners[0] = 6
# [19/Dec/2023:08:36:45 +0000] Listeners[1] = 7
# [19/Dec/2023:08:36:45 +0000] Listeners[2] = 8
# [19/Dec/2023:08:36:45 +0000] CGIPipes[0] = 9
# [19/Dec/2023:08:36:45 +0000] Scheduler shutting down due to program error.
```

обходной путь, при слоздании контейнера указать --ulimit nofile=1024:1024  см. bin/run.sh

Параметры для сборки и установки указаны в bin/params.sh
В bin лежат скрипты для установки и запуска контейнера
В корне лежить скрипт build.sh для сборки образа.

Нерешенные проблемы:

Очень странно работает cups-browsed. Возможно, это проблема разницы версий удаленного и локального cups 1.6.3 и cups 2.4.7.
